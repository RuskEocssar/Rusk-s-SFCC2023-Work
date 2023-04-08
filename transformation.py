## 本の回転を計算するために行列計算する

import numpy as np
import pyperclip
import transformation as trf

class _axis_angle():

    def __init__(self,axis=[0,0,0],angle=0) -> None:
        self.axis = np.array(axis)
        self.angle = np.float64(angle)

class display():
    
    # init
    def __init__(
            self,
            name = "",
            translation=[0,0,0],
            scale=[1,1,1],
            left_rotation_axis=[0,1,0],
            left_rotation_angle=0,
            right_rotation_axis=[0,1,0],
            right_rotation_angle=0,
        ):
        self.name = name
        self.translation     = np.array(translation,dtype=np.float64)
        self.scale           = np.array(scale,dtype=np.float64)
        self.left_rotation  = _axis_angle(left_rotation_axis,left_rotation_angle)
        self.right_rotation = _axis_angle(right_rotation_axis,right_rotation_angle)

    # nbtの取得
    def get_modify(self,namespace="_:",target="<target>",duration=0):
        _transformation = self._get_transformation()
        return "data modify storage {0} {1} prepend value {{start_interpolation:0,interpolation_duration:{2},{3}}}".format(namespace,target,duration,_transformation)

    # transformationの文字列取得
    def _get_transformation(self,):
        translation = "translation:[{0: >8.3f}f,{1: >8.3f}f,{2: >8.3f}f]".format(self.translation[0],self.translation[1],self.translation[2])
        scale = "scale:[{0: >8.3f}f,{1: >8.3f}f,{2: >8.3f}f]".format(self.scale[0],self.scale[1],self.scale[2])
        left_rotation = "left_rotation:{{axis:[{0: .3f}f,{1: .3f}f,{2: .3f}f],angle:{3: .3f}f}}".format(self.left_rotation.axis[0],self.left_rotation.axis[1],self.left_rotation.axis[2],self.left_rotation.angle)
        right_rotation = "right_rotation:{{axis:[{0: .3f}f,{1: .3f}f,{2: .3f}f],angle:{3: .3f}f}}".format(self.right_rotation.axis[0],self.right_rotation.axis[1],self.right_rotation.axis[2],self.right_rotation.angle)

        return "transformation:{{{0},{1},{2},{3}}}".format(translation,left_rotation,scale,right_rotation)
    
    # nbtの文字列取得
    def _get_nbt(self,):
        return ""

## アイテムディスプレイ
class item_display(display):
    pass

## テキストディスプレイ
class text_display(display):
    pass

## ブロックディスプレイ
class block_display(display):
    pass

