#
# 実行ディレクトリを移動/datapacks/下まで移動
import sys
_dir = __file__.split('\\')
_i1 = _dir.index("datapacks")
_dir = "\\".join(_dir[:_i1+2])
sys.path.append(_dir+"\\")

from transformation import *

def main():
    
    # オブジェクト
    obj = mc_object("painting","rusk_magic:")
    # ボーン
    obj.add_bone("frame","root",[0,0,0])
    obj.add_bone("villager","frame",[0,-0.500,0])
    obj.add_bone("head","villager",[0,-0.100,0])
    obj.add_bone("body","villager",[0,-0.100,0])
    obj.add_bone("nose","head",[0,-0.100,0])
    obj.add_bone("face","head",[0, 0.100,0])
    obj.add_bone("eyebrows","face",[0,0.125,200])
    obj.add_bone("eyes","face",[0,0.075,0.200])
    obj.add_bone("right_eye","eyes",[-0.100,0.075,0.200])
    obj.add_bone("left_eye","eyes",[0.100,0.075,0.200])
    obj.add_bone("arms","body",[0,-0.200,0])
    # ディスプレイ
    obj.add_display("right_frame","frame",translation=[-0.440, 0.000, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.080, 1.160, 0.080])
    obj.add_display("left_frame" ,"frame",translation=[ 0.440, 0.000, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.080, 1.160, 0.080])
    obj.add_display("up_frame"   ,"frame",translation=[ 0.000, 0.540, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.800, 0.080, 0.080])
    obj.add_display("down_frame" ,"frame",translation=[ 0.000,-0.540, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.800, 0.080, 0.080])
    obj.add_display("background" ,"frame",translation=[ 0.000, 0.000,-0.020],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.800, 1.000, 0.001])
    obj.add_display("head"       ,"head"    ,translation=[ 0.000, 0.150, 0.000],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.400, 0.500, 0.400])
    obj.add_display("nose"       ,"nose"    ,translation=[ 0.000,-0.050, 0.250],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.100, 0.200, 0.100])
    obj.add_display("eyebrows"   ,"eyebrows"    ,translation=[ 0.000, 0.125, 0.202],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.300, 0.050, 0.005])
    obj.add_display("right_eye"  ,"right_eye"    ,translation=[-0.100, 0.075, 0.200],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.100, 0.050, 0.005])
    obj.add_display("right_pupil","right_eye"    ,translation=[-0.100, 0.075, 0.201],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.050, 0.050, 0.005])
    obj.add_display("left_eye"   ,"left_eye"    ,translation=[ 0.100, 0.075, 0.200],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.100, 0.050, 0.005])
    obj.add_display("left_pupil" ,"left_eye"    ,translation=[ 0.100, 0.075, 0.201],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.050, 0.050, 0.005])
    obj.add_display("body"       ,"body"    ,translation=[ 0.000,-0.300, 0.000],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.450, 0.450, 0.350])
    obj.add_display("right_arm"  ,"arms"    ,translation=[-0.300,-0.350, 0.000],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.200, 0.400, 0.200])
    obj.add_display("left_arm"   ,"arms"    ,translation=[ 0.300,-0.350, 0.000],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.200, 0.400, 0.200])
    obj.add_display("wrist"      ,"arms"    ,translation=[ 0.000,-0.450, 0.000],left_rotation_axis=[ 1.000, 0.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.400, 0.200, 0.200])
    
    # Output
    f = open(_dir+"/data/rusk_magic/functions/objects/painting/load.mcfunction","w")
    f.write("#> rusk_magic:objects/painting/load\n# Datas of painting's poses and animations.\n\ndata modify storage rusk_magic: objects.painting set value {}\n\n")

    ## テスト
    _pose : pose = pose(obj, "test")
    _pose.rotate("arms",[1,0,0],-np.pi/4)
    _pose.rotate("villager",[0,1,0],-0.2)
    _pose.rotate("villager",[1,0,0],0.1)
    _pose.scale("villager",[1,1.2,0.05])
    f.write(_pose.get_commands(20)+"\n\n")

    ## デフォルト
    _pose0 : pose = pose(obj, "default")
    _pose0.rotate("arms",[1,0,0],-0.785)
    _pose0.rotate("villager",[1,0,0],0.05)
    _pose0.rotate("villager",[0,1,0],-0.2)
    _pose0.scale("villager",[1,1,0.05])
    _pose0.move("villager",[0.02,0,-0.018])
    _pose0.move("head",[0,0,0.001],align="global")
    _pose0.move("face",[0,0,0.001],align="global")
    _pose0.move("right_eye",[0,0,0.001],align="global",target="right_pupil")
    _pose0.move("left_eye",[0,0,0.001],align="global",target="left_pupil")
    _pose0.move("arms",[0,0,0.001],align="global",target="left_arm")
    _pose0.move("arms",[0,0,0.001],align="global",target="wrist")
    f.write(_pose0.get_commands(4)+"\n\n")
    
    ## ｽﾔｧ
    _pose1 : pose = pose(obj, "sleeping")
    _pose1.scale("eyes",[1,0,1])
    _pose1.move("eyebrows",[0,-0.025,0])
    _pose1.rotate("arms",[1,0,0],-0.785)
    _pose1.rotate("villager",[1,0,0],0.05)
    _pose1.rotate("villager",[0,1,0],-0.2)
    _pose1.scale("villager",[1,1,0.05])
    _pose1.move("villager",[0.02,0,-0.018])
    _pose1.move("head",[0,0,0.001],align="global")
    _pose1.move("face",[0,0,0.001],align="global")
    _pose1.move("arms",[0,0,0.001],align="global",target="left_arm")
    _pose1.move("arms",[0,0,0.001],align="global",target="wrist")
    f.write(_pose1.get_commands(2)+"\n\n")

    ## びっくり
    _pose2 : pose = pose(obj, "surprised")
    _pose2.rotate("head",[0,1,0],0.1)
    _pose2.rotate("head",[0,0,1],0.05)
    _pose2.rotate("head",[1,0,0],-0.15)
    _pose2.move("head",[0,0.02,0])
    _pose2.scale("eyes",[1,1.1,1])
    _pose2.move("eyes",[0,0.01,0])
    _pose2.rotate("nose",[0,0,1],-0.05)
    _pose2.move("nose",[0,-0.02,0])
    _pose2.scale("right_eye",[0.5,0.5,1],target="right_pupil")
    _pose2.scale("left_eye",[0.5,0.5,1],target="left_pupil")
    _pose2.move("right_eye",[0.02,0,0],target="right_pupil")
    _pose2.move("left_eye",[0.02,0,0],target="left_pupil")
    _pose2.rotate("eyebrows",[0,0,1],0.05)
    _pose2.move("eyebrows",[0,0.075,0])
    _pose2.move("arms",[0,-0.04,0])
    _pose2.rotate("arms",[1,0,0],-0.750)
    _pose2.rotate("villager",[1,0,0],0.05)
    _pose2.rotate("villager",[0,1,0],-0.2)
    _pose2.scale("villager",[1,1,0.05])
    _pose2.move("villager",[0.02,0,-0.018])
    _pose2.move("head",[0,0,0.001],align="global")
    _pose2.move("face",[0,0,0.001],align="global")
    _pose2.move("right_eye",[0,0,0.001],align="global",target="right_pupil")
    _pose2.move("left_eye",[0,0,0.001],align="global",target="left_pupil")
    _pose2.move("arms",[0,0,0.002],align="global",target="left_arm")
    _pose2.move("arms",[0,0,0.001],align="global",target="wrist")
    f.write(_pose2.get_commands(4)+"\n\n")

    ## 薄目
    _pose3 : pose = pose(obj, "half_open")
    _pose3.scale("eyes",[1,0.5,1])
    _pose3.move("eyebrows",[0,-0.015,0])
    _pose3.rotate("arms",[1,0,0],-0.785)
    _pose3.rotate("villager",[1,0,0],0.05)
    _pose3.rotate("villager",[0,1,0],-0.2)
    _pose3.scale("villager",[1,1,0.05])
    _pose3.move("villager",[0.02,0,-0.018])
    _pose3.move("head",[0,0,0.001],align="global")
    _pose3.move("face",[0,0,0.001],align="global")
    _pose3.move("right_eye",[0,0,0.001],align="global",target="right_pupil")
    _pose3.move("left_eye",[0,0,0.001],align="global",target="left_pupil")
    _pose3.move("arms",[0,0,0.001],align="global",target="left_arm")
    _pose3.move("arms",[0,0,0.001],align="global",target="wrist")
    f.write(_pose3.get_commands(2)+"\n\n")

    ## そっと見る
    _pose4 : pose = pose(obj, "glance")
    _pose4.rotate("villager",[1,0,0],0.05)
    _pose4.rotate("villager",[0,1,0],-0.2)
    _pose4.scale("villager",[1,1,0.05])
    _pose4.move("villager",[0.02,0,-0.018])
    _pose4.rotate("arms",[1,0,0],-0.785)
    _pose4.move("arms",[0,0,0.001],align="global",target="left_arm")
    _pose4.move("arms",[0,0,0.001],align="global",target="wrist")
    _pose4.move("head",[0,0,0.001],align="global")
    _pose4.move("face",[0,0,0.001],align="global")
    _pose4.move("eyebrows",[0,-0.01,0])
    _pose4.rotate("eyebrows",[0,0,1],0.1)
    _pose4.move("eyebrows",[0,0,0.002],align="global",target="eyebrows")
    _pose4.scale("eyes",[1,0.8,1])
    _pose4.move("right_eye",[0.02,0,0],target="right_pupil")
    _pose4.move("right_eye",[0,0,0.001],align="global",target="right_pupil")
    _pose4.move("left_eye",[0,0,0.001],align="global",target="left_pupil")
    _pose4.move("left_eye",[0.02,0,0],target="left_pupil")
    f.write(_pose4.get_commands(2)+"\n\n")

    ## 下を向く
    _pose5 : pose = pose(obj, "down")
    _pose5.rotate("villager",[1,0,0],0.05)
    _pose5.rotate("villager",[0,1,0],-0.2)
    _pose5.scale("villager",[1,1,0.05])
    _pose5.move("villager",[0,0,-0.018])
    _pose5.rotate("arms",[1,0,0],-0.785)
    _pose5.move("arms",[0,0,0.001],align="global",target="left_arm")
    _pose5.move("arms",[0,0,0.001],align="global",target="wrist")
    _pose5.rotate("head",[0,1,0],0.1)
    _pose5.rotate("head",[1,0,0],0.2)
    _pose5.move("head",[0,0,0.001],align="global")
    _pose5.move("face",[0,0,0.001],align="global")
    _pose5.move("nose",[0,0.01,0])
    _pose5.rotate("nose",[0,0,1],0.02)
    _pose5.rotate("eyebrows",[0,0,1],-0.02)
    _pose5.move("eyebrows",[0,0.080,0])
    _pose5.scale("eyes",[1,1.1,1])
    _pose5.move("eyes",[0,0.01,0])
    _pose5.scale("right_eye",[0.7,0.7,1],target="right_pupil")
    _pose5.move("right_eye",[0,0,0.001],align="global",target="right_pupil")
    _pose5.move("right_eye",[0.01,-0.005,0],target="right_pupil")
    _pose5.move("left_eye",[0,0,0.001],align="global",target="left_pupil")
    _pose5.scale("left_eye",[0.7,0.7,1],target="left_pupil")
    _pose5.move("left_eye",[0.01,-0.005,0],target="left_pupil")
    f.write(_pose5.get_commands(2)+"\n\n")
    
    ## テスト用
    _anime :animation = animation(obj, "test",True,24)
    # 0 上端
    _frame:pose = _anime.add_keyframe(0)
    _anime.copy_pose(_frame,_pose0,1)
    _frame.move("frame",[0,0.1,0])
    _frame.rotate("frame",[1,0,0],-0.4)
    # 12 下端
    _frame:pose = _anime.copy_keyframe(12,0,operation="reset",bones=("frame",))
    _anime.copy_pose(_frame,_pose0,1)
    _frame.move("frame",[0,-0.1,0])
    _frame.rotate("frame",[1,0,0],-0.4)
    _frame:pose = _anime.insert_keyframe(6,0,12,"wave")
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## 寝たままゆらゆら
    _anime :animation = animation(obj, "fluffy_eyes_closed",True,48)
    # 0 上端
    _frame:pose = _anime.add_keyframe(0)
    _anime.copy_pose(_frame,_pose1,1)
    _frame.move("frame",[0,0.1,0])
    _frame.rotate("frame",[1,0,0],-0.3)
    _frame.rotate("frame",[0,1,0],0.3)
    _frame.move("frame",[-1.0,0.6,-0.1])
    _frame.scale("frame",[0.8,0.8,0.8])
    # 24 下端
    _frame:pose = _anime.copy_keyframe(24,0,operation="reset",bones=("frame",))
    _frame.move("frame",[0,-0.1,0])
    _frame.rotate("frame",[1,0,0],-0.3)
    _frame.rotate("frame",[0,1,0],0.3)
    _frame.move("frame",[-1.0,0.6,-0.1])
    _frame.scale("frame",[0.8,0.8,0.8])
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## 半目ゆらゆら
    _anime.name = "fluffy_eyes_half"
    # 0 上端
    _frame:pose = _anime.keyframes[0]
    _anime.copy_pose(_frame,_pose3,1)
    # 12 下端
    _frame:pose = _anime.keyframes[24]
    _anime.copy_pose(_frame,_pose3,1)
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## 目を開けてゆらゆら
    _anime.name = "fluffy_eyes_opened"
    # 0 上端
    _frame:pose = _anime.keyframes[0]
    _anime.copy_pose(_frame,_pose0,1)
    # 12 下端
    _frame:pose = _anime.keyframes[24]
    _anime.copy_pose(_frame,_pose0,1)
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## 横目でゆらゆら
    _anime.name = "fluffy_eyes_glance"
    # 0 上端
    _frame:pose = _anime.keyframes[0]
    _anime.copy_pose(_frame,_pose4,1)
    # 12 下端
    _frame:pose = _anime.keyframes[24]
    _anime.copy_pose(_frame,_pose4,1)
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## いない状態でゆらゆら
    _anime.name = "fluffy_empty"
    # 0 上端
    _frame:pose = _anime.keyframes[0]
    _frame.scale("villager",[1,0.05,1])
    _frame.move("villager",[0.0,-0.05,0])
    # 12 下端
    _frame:pose = _anime.keyframes[24]
    _frame.scale("villager",[1,0.05,1])
    _frame.move("villager",[0.0,-0.05,0])
    # 出力
    f.write(_anime.get_commands()+"\n\n")


    ## 慌てて隠れる ゆらゆらしながら
    _anime :animation = animation(obj, "hide",False,36)
    # 0 横目
    _frame:pose = _anime.add_keyframe(0)
    _anime.copy_pose(_frame,_pose4,1)
    _frame.move("frame",[0,0.1,0])
    _frame.rotate("frame",[1,0,0],-0.3)
    _frame.rotate("frame",[0,1,0],0.3)
    _frame.move("frame",[-1.0,0.6,-0.1])
    _frame.scale("frame",[0.8,0.8,0.8])
    # 12 下端
    _frame:pose = _anime.copy_keyframe(12,0,operation="reset",bones=("frame",))
    _frame.move("frame",[0,-0.1,0])
    _frame.rotate("frame",[1,0,0],-0.3)
    _frame.rotate("frame",[0,1,0],0.3)
    _frame.move("frame",[-1.0,0.6,-0.1])
    _frame.scale("frame",[0.8,0.8,0.8])
    # 3
    _frame:pose = _anime.insert_keyframe(3,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose4,1)
    # 5 驚く 
    _frame:pose = _anime.insert_keyframe(5,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose4,1,)
    _frame.reset_bone("eyes","eyebrows")
    _frame.scale("eyes",[1,0,1])
    _frame.move("eyebrows",[0,-0.015,0])
    _frame.rotate("eyebrows",[0,0,1],0.04)
    _frame.scale("villager",[1,0.7,1])
    # 6 
    _frame:pose = _anime.insert_keyframe(6,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose2,1)
    _frame.scale("villager",[1,1.15,1])
    # 8 
    _frame:pose = _anime.insert_keyframe(8,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose2,1)
    # 12
    _frame:pose = _anime.keyframes[12]
    _anime.copy_pose(_frame,_pose2,1,)
    # 9
    _frame:pose = _anime.insert_keyframe(9,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose2,1,)
    # 24
    _frame:pose = _anime.insert_keyframe(24,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose2,1,)
    # 26
    _frame:pose = _anime.insert_keyframe(26,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose5,1,)
    _frame.scale("villager",[1,1.15,1])
    # 27
    _frame:pose = _anime.insert_keyframe(27,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose5,1,)
    # 29
    _frame:pose = _anime.insert_keyframe(29,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose5,1,)
    _frame.scale("villager",[1,0.05,1])
    _frame.move("villager",[0.0,-0.05,0])
    # 36
    _frame:pose = _anime.insert_keyframe(36,0,12,"wave","inherit",("frame",))
    _anime.copy_pose(_frame,_pose5,1,)
    _frame.scale("villager",[1,0.05,1])
    _frame.move("villager",[0.0,-0.05,0])

    # 出力
    f.write(_anime.get_commands()+"\n\n")

    f.close()



if __name__ == "__main__":
    main()