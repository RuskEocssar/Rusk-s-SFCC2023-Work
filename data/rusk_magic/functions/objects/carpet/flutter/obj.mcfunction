#> rusk_magic:carpet/flutter/obj
### オブジェクト別に実行

## 設定
    # スコア
    scoreboard players add @s time1 1
    scoreboard players set @s[scores={time1=24..}] time1 0
    # 向き
    execute positioned as @s run tp @s ~ ~ ~ ~ 0

## 時間別に
    execute if score @s time1 matches 0 store success score @s _ run scoreboard players add @s y 10
    execute if score @s time1 matches 3 store success score @s _ run scoreboard players add @s y 40
    execute if score @s time1 matches 6 store success score @s _ run scoreboard players add @s y 40
    execute if score @s time1 matches 9 store success score @s _ run scoreboard players add @s y 10
    execute if score @s time1 matches 12 store success score @s _ run scoreboard players remove @s y 10
    execute if score @s time1 matches 15 store success score @s _ run scoreboard players remove @s y 40
    execute if score @s time1 matches 18 store success score @s _ run scoreboard players remove @s y 40
    execute if score @s time1 matches 21 store success score @s _ run scoreboard players remove @s y 10

## 位置反映
    execute if score @s _ matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:3}
    execute if score @s _ matches 1 store result entity @s transformation.translation[1] float 0.001 run scoreboard players get @s y
    execute if score @s _ matches 1 run scoreboard players set @s _ 0