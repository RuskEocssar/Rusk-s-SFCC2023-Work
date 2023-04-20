#> rusk_magic:objects/dragon/animation/fast_flap
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time2 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[0]
    # スコア
    execute if score @s time2 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[1]
    execute if score @s time2 matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[2]
    execute if score @s time2 matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[3]
    execute if score @s time2 matches 2 at @s run playsound entity.ender_dragon.flap ambient @a[distance=..70] ~ ~ ~ 0.5 0.2 0.1
    execute if score @s time2 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[4]
    execute if score @s time2 matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[5]
    execute if score @s time2 matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[6]
    execute if score @s time2 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[7]
    execute if score @s time2 matches 7 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[8]
    execute if score @s time2 matches 7 at @s run playsound entity.ender_dragon.flap ambient @a[distance=..70] ~ ~ ~ 0.2 1 0.1
    execute if score @s time2 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[9]
    execute if score @s time2 matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.fast_flap[10]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=wing] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time2 1
execute if score @s time2 matches 10.. run scoreboard players set @s time2 0