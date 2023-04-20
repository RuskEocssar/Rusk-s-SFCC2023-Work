#> rusk_magic:movie/pegasus_main
###

## ペガサスを移動させる
    # モーション
    data modify entity @s Motion set from storage _: pegasus_motion[-1]
    data remove storage _: pegasus_motion[-1]
    # 向き
    data modify entity @s Rotation[0] set from storage _: pegasus_rotation[-1]
    data remove storage _: pegasus_rotation[-1]
    # ストップ
    execute unless data storage _: pegasus_motion[-1] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

# 羽ばたかせる
    function rusk_magic:objects/pegasus/animation/run
    function rusk_magic:objects/pegasus/animation/flap
    function rusk_magic:objects/pegasus/animation/sway

## 角度
    execute if score #movie time1 matches 600..650 on passengers at @s run tp @s ~ ~ ~ ~ 10
    execute if score #movie time1 matches 651..700 on passengers at @s run tp @s ~ ~ ~ ~ 20
    execute if score #movie time1 matches 701..750 on passengers at @s run tp @s ~ ~ ~ ~ 10