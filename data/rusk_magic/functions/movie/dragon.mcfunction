#> rusk_magic:movie/dragon
###

## ドラゴンを移動させる
    # モーション
    data modify entity @s Motion set from storage _: dragon_motion[-1]
    data remove storage _: dragon_motion[-1]
    # 向き
    data modify entity @s Rotation[0] set from storage _: dragon_rotation[-1]
    data remove storage _: dragon_rotation[-1]
    # ストップ
    execute unless data storage _: dragon_motion[-1] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

## 羽ばたかせる
    # 羽
    execute if score #movie time1 matches 0..667 run function rusk_magic:objects/dragon/animation/flap
    execute if score #movie time1 matches 667 run playsound item.elytra.flying ambient @a ~ ~ ~ 1 0.3 0.01
    execute if score #movie time1 matches 750..780 run function rusk_magic:objects/dragon/animation/fast_flap
    execute if score #movie time1 matches 781.. run function rusk_magic:objects/dragon/animation/flap
    # 体
    function rusk_magic:objects/dragon/animation/sway_body
    # 頭
    execute if score #movie time1 matches 0..500 run function rusk_magic:objects/dragon/animation/sway_head
    execute if score #movie time1 matches 500 run scoreboard players set @s time1 0
    execute if score #movie time1 matches 500..570 run function rusk_magic:objects/dragon/animation/breath
    execute if score #movie time1 matches 571.. run function rusk_magic:objects/dragon/animation/sway_head

## 向き
    execute if score #movie time1 matches 660..670 on passengers at @s run tp @s ~ ~ ~ ~ 10
    execute if score #movie time1 matches 671..680 on passengers at @s run tp @s ~ ~ ~ ~ 15
    execute if score #movie time1 matches 681..690 on passengers at @s run tp @s ~ ~ ~ ~ 20
    execute if score #movie time1 matches 691..700 on passengers at @s run tp @s ~ ~ ~ ~ 25
    execute if score #movie time1 matches 701..710 on passengers at @s run tp @s ~ ~ ~ ~ 30
    execute if score #movie time1 matches 711..720 on passengers at @s run tp @s ~ ~ ~ ~ 35
    execute if score #movie time1 matches 721..770 on passengers at @s run tp @s ~ ~ ~ ~ 40
    execute if score #movie time1 matches 771..780 on passengers at @s run tp @s ~ ~ ~ ~ 35
    execute if score #movie time1 matches 781..790 on passengers at @s run tp @s ~ ~ ~ ~ 30
    execute if score #movie time1 matches 791..800 on passengers at @s run tp @s ~ ~ ~ ~ 25
    execute if score #movie time1 matches 801..810 on passengers at @s run tp @s ~ ~ ~ ~ 20
    execute if score #movie time1 matches 811..820 on passengers at @s run tp @s ~ ~ ~ ~ 15
    execute if score #movie time1 matches 821..830 on passengers at @s run tp @s ~ ~ ~ ~ 10