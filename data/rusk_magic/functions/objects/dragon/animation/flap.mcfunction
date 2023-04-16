#> rusk_magic:objects/dragon/animation/flap
### 羽ばたく

## 羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #dragon_wing time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[0]
    # スコア
    execute if score #dragon_wing time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[1]
    execute if score #dragon_wing time matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[2]
    execute if score #dragon_wing time matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[3]
    execute if score #dragon_wing time matches 4 at @s run tp @s ~ ~0.1 ~
    execute if score #dragon_wing time matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[4]
    execute if score #dragon_wing time matches 6 at @s run tp @s ~ ~0.1 ~
    execute if score #dragon_wing time matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[5]
    execute if score #dragon_wing time matches 4 at @s run tp @s ~ ~0.05 ~
    execute if score #dragon_wing time matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[6]
    execute if score #dragon_wing time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[7]
    execute if score #dragon_wing time matches 14 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[8]
    execute if score #dragon_wing time matches 14 at @s run tp @s ~ ~-0.1 ~
    execute if score #dragon_wing time matches 16 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[9]
    execute if score #dragon_wing time matches 16 at @s run tp @s ~ ~-0.1 ~
    execute if score #dragon_wing time matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[10]
    execute if score #dragon_wing time matches 18 at @s run tp @s ~ ~-0.05 ~
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=wing] run function rusk_magic:pose_apply

## タイマー
scoreboard players add #dragon_wing time 1
execute if score #dragon_wing time matches 20.. run scoreboard players set #dragon_wing time 0