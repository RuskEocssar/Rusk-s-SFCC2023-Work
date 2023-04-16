#> rusk_magic:carpet/flutter/obj
### オブジェクト別に実行

## 設定
    # スコア
    scoreboard players add @s time 1
    scoreboard players set @s[scores={time=24..}] time 0
    # 向き
    execute positioned as @s run tp @s ~ ~ ~ ~ 0

## 時間別に
    execute if score @s time matches 0 store success score @s _ run scoreboard players add @s y 10
    execute if score @s time matches 3 store success score @s _ run scoreboard players add @s y 40
    execute if score @s time matches 6 store success score @s _ run scoreboard players add @s y 40
    execute if score @s time matches 9 store success score @s _ run scoreboard players add @s y 10
    execute if score @s time matches 12 store success score @s _ run scoreboard players remove @s y 10
    execute if score @s time matches 15 store success score @s _ run scoreboard players remove @s y 40
    execute if score @s time matches 18 store success score @s _ run scoreboard players remove @s y 40
    execute if score @s time matches 21 store success score @s _ run scoreboard players remove @s y 10

## 位置反映
    execute if score @s _ matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:3}
    execute if score @s _ matches 1 store result entity @s transformation.translation[1] float 0.001 run scoreboard players get @s y
    execute if score @s _ matches 1 run scoreboard players set @s _ 0