class bone():

    # init
    def __init__(self,root:dict,name="",parent="root",anchor=[0,0,0]):
        self.bones = dict()
        self.displays = dict()
        self.root = root
        self.name = name
        self.parent = parent
        self.anchor = np.array(anchor,dtype=np.float64)
        self.rotation = np.identity(3,dtype=np.float64)
        root[name] = self
        if parent != "root":
            root[parent].bones[name] = self

    def get_childrens(self,):
        _child = _bones = list(self.bones.values())
        while True:
            _next_bones = []
            if len(_bones) > 0:
                for _bone in _bones:
                    _next_bones.extend(_bone.bones.values())
                _bones = _next_bones
                _child.extend(_bones)
            else:
                break
        return _child
    
    def add_display(
            self,
            type = "item",
            name = "",
            translation=[0,0,0],
            scale=[1,1,1],
            left_rotation_axis=[0,1,0],
            left_rotation_angle=0,
            right_rotation_axis=[0,1,0],
            right_rotation_angle=0,
        ):
        if type == "item":
            self.displays[name] = item_display(name,translation,scale,left_rotation_axis,left_rotation_angle,right_rotation_axis,right_rotation_angle)
        elif type == "text":
            self.displays[name] = text_display(name,translation,scale,left_rotation_axis,left_rotation_angle,right_rotation_axis,right_rotation_angle)
    
    ## 移動
    def move(self, vec, align="local"):
        ## ボーンの情報取得
        # 回転行列
        _rmat = self.rotation
        # 対象ボーン
        _bones = [self,]
        _bones.extend(self.get_childrens())

        ## 移動量の計算
        _r0 = np.array(vec,np.float64)
        if align == "global":
            _offset = _r0
        else:
            _offset = np.dot(_rmat,_r0)

        ## それぞれのボーンを移動させる
        for _bone in _bones:

            ## ボーンのローカル座標系を移動
            _bone.anchor += _offset

            ## ディスプレイを移動
            for display in _bone.displays.values():
                display.translation += _offset

    ## 回転
    def rotate(self, axis, angle, align = "local"):
        ## ボーンの情報取得
        # アンカー位置
        _offset = self.anchor
        _rmat0 = self.rotation
        # 対象ボーン
        _bones = [self,]
        _bones.extend(self.get_childrens())

        ## 回転操作の内容
        # ベクトルと回転量
        _r0 = np.array(axis,dtype=np.float64)
        _s0 = angle # deg
        # グローバルかどうか
        if align != "global":
            _r0 = np.dot(_rmat0,_r0)
        # クオータニオン
        _q0 = np.zeros((4))
        _q0[0:3] = _r0*np.sin(_s0/2)
        _q0[3] = np.cos(_s0/2)
        # 回転行列
        _rmat1 = np.zeros((3,3))
        _rmat1[0,0] =  1 -2*_q0[1]**2 -2*_q0[2]**2
        _rmat1[0,1] =  2*_q0[0]*_q0[1] -2*_q0[3]*_q0[2]
        _rmat1[0,2] =  2*_q0[0]*_q0[2] +2*_q0[3]*_q0[1]
        _rmat1[1,0] =  2*_q0[0]*_q0[1] +2*_q0[3]*_q0[2]
        _rmat1[1,1] =  1 -2*_q0[0]**2 -2*_q0[2]**2
        _rmat1[1,2] =  2*_q0[1]*_q0[2] -2*_q0[3]*_q0[0]
        _rmat1[2,0] =  2*_q0[0]*_q0[2] -2*_q0[3]*_q0[1]
        _rmat1[2,1] =  2*_q0[1]*_q0[2] +2*_q0[3]*_q0[0]
        _rmat1[2,2] =  1 -2*_q0[0]**2  -2*_q0[1]**2
        # クオータニオン積
        _q0 = np.array([
            [ _q0[3],-_q0[2], _q0[1], _q0[0]],
            [ _q0[2], _q0[3],-_q0[0], _q0[1]],
            [-_q0[1], _q0[0], _q0[3], _q0[2]],
            [-_q0[0],-_q0[1],-_q0[2], _q0[3]],
        ])

        ## それぞれのボーンを回転させる
        for _bone in _bones:
            
            ## ボーンのローカル座標系を回転
            # 位置
            _bone.anchor = np.dot(_rmat1,_bone.anchor-_offset) + _offset
            # 回転
            _bone.rotation = np.dot(_bone.rotation, _rmat1)

            ## ディスプレイを回転
            for display in _bone.displays.values():
                # 情報の取得
                _translation = display.translation
                _axis = display.left_rotation.axis
                _angle = display.left_rotation.angle
                # クオータニオン
                _q1 = np.zeros((4))
                _q1[0:3] = _axis*np.sin(_angle/2)
                _q1[3] = np.cos(_angle/2)
                # クオータニオンの乗算
                _q = np.dot(_q0, _q1)

                ## 解
                display.translation = np.dot(_rmat1,_translation-_offset) +_offset
                _l = np.linalg.norm(_q[0:3])
                if _l != 0:
                    display.left_rotation.axis = _q[0:3]/np.linalg.norm(_q[0:3])
                else:
                    display.left_rotation.axis = np.zeros(3)
                display.left_rotation.angle = 2*np.arccos(_q[3])

    ## 拡大縮小
    def scale(self, value, type="all"):
        ## ボーンの情報取得
        # アンカー位置
        _offset = self.anchor
        # 対象ボーン
        _bones = [self,]
        _bones.extend(self.get_childrens())

        ## スケール
        _scale = np.array(value,dtype=np.float64)

        ## それぞれのボーンを変形させる
        for _bone in _bones:

            ## ボーンのローカル座標系をスケール
            if type != "size":
                _bone.anchor = (_bone.anchor -_offset) *_scale +_offset

            ## ディスプレイをスケール
            for display in _bone.displays.values():
                if type != "size":
                    display.translation = (display.translation- _offset) *_scale +_offset
                display.scale *= _scale
        pass

