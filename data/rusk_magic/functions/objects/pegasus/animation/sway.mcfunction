#> rusk_magic:objects/pegasus/animation/sway
### 走る

## 走るアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time3 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[0]
    # スコア
    execute if score @s time3 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[1]
    execute if score @s time3 matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[2]
    execute if score @s time3 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[3]
    execute if score @s time3 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[4]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=body] run function rusk_magic:pose_apply
    # 向きを反映
    execute at @s on passengers positioned as @s[type=!player] run tp @s ~ ~ ~ ~90 ~

## タイマー
scoreboard players add @s time3 1
execute if score @s time3 matches 16.. run scoreboard players set @s time3 0