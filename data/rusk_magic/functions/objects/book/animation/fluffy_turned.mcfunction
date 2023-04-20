#> rusk_magic:objects/book/animation/fluffy_turned
### ふわふわする

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.fluffy_turned[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.fluffy_turned[1]
    execute if score @s time1 matches 5 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:12,shadow_radius:1f}
    execute if score @s time1 matches 15 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,shadow_radius:2f}
    execute if score @s time1 matches 20 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.fluffy_turned[2]
    execute if score @s time1 matches 25 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:12,shadow_radius:1f}
    execute if score @s time1 matches 35 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,shadow_radius:2f}
    # 変更
    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=40..}] time1 0

#title @a actionbar {"score":{"name": "@s","objective": "time"}}