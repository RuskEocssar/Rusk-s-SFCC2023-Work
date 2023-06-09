#> rusk_magic:objects/painting/animation/hide
### 慌てて隠れる

## 開く
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[1]
    execute if score @s time1 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[2]
    execute if score @s time1 matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[3]
    execute if score @s time1 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[4]
    execute if score @s time1 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[5]
    execute if score @s time1 matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[6]
    execute if score @s time1 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[7]
    execute if score @s time1 matches 15 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:7,shadow_radius:1f}
    execute if score @s time1 matches 21 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:3,shadow_radius:2f}
    execute if score @s time1 matches 24 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[8]
    execute if score @s time1 matches 26 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[9]
    execute if score @s time1 matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[10]
    execute if score @s time1 matches 31 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[11]

    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=40..}] time1 -1