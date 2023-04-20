#> rusk_magic:carpet/flutter/carpet
### カーペットのゆらゆら

## 設定
    # スコア
    scoreboard players add @s time1 1
    scoreboard players set @s[scores={time1=24..}] time1 0
    # 向き
    execute positioned as @s run tp @s ~ ~ ~ ~ 0

## 時間別に
    execute if score @s time1 matches 0 run data modify entity @s transformation.translation[1] set value 0.1f
    execute if score @s time1 matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4472f],left_rotation:{axis:[1f,0f,0f],angle:0.245f}}}
    execute if score @s time1 matches 3 run data modify entity @s transformation.translation[1] set value 0.025f
    execute if score @s time1 matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:0.1244f}}}
    execute if score @s time1 matches 6 run data modify entity @s transformation.translation[1] set value 0f
    execute if score @s time1 matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4000f],left_rotation:{axis:[1f,0f,0f],angle:0f}}}
    execute if score @s time1 matches 9 run data modify entity @s transformation.translation[1] set value 0.025f
    execute if score @s time1 matches 9 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:-0.1244f}}}
    execute if score @s time1 matches 12 run data modify entity @s transformation.translation[1] set value 0.1f
    execute if score @s time1 matches 12 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4472f],left_rotation:{axis:[1f,0f,0f],angle:-0.245f}}}
    execute if score @s time1 matches 15 run data modify entity @s transformation.translation[1] set value 0.175f
    execute if score @s time1 matches 15 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:-0.1244f}}}
    execute if score @s time1 matches 18 run data modify entity @s transformation.translation[1] set value 0.2f
    execute if score @s time1 matches 18 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4000f],left_rotation:{axis:[1f,0f,0f],angle:0f}}}
    execute if score @s time1 matches 21 run data modify entity @s transformation.translation[1] set value 0.175f
    execute if score @s time1 matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:0.1244f}}}