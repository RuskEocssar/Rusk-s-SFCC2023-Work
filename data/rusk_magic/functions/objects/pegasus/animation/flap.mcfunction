#> rusk_magic:objects/pegasus/animation/flap
### 半目でふわふわ

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[1]
    execute if score @s time1 matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[2]
    execute if score @s time1 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[3]
    execute if score @s time1 matches 3 at @s run playsound entity.phantom.flap ambient @a ~ ~ ~ 2 1.3 0
    execute if score @s time1 matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[4]
    execute if score @s time1 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[5]
    execute if score @s time1 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[6]
    execute if score @s time1 matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[7]
    execute if score @s time1 matches 14 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[8]
    execute if score @s time1 matches 20 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[9]
    execute if score @s time1 matches 25 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.flap[10]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=wing] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
execute if score @s time1 matches 26.. run scoreboard players set @s time1 0