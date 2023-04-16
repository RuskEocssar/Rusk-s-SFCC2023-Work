## Calculator for Models with display entities.
# pip install pyperclip
# pip install copy
# pip install quaternion

import os
import numpy as np
import pyperclip
import copy
import quaternion
import transformation as trf

##[For bone and display entities]########
# Axis-Angle Class
class axis_angle():

    def __init__(self,axis=[0,0,0],angle=0) -> None:
        self.axis = np.array(axis)
        self.angle = np.float64(angle)

    def get_quaternion(self,):
        _v = self.axis *np.sin(self.angle/2)
        _w = np.cos(self.angle/2)
        return np.quaternion(_w,_v[0],_v[1],_v[2])

    def get_matrix(self,):
        _q = self.get_quaternion()
        return quaternion.as_rotation_matrix(_q)

# Display Class
class display():
    def __init__(
            self,
            name,
            bone = "root",
            translation=[0,0,0],
            scale=[1,1,1],
            left_rotation_axis=[0,1,0],
            left_rotation_angle=0,
            right_rotation_axis=[0,1,0],
            right_rotation_angle=0,
        ):
        self.name = name
        self.bone = bone
        self.translation     = np.array(translation)
        self.scale           = np.array(scale)
        self.left_rotation  = axis_angle(left_rotation_axis,left_rotation_angle)
        self.right_rotation = axis_angle(right_rotation_axis,right_rotation_angle)
        self.transformation = self._transformation()

    def _transformation(self,):
        _mat = np.identity(4)

        # left_rotation * scale * right_rotation
        _mat[0:3,0:3] = self.left_rotation.get_matrix() @ np.diag(self.scale) @ self.right_rotation.get_matrix()
        # translation
        _mat[0:3,3] += self.translation

        return _mat

# Item Display Class
class item_display(display):
    pass

# Text Display Class
class text_display(display):
    pass

# Block Display Class
class block_display(display):
    pass

# Bone Class
class _bone():
    def __init__(self,name,parent="root",anchor=[0,0,0]):
        self.displays = []
        self.name = name
        self.parent = parent
        self.anchor = np.array(anchor)
    
# Object Class
class mc_object():
    def __init__(self,name="_",namespace="_:") -> None:
        self.name = name
        self.namespace = namespace
        self.bones = dict()
        self.n_bone = 0
        self.displays = dict()
        self.n_display = 0

    def add_bone(
            self,
            name="",
            parent="root",
            anchor=[0,0,0]
        ):

        self.bones[name] = _bone(name,parent,anchor)
        self.n_bone += 1

    def add_display(
            self,
            name = "",
            bone = "root",
            type = "item",
            translation=[0,0,0],
            scale=[1,1,1],
            left_rotation_axis=[0,1,0],
            left_rotation_angle=0,
            right_rotation_axis=[0,1,0],
            right_rotation_angle=0,
        ):

        if type == "item":
            self.displays[name] = item_display(name,bone,translation,scale,left_rotation_axis,left_rotation_angle,right_rotation_axis,right_rotation_angle)
        elif type == "text":
            self.displays[name] = text_display(name,bone,translation,scale,left_rotation_axis,left_rotation_angle,right_rotation_axis,right_rotation_angle)
        elif type == "block":
            self.displays[name] = block_display(name,bone,translation,scale,left_rotation_axis,left_rotation_angle,right_rotation_axis,right_rotation_angle)
        
        self.bones[bone].displays.append(name)
        self.n_display += 1
    
    def get_backward_bones(self,name):

        _bone = self.bones[name]
        _bones = [_bone,]

        while True:
            if _bone.parent != "root":
                _bone = self.bones[_bone.parent]
                _bones.append(_bone)
            else:
                break

        return _bones
    
    def get_bone_index(self,name):
        _l = list(self.bones.keys())
        return _l.index(name)
    
    def get_display_index(self,name):
        _l = list(self.displays.keys())
        return self.n_bone + _l.index(name)

###########################################

