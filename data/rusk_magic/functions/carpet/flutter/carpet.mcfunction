#> rusk_magic:carpet/flutter/carpet
### カーペットのゆらゆら

## 設定
    # スコア
    scoreboard players add @s time 1
    scoreboard players set @s[scores={time=24..}] time 0
    # 向き
    execute positioned as @s run tp @s ~ ~ ~ ~ 0

## 時間別に
    execute if score @s time matches 0 run data modify entity @s transformation.translation[1] set value 0.1f
    execute if score @s time matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4472f],left_rotation:{axis:[1f,0f,0f],angle:0.245f}}}
    execute if score @s time matches 3 run data modify entity @s transformation.translation[1] set value 0.025f
    execute if score @s time matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:0.1244f}}}
    execute if score @s time matches 6 run data modify entity @s transformation.translation[1] set value 0f
    execute if score @s time matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4000f],left_rotation:{axis:[1f,0f,0f],angle:0f}}}
    execute if score @s time matches 9 run data modify entity @s transformation.translation[1] set value 0.025f
    execute if score @s time matches 9 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:-0.1244f}}}
    execute if score @s time matches 12 run data modify entity @s transformation.translation[1] set value 0.1f
    execute if score @s time matches 12 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4472f],left_rotation:{axis:[1f,0f,0f],angle:-0.245f}}}
    execute if score @s time matches 15 run data modify entity @s transformation.translation[1] set value 0.175f
    execute if score @s time matches 15 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:-0.1244f}}}
    execute if score @s time matches 18 run data modify entity @s transformation.translation[1] set value 0.2f
    execute if score @s time matches 18 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4000f],left_rotation:{axis:[1f,0f,0f],angle:0f}}}
    execute if score @s time matches 21 run data modify entity @s transformation.translation[1] set value 0.175f
    execute if score @s time matches 21 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.8f,0.05f,0.4123f],left_rotation:{axis:[1f,0f,0f],angle:0.1244f}}}