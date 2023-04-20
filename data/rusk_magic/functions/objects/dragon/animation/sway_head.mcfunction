#> rusk_magic:objects/dragon/animation/sway_head
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[1]
    execute if score @s time1 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[2]
    execute if score @s time1 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[3]
    execute if score @s time1 matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[4]
    execute if score @s time1 matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[5]
    execute if score @s time1 matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[6]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=head] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
execute if score @s time1 matches 30.. run scoreboard players set @s time1 0
