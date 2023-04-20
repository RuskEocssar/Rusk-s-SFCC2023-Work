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
    obj = mc_object("note","rusk_magic:")
    # ボーン
    obj.add_bone("note"              ,"root"             , [  0.30, 0.80, 0.75])
    obj.add_bone("pen"               ,"note"              , [  0.30, 0.80, 0.75])

    # ディスプレイ
    obj.add_display("paper" ,"note","item",[ 0.30, 0.78, 0.75],[ 0.600, 0.600, 0.100],[ 1.000, 0.000, 0.000], 1.571)
    obj.add_display("text"  ,"note","text",[ 0.22, 0.79, 0.70],[ 0.085, 0.085, 0.085],[ 0.360, 0.660, 0.660], 3.833)
    obj.add_display("pen"   ,"pen" ,"item",[ 0.20, 0.83, 0.85],[ 0.300, 0.300, 0.300],[ 1.000, 0.000, 0.000], 1.500)

    # Output
    f = open(_dir+"/data/rusk_magic/functions/objects/note/load.mcfunction","w")
    f.write("#> rusk_magic:objects/note/load\n# Datas of note's poses and animations.\n\ndata modify storage rusk_magic: objects.note set value {}\n\n")

    ## 待機
    _anime :animation = animation(obj,"staying",True,48)
    _frame: pose = _anime.add_keyframe(0)
    _frame.rotate("note",[1,0,0],-0.4)
    _frame.rotate("note",[0,1,0],0.1)
    _frame.move("note",[0,0.07,-0.05])
    _frame: pose = _anime.add_keyframe(24)
    _frame.rotate("note",[1,0,0],-0.4)
    _frame.rotate("note",[0,1,0],0.1)
    _frame.move("note",[0,-0.07,-0.05])
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    ## 書く
    _anime :animation = animation(obj,"writing",True,24)
    _frame: pose = _anime.add_keyframe(0)
    _frame.rotate("note",[1,0,0],-0.4)
    _frame.rotate("note",[0,1,0],0.1)
    _frame.move("note",[0,0.07,-0.05])
    _frame.rotate("pen",[1,0,0],-1.572)
    _frame.rotate("pen",[0,0,1],1.572)
    _frame.move("pen",[0,0.2,0])
    _frame: pose = _anime.add_keyframe(12)
    _frame.rotate("note",[1,0,0],-0.4)
    _frame.rotate("note",[0,1,0],0.1)
    _frame.move("note",[0,-0.07,-0.05])
    _frame.rotate("pen",[1,0,0],-1.572)
    _frame.rotate("pen",[0,0,1],1.572)
    _frame.move("pen",[0,0.2,0])
    _frame: pose = _anime.insert_keyframe(3,0,12,"wave")
    _frame.rotate("pen",[1,0,0],0.1)
    _frame: pose = _anime.insert_keyframe(9,0,12,"wave")
    _frame.rotate("pen",[1,0,0],-0.1)
    _frame: pose = _anime.insert_keyframe(15,12,0,"wave")
    _frame.rotate("pen",[1,0,0],0.1)
    _frame: pose = _anime.insert_keyframe(18,12,0,"wave")
    _frame.rotate("pen",[1,0,0],-0.1)
    # 出力
    f.write(_anime.get_commands()+"\n\n")

    f.close()

if __name__ == "__main__":
    main()