## giant
def giant():

    ## ボーンの定義
    root = dict()

    # 下半身 上半身
    trf.bone(root,name="bottom" ,anchor=[0,192,0])
    trf.bone(root,name="up"     ,anchor=[0,192,0])
    trf.bone(root,name="right_hip"  ,parent="bottom"    ,anchor=[  -9, 192, 0])
    trf.bone(root,name="right_leg"  ,parent="right_hip" ,anchor=[ -12, 180, 0])
    trf.bone(root,name="right_lap"  ,parent="right_leg" ,anchor=[ -12, 100, 0])
    trf.bone(root,name="right_foot" ,parent="right_lap" ,anchor=[ -12,  10, 0])
    trf.bone(root,name="left_hip"   ,parent="bottom"    ,anchor=[   9, 192, 0])
    trf.bone(root,name="left_leg"   ,parent="left_hip"  ,anchor=[  12, 180, 0])
    trf.bone(root,name="left_lap"   ,parent="left_leg"  ,anchor=[  12, 100, 0])
    trf.bone(root,name="left_foot"  ,parent="left_lap"  ,anchor=[  12,  10, 0])
    trf.bone(root,name="stomach"    ,parent="up"        ,anchor=[   0, 192, 0])
    trf.bone(root,name="chest"      ,parent="stomach"   ,anchor=[   0, 212, 0])
    trf.bone(root,name="head"       ,parent="chest"     ,anchor=[   0, 242, 5])
    trf.bone(root,name="right_arm"  ,parent="chest"     ,anchor=[ -22, 237, 0])
    trf.bone(root,name="right_wrist",parent="right_arm" ,anchor=[ -82, 237, 0])
    trf.bone(root,name="left_arm"   ,parent="chest"     ,anchor=[  22, 237, 0])
    trf.bone(root,name="left_wrist" ,parent="left_arm"  ,anchor=[  82, 237, 0])

    ## ディスプレイの情報のセット
    root[  "right_hip"].displays[0] = item_display("right_hip"   ,translation=[  -9, 181,-2],scale=[18,20,17])
    root[  "right_leg"].displays[0] = item_display("right_leg"   ,translation=[ -12, 139, 0],scale=[10,80,10])
    root[  "right_lap"].displays[0] = item_display("right_lap"   ,translation=[ -12,  55, 0],scale=[ 8,90, 8])
    root[ "right_foot"].displays[0] = item_display("right_foot"  ,translation=[ -12,   5, 7],scale=[10,10,25])
    root[   "left_hip"].displays[0] = item_display("left_hip"    ,translation=[   9, 181,-2],scale=[18,20,17])
    root[   "left_leg"].displays[0] = item_display("left_leg"    ,translation=[  12, 139, 0],scale=[10,80,10])
    root[   "left_lap"].displays[0] = item_display("left_lap"    ,translation=[  12,  55, 0],scale=[ 8,90, 8])
    root[  "left_foot"].displays[0] = item_display("left_foot"   ,translation=[  12,   5, 7],scale=[10,10,25])
    root[    "stomach"].displays[0] = item_display("stomach"     ,translation=[   0, 201,-2],scale=[30,20,15])
    root[      "chest"].displays[0] = item_display("chest"       ,translation=[   0, 226, 0],scale=[45,30,20])
    root[       "head"].displays[0] = item_display("head"        ,translation=[   0, 259, 5],scale=[40,40,40])
    root[  "right_arm"].displays[0] = item_display("right_arm"   ,translation=[ -52, 236, 0],scale=[60, 8, 8])
    root["right_wrist"].displays[0] = item_display("right_wrist" ,translation=[-111, 236, 0],scale=[60, 7, 7])
    root[   "left_arm"].displays[0] = item_display("left_arm"    ,translation=[  52, 236, 0],scale=[60, 8, 8])
    root[ "left_wrist"].displays[0] = item_display("left_wrist"  ,translation=[ 111, 236, 0],scale=[60, 7, 7])

    # ##
    # root["stomach"].rotate([1,0,0],1.2)
    # root["stomach"].rotate([0,1,0],0.4)

    # ## idle
    # root[  "right_hip"].rotate([1,0,0],-0.05)
    # root[  "right_leg"].rotate([1,0,0],-0.05)
    # root[  "right_lap"].rotate([1,0,0], 0.25)
    # root[ "right_foot"].rotate([1,0,0],-0.10)
    # root[   "left_hip"].rotate([1,0,0],-0.05)
    # root[   "left_leg"].rotate([1,0,0],-0.05)
    # root[   "left_lap"].rotate([1,0,0], 0.25)
    # root[  "left_foot"].rotate([1,0,0],-0.05)
    # root[    "stomach"].rotate([1,0,0], 0.10)
    # root[      "chest"].rotate([1,0,0], 0.12)
    # root[       "head"].rotate([1,0,0], 0.15)
    # root[  "right_arm"].rotate([0,0,1], 1.40)
    # root[  "right_arm"].rotate([0,1,0], 0.20)
    # root["right_wrist"].rotate([0,1,0], 0.10)
    # root[   "left_arm"].rotate([0,0,1],-1.40)
    # root[   "left_arm"].rotate([0,1,0],-0.20)
    # root[ "left_wrist"].rotate([0,1,0],-0.10)
    # root[ "left_wrist"].rotate([0,1,0],-0.10)

    ## walk
    # # 1 右足を出す
    # root[  "right_hip"].rotate([1,0,0],-0.05)
    # root[  "right_leg"].rotate([1,0,0],-0.20)
    # root[  "right_leg"].rotate([0,0,1], 0.02,align="global")
    # root[  "right_lap"].rotate([1,0,0], 0.70)
    # root[ "right_foot"].rotate([1,0,0], 0.17)
    # root[   "left_hip"].rotate([1,0,0], 0.03)
    # root[   "left_leg"].rotate([1,0,0],-0.00)
    # root[   "left_lap"].rotate([1,0,0], 0.10)
    # root[  "left_foot"].rotate([1,0,0], 0.00)
    # root[    "stomach"].rotate([1,0,0], 0.05)
    # root[    "stomach"].rotate([0,0,1],-0.05,align="global")
    # root[      "chest"].rotate([1,0,0], 0.10)
    # root[       "head"].rotate([1,0,0], 0.20)
    # root[  "right_arm"].rotate([0,0,1], 1.40)
    # root[  "right_arm"].rotate([0,1,0],-0.10)
    # root["right_wrist"].rotate([0,1,0], 0.20)
    # root[   "left_arm"].rotate([0,0,1],-1.50)
    # root[   "left_arm"].rotate([0,1,0],-0.10)
    # root[ "left_wrist"].rotate([0,1,0],-0.20)
    
    # # 2 右足前
    # root[  "right_hip"].rotate([1,0,0],-0.15)
    # root[  "right_leg"].rotate([1,0,0],-0.27)
    # root[  "right_leg"].rotate([0,0,1], 0.05,align="global")
    # root[  "right_lap"].rotate([1,0,0], 0.25)
    # root[ "right_foot"].rotate([1,0,0], 0.17)
    # root[   "left_hip"].rotate([1,0,0], 0.10)
    # root[   "left_leg"].rotate([1,0,0], 0.22)
    # root[   "left_lap"].rotate([1,0,0], 0.35)
    # root[  "left_foot"].rotate([1,0,0],-0.20)
    # root[    "stomach"].rotate([1,0,0], 0.15)
    # root[    "stomach"].rotate([0,0,1], 0.07,align="global")
    # root[      "chest"].rotate([1,0,0], 0.20)
    # root[       "head"].rotate([1,0,0], 0.25)
    # root[  "right_arm"].rotate([0,0,1], 1.30)
    # root[  "right_arm"].rotate([0,1,0],-0.30)
    # root["right_wrist"].rotate([0,1,0], 0.20)
    # root[   "left_arm"].rotate([0,0,1],-1.70)
    # root[   "left_arm"].rotate([0,1,0],-0.50)
    # root[ "left_wrist"].rotate([0,1,0],-0.20)
    # root[ "left_wrist"].rotate([0,0,1],-0.15,align="global")
    # root[ "up"].move([0,-10,0],align="global")
    # root[ "bottom"].move([0,-10,0],align="global")

    # # 3 左足を出す
    # root[  "right_hip"].rotate([1,0,0], 0.03)
    # root[  "right_leg"].rotate([1,0,0],-0.00)
    # root[  "right_lap"].rotate([1,0,0], 0.10)
    # root[ "right_foot"].rotate([1,0,0], 0.00)
    # root[   "left_hip"].rotate([1,0,0],-0.05)
    # root[   "left_leg"].rotate([1,0,0],-0.20)
    # root[   "left_leg"].rotate([0,0,1],-0.02,align="global")
    # root[   "left_lap"].rotate([1,0,0], 0.70)
    # root[  "left_foot"].rotate([1,0,0], 0.17)
    # root[    "stomach"].rotate([1,0,0], 0.05)
    # root[    "stomach"].rotate([0,0,1], 0.05,align="global")
    # root[      "chest"].rotate([1,0,0], 0.10)
    # root[       "head"].rotate([1,0,0], 0.20)
    # root[  "right_arm"].rotate([0,0,1], 1.50)
    # root[  "right_arm"].rotate([0,1,0], 0.10)
    # root["right_wrist"].rotate([0,1,0], 0.20)
    # root[   "left_arm"].rotate([0,0,1],-1.40)
    # root[   "left_arm"].rotate([0,1,0], 0.10)
    # root[ "left_wrist"].rotate([0,1,0],-0.20)

    # 4 左足前
    root[  "right_hip"].rotate([1,0,0], 0.10)
    root[  "right_leg"].rotate([1,0,0], 0.22)
    root[  "right_lap"].rotate([1,0,0], 0.35)
    root[ "right_foot"].rotate([1,0,0],-0.20)
    root[   "left_hip"].rotate([1,0,0],-0.15)
    root[   "left_leg"].rotate([1,0,0],-0.27)
    root[   "left_leg"].rotate([0,0,1],-0.05,align="global")
    root[   "left_lap"].rotate([1,0,0], 0.25)
    root[  "left_foot"].rotate([1,0,0], 0.17)
    root[    "stomach"].rotate([1,0,0], 0.15)
    root[    "stomach"].rotate([0,0,1],-0.07,align="global")
    root[      "chest"].rotate([1,0,0], 0.20)
    root[       "head"].rotate([1,0,0], 0.25)
    root[  "right_arm"].rotate([0,0,1], 1.70)
    root[  "right_arm"].rotate([0,1,0], 0.50)
    root["right_wrist"].rotate([0,1,0], 0.20)
    root["right_wrist"].rotate([0,0,1], 0.15,align="global")
    root[   "left_arm"].rotate([0,0,1],-1.30)
    root[   "left_arm"].rotate([0,1,0], 0.30)
    root[ "left_wrist"].rotate([0,1,0],-0.20)
    root[ "up"].move([0,-10,0],align="global")
    root[ "bottom"].move([0,-10,0],align="global")

    # 出力
    namespace = "rusk_magic:"
    target = "giant.walk[-1]"
    duration = 50
    output = ""
    for bone in root.values():
        for display in bone.displays.values():
            output = output + "\n" + display.get_modify(namespace,target,duration)
    
    pyperclip.copy(output+"\n")

