#> rusk_magic:objects/pegasus/animation/sway
### 走る

## 走るアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #pegasus_sway time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[0]
    # スコア
    execute if score #pegasus_sway time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[1]
    execute if score #pegasus_sway time matches 0 at @s run tp @s ~ ~0.15 ~
    execute if score #pegasus_sway time matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[2]
    execute if score #pegasus_sway time matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[3]
    execute if score #pegasus_sway time matches 8 at @s run tp @s ~ ~-0.15 ~
    execute if score #pegasus_sway time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.sway[4]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=body] run function rusk_magic:pose_apply

## タイマー
scoreboard players add #pegasus_sway time 1
execute if score #pegasus_sway time matches 16.. run scoreboard players set #pegasus_sway time 0