#> rusk_magic:objects/dragon/animation/sway_body
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time3 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[0]
    # スコア
    execute if score @s time3 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[1]
    execute if score @s time3 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[2]
    execute if score @s time3 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[3]
    execute if score @s time3 matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[4]
    execute if score @s time3 matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[5]
    execute if score @s time3 matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_body[6]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=body] run function rusk_magic:pose_apply
    # 向きを反映
    execute at @s on passengers unless entity @s[type=marker] positioned as @s[type=!player] run tp @s ~ ~ ~ ~90 ~

## タイマー
scoreboard players add @s time3 1
execute if score @s time3 matches 30.. run scoreboard players set @s time3 0