##[For animation]##########################
# pose(key frame)
class pose():
    # init
    def __init__(self, obj:mc_object, name="_") -> None:
        self.obj = obj
        self.name = name
        self.local_pose =_lmat = np.zeros((obj.n_bone+obj.n_display,4,4))
        self.global_pose =_gmat = np.zeros((obj.n_bone+obj.n_display,4,4))
        _lmat[:,[0,1,2,3],[0,1,2,3]] = 1
        _gmat[:,[0,1,2,3],[0,1,2,3]] = 1

    def reset_bone(self, *names):
        # Reset bone
        for name in names:
            _i = self.obj.get_bone_index(name)
            self.local_pose[_i] = np.identity(4)
            self.global_pose[_i] = np.identity(4)

    def reset_display(self, *names):
        # Reset display
        for name in names:
            _i = self.obj.get_display_index(name)
            self.local_pose[_i] = np.identity(4)
            self.global_pose[_i] = np.identity(4)

    def copy(self,name):
        _pose = pose(self.obj,name)
        _pose.local_pose = copy.deepcopy(self.local_pose)
        _pose.global_pose = copy.deepcopy(self.global_pose)

        return _pose

    # Move bone or display
    def move(self, name, vec, align="local", target=None):
        
        _r = np.array(vec)

        # Move bone
        if target ==None:
            _i = self.obj.get_bone_index(name)
            if align == "local":
                self.local_pose[_i,0:3,3] += _r
            elif align == "global":
                self.global_pose[_i,0:3,3] += _r
        # Move only displays
        elif target == "*":
            for _name in self.obj.bones[name].displays:
                _i = self.obj.get_display_index(_name)
                if align == "local":
                    self.local_pose[_i,0:3,3] += _r
                elif align == "global":
                    self.global_pose[_i,0:3,3] += _r
        else:
            _i = self.obj.get_display_index(target)
            if align == "local":
                self.local_pose[_i,0:3,3] += _r
            elif align == "global":
                self.global_pose[_i,0:3,3] += _r
            
    # Rotate bone or display
    def rotate(self, name, axis, angle, align = "local", target=None):

        _r = axis_angle(axis,angle)
        _a = _r.get_matrix()

        # Rotate bone
        if target ==None:
            _i = self.obj.get_bone_index(name)
            if align == "local":
                self.local_pose[_i,0:3,0:3] = _a @ self.local_pose[_i,0:3,0:3]
            elif align == "global":
                self.global_pose[_i,0:3,0:3] = _a @ self.global_pose[_i,0:3,0:3]
        # Rotate displays
        elif target == "*":
            for _name in self.obj.bones[name].displays:
                _i = self.obj.get_bone_index(_name)
                if align == "local":
                    self.local_pose[_i,0:3,0:3] = _a @ self.local_pose[_i,0:3,0:3]
                elif align == "global":
                    self.global_pose[_i,0:3,0:3] = _a @ self.global_pose[_i,0:3,0:3]
        else:
            _i = self.obj.get_display_index(target)
            if align == "local":
                self.local_pose[_i,0:3,0:3] = _a @ self.local_pose[_i,0:3,0:3]
            elif align == "global":
                self.global_pose[_i,0:3,0:3] = _a @ self.global_pose[_i,0:3,0:3]

    # Resize bone or display
    def scale(self, name, scale, align = "local", target=None):
        
        _k = np.diag(scale)

        # Scale bone
        if target ==None:
            _i = self.obj.get_bone_index(name)
            if align == "local":
                self.local_pose[_i,0:3,0:3] = _k @ self.local_pose[_i,0:3,0:3]
            elif align == "global":
                self.global_pose[_i,0:3,0:3] = _k @ self.global_pose[_i,0:3,0:3]
        # Scale only displays
        elif target == "*":
            for _name in self.obj.bones[name].displays:
                _i = self.obj.get_display_index(_name)
                if align == "local":
                    self.local_pose[_i,0:3,0:3] = _k @ self.local_pose[_i,0:3,0:3]
                elif align == "global":
                    self.global_pose[_i,0:3,0:3] = _k @ self.global_pose[_i,0:3,0:3]
        else:
            _i = self.obj.get_display_index(target)
            if align == "local":
                self.local_pose[_i,0:3,0:3] = _k @ self.local_pose[_i,0:3,0:3]
            elif align == "global":
                self.global_pose[_i,0:3,0:3] = _k @ self.global_pose[_i,0:3,0:3]
            
    # Calculate a display's transformation
    def get_transformation(self,name):
        # 
        _display:display = self.obj.displays[name]
        _i = self.obj.get_display_index(name)
        _bone = self.obj.bones[_display.bone]
        
        # Transform with display transformation
        _a0 = np.identity(4)
        _a0[:,:] = _display.transformation
        _bones = self.obj.get_backward_bones(_bone.name)

        # Local Transform
        _o0 = _bone.anchor
        _a1 = self.local_pose[_i]
        _a0[0:3,3] -= _o0
        _a0 = _a1 @ _a0
        _a0[0:3,3] += _o0
        for _bone in _bones:
            _i = self.obj.get_bone_index(_bone.name)
            _o0 = _bone.anchor
            _a1 = self.local_pose[_i]
            _a0[0:3,3] -= _o0
            _a0 = _a1 @ _a0
            _a0[0:3,3] += _o0

        # Global tramsform
        for _bone in reversed(_bones):
            _i = self.obj.get_bone_index(_bone.name)
            _o0 = _bone.anchor
            _a1 = self.global_pose[_i]
            _a0[0:3,3] -= _o0
            _a0 = _a1 @ _a0
            _a0[0:3,3] += _o0
        _i = self.obj.get_display_index(name)
        _bone = self.obj.bones[_display.bone]
        _a1 = self.global_pose[_i]
        _r0 = _a0[0:3,3] *1
        _a0[0:3,3] -= _r0
        _a0 = _a1 @ _a0
        _a0[0:3,3] += _r0
                          
        return _a0

    # Getter for transformation nbt
    def get_commands(self,duration=0):
        
        _namespace = self.obj.namespace
        _path = "objects." +self.obj.name +"." +self.name
        _commands = "## {0}\ndata modify storage {1} {2} set value []\n".format(self.name,_namespace,_path)
        for _display in self.obj.displays.values():

            # Get transformation
            _a0 = self.get_transformation(_display.name)

            _str = ""
            for n in _a0.reshape((16)):
                _str += "{0: >10.8f},".format(n)
            _trf = "transformation:[{0}]".format(_str)

            _commands += "data modify storage {0} {1} prepend value {{start_interpolation:0,interpolation_duration:{2},{3}}}\n".format(_namespace,_path,duration,_trf)

        return _commands

