#> rusk_magic:objects/painting/animation/test
### 半目でふわふわ

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.test[0]
    # スコア
    execute if score @s time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.test[1]
    execute if score @s time matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.test[2]
    execute if score @s time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.test[3]
    # 変更
    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=24..}] time 0