#> rusk_magic:objects/pegasus/animation/run
### 走る

## 走るアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #pegasus_run time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[0]
    # スコア
    execute if score #pegasus_run time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[1]
    execute if score #pegasus_run time matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[2]
    execute if score #pegasus_run time matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[3]
    execute if score #pegasus_run time matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[4]
    execute if score #pegasus_run time matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[5]
    execute if score #pegasus_run time matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[6]
    execute if score #pegasus_run time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[7]
    execute if score #pegasus_run time matches 12 at @s run particle dust 1 1 1 1 ^0.8 ^-1.9 ^0.5 0.1 0 0.1 0.5 5
    execute if score #pegasus_run time matches 13 at @s run particle dust 1 1 1 1 ^-1.4 ^-1.9 ^0.5 0.1 0 0.1 0.5 5
    execute if score #pegasus_run time matches 14 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[8]
    execute if score #pegasus_run time matches 14 at @s run particle dust 1 1 1 1 ^1.0 ^-1.9 ^-0.5 0.1 0 0.1 0.5 5
    execute if score #pegasus_run time matches 15 at @s run particle dust 1 1 1 1 ^-1.2 ^-1.9 ^-0.5 0.1 0 0.1 0.5 5
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=legs] run function rusk_magic:pose_apply

## タイマー
scoreboard players add #pegasus_run time 1
execute if score #pegasus_run time matches 16.. run scoreboard players set #pegasus_run time 0