## dragon
def dragon():

    ## ボーンの定義
    root = dict()

    # 下半身 上半身
    trf.bone(root,name="bottom" ,anchor=[0,192,0])
    trf.bone(root,name="up"     ,anchor=[0,192,0])
    trf.bone(root,name="right_hip"  ,parent="bottom"    ,anchor=[  -9, 192, 0])
    trf.bone(root,name="right_leg"  ,parent="right_hip" ,anchor=[ -12, 180, 0])
    trf.bone(root,name="right_lap"  ,parent="right_leg" ,anchor=[ -12, 100, 0])
    trf.bone(root,name="right_foot" ,parent="right_lap" ,anchor=[ -12,  10, 0])
    trf.bone(root,name="left_hip"   ,parent="bottom"    ,anchor=[   9, 192, 0])
    trf.bone(root,name="left_leg"   ,parent="left_hip"  ,anchor=[  12, 180, 0])
    trf.bone(root,name="left_lap"   ,parent="left_leg"  ,anchor=[  12, 100, 0])
    trf.bone(root,name="left_foot"  ,parent="left_lap"  ,anchor=[  12,  10, 0])
    trf.bone(root,name="stomach"    ,parent="up"        ,anchor=[   0, 192, 0])
    trf.bone(root,name="chest"      ,parent="stomach"   ,anchor=[   0, 212, 0])
    trf.bone(root,name="head"       ,parent="chest"     ,anchor=[   0, 242, 5])
    trf.bone(root,name="right_arm"  ,parent="chest"     ,anchor=[ -22, 237, 0])
    trf.bone(root,name="right_wrist",parent="right_arm" ,anchor=[ -82, 237, 0])
    trf.bone(root,name="left_arm"   ,parent="chest"     ,anchor=[  22, 237, 0])
    trf.bone(root,name="left_wrist" ,parent="left_arm"  ,anchor=[  82, 237, 0])

    ## ディスプレイの情報のセット
    root[  "right_hip"].displays[0] = item_display("right_hip"   ,translation=[  -9, 181,-2],scale=[18,20,17])
    root[  "right_leg"].displays[0] = item_display("right_leg"   ,translation=[ -12, 139, 0],scale=[10,80,10])
    root[  "right_lap"].displays[0] = item_display("right_lap"   ,translation=[ -12,  55, 0],scale=[ 8,90, 8])
    root[ "right_foot"].displays[0] = item_display("right_foot"  ,translation=[ -12,   5, 7],scale=[10,10,25])
    root[   "left_hip"].displays[0] = item_display("left_hip"    ,translation=[   9, 181,-2],scale=[18,20,17])
    root[   "left_leg"].displays[0] = item_display("left_leg"    ,translation=[  12, 139, 0],scale=[10,80,10])
    root[   "left_lap"].displays[0] = item_display("left_lap"    ,translation=[  12,  55, 0],scale=[ 8,90, 8])
    root[  "left_foot"].displays[0] = item_display("left_foot"   ,translation=[  12,   5, 7],scale=[10,10,25])
    root[    "stomach"].displays[0] = item_display("stomach"     ,translation=[   0, 201,-2],scale=[30,20,15])
    root[      "chest"].displays[0] = item_display("chest"       ,translation=[   0, 226, 0],scale=[45,30,20])
    root[       "head"].displays[0] = item_display("head"        ,translation=[   0, 259, 5],scale=[40,40,40])
    root[  "right_arm"].displays[0] = item_display("right_arm"   ,translation=[ -52, 236, 0],scale=[60, 8, 8])
    root["right_wrist"].displays[0] = item_display("right_wrist" ,translation=[-111, 236, 0],scale=[60, 7, 7])
    root[   "left_arm"].displays[0] = item_display("left_arm"    ,translation=[  52, 236, 0],scale=[60, 8, 8])
    root[ "left_wrist"].displays[0] = item_display("left_wrist"  ,translation=[ 111, 236, 0],scale=[60, 7, 7])

 
    # # 4 左足前
    # root[  "right_hip"].rotate([1,0,0], 0.10)
    # root[  "right_leg"].rotate([1,0,0], 0.22)
    # root[  "right_lap"].rotate([1,0,0], 0.35)
    # root[ "right_foot"].rotate([1,0,0],-0.20)
    # root[   "left_hip"].rotate([1,0,0],-0.15)
    # root[   "left_leg"].rotate([1,0,0],-0.27)
    # root[   "left_leg"].rotate([0,0,1],-0.05,align="global")
    # root[   "left_lap"].rotate([1,0,0], 0.25)
    # root[  "left_foot"].rotate([1,0,0], 0.17)
    # root[    "stomach"].rotate([1,0,0], 0.15)
    # root[    "stomach"].rotate([0,0,1],-0.07,align="global")
    # root[      "chest"].rotate([1,0,0], 0.20)
    # root[       "head"].rotate([1,0,0], 0.25)
    # root[  "right_arm"].rotate([0,0,1], 1.70)
    # root[  "right_arm"].rotate([0,1,0], 0.50)
    # root["right_wrist"].rotate([0,1,0], 0.20)
    # root["right_wrist"].rotate([0,0,1], 0.15,align="global")
    # root[   "left_arm"].rotate([0,0,1],-1.30)
    # root[   "left_arm"].rotate([0,1,0], 0.30)
    # root[ "left_wrist"].rotate([0,1,0],-0.20)
    # root[ "up"].move([0,-10,0],align="global")
    # root[ "bottom"].move([0,-10,0],align="global")

    # 出力
    namespace = "rusk_magic:"
    target = "dragon.default"
    duration = 2
    output = ""
    for bone in root.values():
        for display in bone.displays.values():
            output = output + "\n" + display.get_modify(namespace,target,duration)
    
    pyperclip.copy(output+"\n")

