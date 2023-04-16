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
    # ディスプレイ
    obj.add_display("right_frame","frame",translation=[-0.440, 0.000, 0.000],left_rotation_axis=[ 0.000, 1.000, 0.000],left_rotation_angle= 0.000,scale=[ 0.080, 1.160, 0.080])
    
    # Output
    f = open(_dir+"/data/rusk_magic/functions/objects/painting/load.mcfunction","w")
    f.write("#> rusk_magic:objects/painting/load\n# Datas of painting's poses and animations.\n\ndata modify storage rusk_magic: objects.painting set value {}\n\n")

    ## テスト
    _pose : pose = pose(obj, "test")
    _pose.rotate("arms",[1,0,0],-np.pi/4)
    _pose.scale("villager",[1,1.2,0.05])
    _pose.move("head",[0,0,0.001],align="global")
    f.write(_pose.get_commands(4)+"\n\n")
    
    ## テスト用
    _anime :animation = animation(obj, "test",True,24)
    # 0 上端
    _frame:pose = _anime.add_keyframe(0)
    _anime.copy_pose(_frame,_pose,1)
    _frame.move("frame",[0,0.1,0])
    _frame.rotate("frame",[1,0,0],-0.4)
    # 12 下端
    _frame:pose = _anime.copy_keyframe(12,0,operation="reset",bones=["frame"])
    _anime.copy_pose(_frame,_pose,1)
    _frame.move("frame",[0,-0.1,0])
    _frame.rotate("frame",[1,0,0],-0.4)
    _frame:pose = _anime.insert_keyframe(6,0,12,"wave")
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    f.close()



if __name__ == "__main__":
    main()