#> rusk_magic:objects/dragon/animation/flap
### 羽ばたく

## 羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time2 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[0]
    # スコア
    execute if score @s time2 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[1]
    execute if score @s time2 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[2]
    execute if score @s time2 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[3]
    execute if score @s time1 matches 6 at @s run playsound entity.ender_dragon.flap ambient @a[distance=..50] ~ ~ ~ 0.5 0.2 0.1
    execute if score @s time2 matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[4]
    execute if score @s time2 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[5]
    execute if score @s time2 matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[6]
    execute if score @s time2 matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[7]
    execute if score @s time2 matches 21 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[8]
    execute if score @s time1 matches 21 at @s run playsound entity.ender_dragon.flap ambient @a[distance=..50] ~ ~ ~ 0.2 1 0.1
    execute if score @s time2 matches 24 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[9]
    execute if score @s time2 matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[10]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=wing] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time2 1
execute if score @s time2 matches 30.. run scoreboard players set @s time2 0