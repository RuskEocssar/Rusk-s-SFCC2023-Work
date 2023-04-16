#> rusk_magic:objects/dragon/animation/sway_head
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #dragon_head time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[0]
    # スコア
    execute if score #dragon_head time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[1]
    execute if score #dragon_head time matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[2]
    execute if score #dragon_head time matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[3]
    execute if score #dragon_head time matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[4]
    execute if score #dragon_head time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[5]
    execute if score #dragon_head time matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.sway_head[6]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=head] run function rusk_magic:pose_apply

## タイマー
scoreboard players add #dragon_head time 1
execute if score #dragon_head time matches 20.. run scoreboard players set #dragon_head time 0
