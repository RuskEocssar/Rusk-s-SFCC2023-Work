#> rusk_magic:giant/walk
### 歩く

## 
execute if score @s time matches 0

##
tp @s ^ ^ ^0.7

## 歩く
    # スコア
    execute if score @s time matches 0 run scoreboard players set #giant mode 101
    execute if score @s time matches 45..49 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:4}
    execute if score @s time matches 50 run scoreboard players set #giant mode 102
    execute if score @s time matches 90..99 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10}
    execute if score @s time matches 100 run scoreboard players set #giant mode 103
    execute if score @s time matches 145..149 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:4}
    execute if score @s time matches 150 run scoreboard players set #giant mode 104
    execute if score @s time matches 190..199 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:10}
    # 変更
    execute if score #giant mode matches 100.. run function rusk_magic:giant/pose
    execute if score #giant mode matches 100.. run scoreboard players set #giant mode -1

## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=200..}] time 0

#title @a actionbar {"score":{"name": "@s","objective": "time"}}