## book
def book():
    ## ボーンの定義
    root = dict()

    # 下半身 上半身
    trf.bone(root,name="book"       ,anchor=[0,0,0])
    trf.bone(root,name="right"      ,parent="book" ,anchor=[0,0,0.125])
    trf.bone(root,name="left"       ,parent="book" ,anchor=[0,0,0.125])
    trf.bone(root,name="back"       ,parent="book" ,anchor=[0,0,0.125])
    trf.bone(root,name="page1"      ,parent="book" ,anchor=[0,0,0.125])
    trf.bone(root,name="page2"      ,parent="book" ,anchor=[0,0,0.125])
    trf.bone(root,name="page3"      ,parent="book" ,anchor=[0,0,0.125])

    ## ディスプレイの情報のセット
    root["right"].add_display("item","right_book_cover",translation=[-0.065, 0.000, 0.000],scale=[ 0.010, 0.370, 0.270])
    root["right"].add_display("item","right_book_pages",translation=[-0.030, 0.000, 0.000],scale=[ 0.060, 0.350, 0.250],right_rotation_axis=[ 0.000, 0.000, 1.000],right_rotation_angle=1.571)
    root["right"].add_display("text","right_book_page" ,translation=[ 0.000, 0.000, 0.000],scale=[ 0.001, 0.350, 0.250])
    root["right"].add_display("text","right_book_text" ,translation=[ 0.001,-0.150, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root[ "left"].add_display("item","left_book_cover" ,translation=[ 0.065, 0.000, 0.000],scale=[ 0.010, 0.370, 0.270])
    root[ "left"].add_display("item","left_book_pages" ,translation=[ 0.031, 0.000, 0.000],scale=[ 0.060, 0.350, 0.250],right_rotation_axis=[ 0.000, 0.000, 1.000],right_rotation_angle=1.571)
    root[ "left"].add_display("text","left_book_page"  ,translation=[ 0.000, 0.000, 0.000],scale=[ 0.001, 0.350, 0.250])
    root[ "left"].add_display("text","left_book_text"  ,translation=[-0.001,-0.150, 0.000],left_rotation_axis=[ 0.000,-1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root[ "back"].add_display("item","back_cover"      ,translation=[ 0.000, 0.000, 0.130],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.010, 0.370, 0.120],right_rotation_axis=[ 0.000, 0.000, 1.000],right_rotation_angle=1.571)
    root["page1"].add_display("item","page1"           ,translation=[ 0.000, 0.000, 0.000],scale=[ 0.001, 0.350, 0.250])
    root["page1"].add_display("item","page1_front_text",translation=[ 0.001,-0.150, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root["page1"].add_display("item","page1_back_text" ,translation=[-0.001,-0.150, 0.000],left_rotation_axis=[ 0.000,-1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root["page2"].add_display("item","page2"           ,translation=[ 0.000, 0.000, 0.000],scale=[ 0.001, 0.350, 0.250])
    root["page2"].add_display("item","page2_front_text",translation=[ 0.001,-0.150, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root["page2"].add_display("item","page2_back_text" ,translation=[-0.001,-0.150, 0.000],left_rotation_axis=[ 0.000,-1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root["page3"].add_display("item","page3"           ,translation=[ 0.000, 0.000, 0.000],scale=[ 0.001, 0.350, 0.250])
    root["page3"].add_display("item","page3_front_text",translation=[ 0.001,-0.150, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
    root["page3"].add_display("item","page3_back_text" ,translation=[-0.001,-0.150, 0.000],left_rotation_axis=[ 0.000,-1.000, 0.000],left_rotation_angle=1.571,scale=[ 0.050, 0.050, 1.000])
 
    # ## 開いた状態
    # root["right"].rotate([0,1,0], 1.1)
    # root["left"].rotate([0,1,0],-1.1)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 0.5)
    # root["page3"].rotate([0,1,0],-0.5)

    ## ふわふわ
    # 1
    # root["right"].rotate([0,1,0], 1.1)
    # root["left"].rotate([0,1,0],-1.1)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 1.0)
    # root["page2"].rotate([0,1,0], 0.95)
    # root["page3"].rotate([0,1,0],-1.0)
    # root["book"].rotate([1,0,0],0.3)
    # root["book"].move([0,0.03,0])
    # 2
    # root["right"].rotate([0,1,0], 1.3)
    # root["left"].rotate([0,1,0],-1.3)
    # root["back"].move([0,0,0.053])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 1.2)
    # root["page2"].rotate([0,1,0], 1.1)
    # root["page3"].rotate([0,1,0],-1.15)
    # root["book"].rotate([1,0,0],0.34)
    # root["book"].move([0,-0.03,0])

    ## ぱらぱら
    # # 1
    root["right"].rotate([0,1,0], 1.1)
    root["left"].rotate([0,1,0],-1.1)
    root["back"].move([0,0,0.052])
    root["back"].scale([1,1,0.6],"size")
    root["page1"].rotate([0,1,0], 1.0)
    root["page2"].rotate([0,1,0], 0.95)
    root["page3"].rotate([0,1,0],-1.0)
    root["book"].rotate([1,0,0],0.3)
    root["book"].move([0,0.03,0])
    # # 2
    # root["right"].rotate([0,1,0], 1.12)
    # root["left" ].rotate([0,1,0],-1.12)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 1.0)
    # root["page2"].rotate([0,1,0], 0)
    # root["page3"].rotate([0,1,0],-1.05)
    # root["book" ].rotate([1,0,0],0.34)
    # root["book" ].move([0, 0.025,0])
    # # 3
    # root["right"].rotate([0,1,0], 1.15)
    # root["left" ].rotate([0,1,0],-1.15)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 1.0)
    # root["page2"].rotate([0,1,0],-1.05)
    # root["page3"].rotate([0,1,0], 0)
    # root["book" ].rotate([1,0,0],0.34)
    # root["book" ].move([0, 0.01,0])
    # # 4
    # root["right"].rotate([0,1,0], 1.2)
    # root["left" ].rotate([0,1,0],-1.2)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0], 0)
    # root["page2"].rotate([0,1,0],-1.1)
    # root["page3"].rotate([0,1,0], 1.1)
    # root["book" ].rotate([1,0,0],0.34)
    # root["book" ].move([0, 0,0])
    # # 5
    # root["right"].rotate([0,1,0], 1.25)
    # root["left" ].rotate([0,1,0],-1.25)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0],-1.0)
    # root["page2"].rotate([0,1,0],-1.15)
    # root["page3"].rotate([0,1,0], 1.1)
    # root["book" ].rotate([1,0,0],0.34)
    # root["book" ].move([0, 0.01,0])
    # # 6
    # root["right"].rotate([0,1,0], 1.28)
    # root["left" ].rotate([0,1,0],-1.28)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0],-1.2)
    # root["page2"].rotate([0,1,0], 1.2)
    # root["page3"].rotate([0,1,0], 0)
    # root["book" ].rotate([1,0,0],0.34)
    # root["book" ].move([0,-0.025,0])
    # # 7
    # root["right"].rotate([0,1,0], 1.3)
    # root["left"].rotate([0,1,0],-1.3)
    # root["back"].move([0,0,0.052])
    # root["back"].scale([1,1,0.6],"size")
    # root["page1"].rotate([0,1,0],-1.25)
    # root["page2"].rotate([0,1,0], 1.1)
    # root["page3"].rotate([0,1,0],-1.15)
    # root["book"].rotate([1,0,0],0.34)
    # root["book"].move([0,-0.03,0])

    # 出力
    namespace = "rusk_magic:"
    target = "book.flip_through[-1]"
    duration = 3
    output = ""
    for bone in root.values():
        for display in bone.displays.values():
            output = output + "\n" + display.get_modify(namespace,target,duration)
    
    pyperclip.copy(output+"\n")
    pass


if __name__ == "__main__":

    # ## 巨人 ginat
    # giant()

    # ## ドラゴン dragon
    # dragon()

    ## 本 book
    book()