#> rusk_magic:objects/giant/animation/walk
### 歩く

execute at @s run tp @s ^ ^ ^1.1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~


## 開く
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant_walk[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[1]
    execute if score @s time1 matches 40 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[2]
    execute if score @s time1 matches 45 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[3]
    execute if score @s time1 matches 50 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[4]
    execute if score @s time1 matches 55 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[5]
    execute if score @s time1 matches 60 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[6]
    execute if score @s time1 matches 100 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[7]
    execute if score @s time1 matches 140 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[8]
    execute if score @s time1 matches 145 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[9]
    execute if score @s time1 matches 150 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[10]
    execute if score @s time1 matches 155 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[11]
    execute if score @s time1 matches 160 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[12]

    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=200..}] time1 0