# animation
class animation():
    # init
    def __init__(self, object:mc_object, name="_", loop=True, endtime=200) -> None:
        self.obj = object
        self.name = name
        self.loop = loop
        self.endtime = endtime
        self.keyframes = dict()

    def add_keyframe(self, frame) -> pose:
        _pose = pose(self.obj)
        self.keyframes[frame] = _pose

        return _pose
    
    def copy_pose(self,pose1,pose2,i1=0,i2=None):
        if i2 == None:
            i2 = self.obj.n_bone+self.obj.n_display
        pose1.local_pose[i1:i2] = copy.deepcopy(pose2.local_pose[i1:i2])
        pose1.global_pose[i1:i2] = copy.deepcopy(pose2.global_pose[i1:i2])

    def copy_keyframe(self,frame,frame1 ,operation="reset",bones:tuple=(),displays:tuple=()):
        # Copy
        _pose = pose(self.obj)
        self.keyframes[frame] = _pose
        _pose.local_pose = copy.deepcopy(self.keyframes[frame1].local_pose)
        _pose.global_pose = copy.deepcopy(self.keyframes[frame1].global_pose)
        
        # Reset
        if operation == "reset":
            # Reset
            if len(bones) > 0:
                for _name in bones:
                    _pose.reset_bone(_name)
            if len(displays) > 0:
                for _name in displays:
                    _pose.reset_display(_name)
        elif operation == "inherit":
            # Inherit
            _indexs = []
            if len(bones) > 0:
                for _name in bones:
                    _indexs.append(_pose.obj.get_bone_index(_name))
            if len(displays) > 0:
                for _name in displays:
                    _indexs.append(_pose.obj.get_display_index(_name))
            _new = np.zeros((_pose.obj.n_bone+_pose.obj.n_display,4,4))
            _new[:,0,0] = _new[:,1,1] = _new[:,2,2] = _new[:,3,3] = 1
            _new[_indexs] = _pose.local_pose[_indexs]
            _pose.local_pose = _new
            _new = np.zeros((_pose.obj.n_bone+_pose.obj.n_display,4,4))
            _new[:,0,0] = _new[:,1,1] = _new[:,2,2] = _new[:,3,3] = 1
            _new[_indexs] = _pose.global_pose[_indexs]
            _pose.global_pose = _new
            
        return _pose
    
    def _get_interpolation(self,frame,frame1,frame2, type ="liner"):

        _pose = pose(self.obj)
        _larr1 = self.keyframes[frame1].local_pose
        _larr2 = self.keyframes[frame2].local_pose
        _garr1 = self.keyframes[frame1].global_pose
        _garr2 = self.keyframes[frame2].global_pose

        if (frame2 < frame1) & self.loop:
            if frame <= frame2:
                frame += self.endtime
            frame2 += self.endtime

        _a = np.array([[1,1,1,1],[1,1,-1,1],[-1,1,1,1],[-1,1,-1,1],[1,-1,1,1],[1,-1,-1,1],[-1,-1,1,1],[-1,-1,-1,1]])
        _b = _a @ np.linalg.inv(_a.T @ _a)

        if type=="liner":
            _k1 = frame - frame1
            _k2 = frame2 - frame
        elif type=="wave":
            _rad = (frame-frame1)/(frame2 - frame1) *np.pi
            _k1 = 1 - np.cos(_rad)
            _k2 = 2 - _k1

        _larr1 = _larr1 @ _a.T
        _larr2 = _larr2 @ _a.T
        _garr1 = _garr1 @ _a.T
        _garr2 = _garr2 @ _a.T
                
        _larr = (_k2* _larr1 +_k1* _larr2)/(_k2+_k1) @ _b
        _garr = (_k2* _garr1 +_k1* _garr2)/(_k2+_k1) @ _b
        
        _pose.local_pose = _larr 
        _pose.global_pose = _garr 

        return _pose
    
        
    def get_interpolation(self, frame, type ="liner"):

        _frames = np.array(sorted(list(self.keyframes.keys())))

        _frame1 = 0
        _frame2 = 0

        if not self.loop:
            if frame >= _frames[-1]:
                frame = _frame1 = _frame2 = _frames[-1]
            elif frame < _frames[0]:
                frame = _frame1 = _frame2 = _frames[0]
            else:
                _i = np.where(_frames <= frame)[0][-1]
                _frame1 = _frames[_i]
                _frame2 = _frames[_i+1]
        else:
            if not ((frame < 0) & (frame >= self.endtime)):
                frame %= self.endtime
            if (frame >= _frames[-1]) or (frame < _frames[0]):
                _frame1 = _frames[-1]
                _frame2 = _frames[0]
            else:
                _i = np.where(_frames <= frame)[0][-1]
                _frame1 = _frames[_i]
                _frame2 = _frames[_i+1]
                
        return self._get_interpolation(frame,_frame1,_frame2, type)
    

    def insert_keyframe(self, frame, frame1, frame2, type ="liner" ,operation=None,bones:tuple=(),displays:tuple=()) -> pose:
        
        _pose = self._get_interpolation(frame,frame1,frame2,type)
        self.keyframes[frame] = _pose

        # Reset
        if operation == "reset":
            # Reset
            if len(bones) > 0:
                for _name in bones:
                    _pose.reset_bone(_name)
            if len(displays) > 0:
                for _name in displays:
                    _pose.reset_display(_name)
        elif operation == "inherit":
            # Inherit
            _indexs = []
            if len(bones) > 0:
                for _name in bones:
                    _indexs.append(_pose.obj.get_bone_index(_name))
            if len(displays) > 0:
                for _name in displays:
                    _indexs.append(_pose.obj.get_display_index(_name))
            _new = np.zeros((_pose.obj.n_bone+_pose.obj.n_display,4,4))
            _new[:,0,0] = _new[:,1,1] = _new[:,2,2] = _new[:,3,3] = 1
            _new[_indexs] = _pose.local_pose[_indexs]
            _pose.local_pose = _new
            _new = np.zeros((_pose.obj.n_bone+_pose.obj.n_display,4,4))
            _new[:,0,0] = _new[:,1,1] = _new[:,2,2] = _new[:,3,3] = 1
            _new[_indexs] = _pose.global_pose[_indexs]
            _pose.global_pose = _new

        return _pose

    def get_commands(self, *indexs):
        _namespace = self.obj.namespace
        _path = "objects." +self.obj.name +"." +self.name
        _commands = "## {0}\ndata modify storage {1} {2} set value []\n".format(self.name,_namespace,_path)

        # Sort
        _keyframes = sorted(self.keyframes.items())

        # When animation loop
        if self.loop:
            _keyframes.append((self.endtime +_keyframes[0][0],  _keyframes[0][1]))

        _before = 0
        for _frame, _pose in _keyframes:

            if _frame > self.endtime:
                break

            _duration = _frame - _before
            _before = _frame
            _commands += "# {0}\ndata modify storage {1} {2} append value []\n".format(_frame,_namespace,_path)

            i = -1
            _bool = True
            _indexs = list(indexs)
            if (len(_indexs) > 0) and (_indexs[0] > 0):
                _bool = False
            elif (len(_indexs) > 0) and (_indexs[0] == 0):
                _indexs.pop(0)

            for _display in _pose.obj.displays.values():

                i += 1
                if  not _bool:
                    if (len(_indexs)>0) and (_indexs[0] == (i+1)):
                        _bool = True
                        _indexs.pop(0)
                    continue
                else:
                    if (len(_indexs)>0) and (_indexs[0] == (i+1)):
                        _bool = False
                        _indexs.pop(0)

                # Get transformation
                _a = _pose.get_transformation(_display.name)
                _list = ""
                for n in _a.reshape((16)):
                    _list += "{: >10.8f}f,".format(n)

                _trf = "transformation:[{0}]".format(_list)
                _commands += "data modify storage {0} {1}[-1] prepend value {{start_interpolation:0,interpolation_duration:{2},{3}}}\n".format(_namespace,_path,_duration,_trf)


        return _commands
##########################################