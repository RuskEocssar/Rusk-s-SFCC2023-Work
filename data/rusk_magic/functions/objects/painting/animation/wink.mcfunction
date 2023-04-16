#> rusk_magic:objects/painting/animation/wink
### 半目まばたき

## 
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[0]
    # スコア
    # 目を開ける
    execute if score @s time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[1]
    execute if score @s time matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[2]
    # 半目のままふわふわ
    execute if score @s time matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[3]
    execute if score @s time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[4]
    execute if score @s time matches 24 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[5]
    execute if score @s time matches 25 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[5]
    execute if score @s time matches 26 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[6]
    execute if score @s time matches 24 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.hide[7]

    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s[scores={time=-1..120}] time 1