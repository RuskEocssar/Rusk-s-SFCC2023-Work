#> rusk_magic:objects/pegasus/animation/run
### 走る

## 走るアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time2 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[0]
    # スコア
    execute if score @s time2 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[1]
    execute if score @s time2 matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[2]
    execute if score @s time2 matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[3]
    execute if score @s time2 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[4]
    execute if score @s time2 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[5]
    execute if score @s time2 matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[6]
    execute if score @s time2 matches 10 at @s run particle end_rod ^0.5 ^-1.9 ^-0.8 0.1 0 0.1 0 1
    execute if score @s time2 matches 10 at @s run playsound minecraft:block.amethyst_block.step ambient @a[distance=..40] ~ ~ ~ 0.1 0.5 0.01
    execute if score @s time2 matches 11 at @s run particle end_rod ^-0.5 ^-1.9 ^-0.5 0.1 0 0.1 0 1
    execute if score @s time2 matches 11 at @s run playsound minecraft:block.amethyst_block.step ambient @a[distance=..40] ~ ~ ~ 0.1 0. 0.01
    execute if score @s time2 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[7]
    execute if score @s time2 matches 12 at @s run particle end_rod ^0.4 ^-1.9 ^0.5 0.1 0 0.1 0 1
    execute if score @s time2 matches 12 at @s run playsound minecraft:block.amethyst_block.step ambient @a[distance=..40] ~ ~ ~ 0.1 0. 0.01
    execute if score @s time2 matches 13 at @s run particle end_rod ^-0.4 ^-1.9 ^0.8 0.1 0 0.1 0 1
    execute if score @s time2 matches 13 at @s run playsound minecraft:block.amethyst_block.step ambient @a[distance=..40] ~ ~ ~ 0.1 0. 0.01
    execute if score @s time2 matches 14 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.run[8]
    execute if score @s time2 matches 0 at @s run playsound minecraft:block.amethyst_block.chime ambient @a[distance=..40] ~ ~ ~ 1 1 0.01

    execute at @s run particle dust 10 10 10 1 ~ ~ ~ 1.5 1.5 1.5 0 1

    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=legs] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time2 1
execute if score @s time2 matches 16.. run scoreboard players set @s time2 0