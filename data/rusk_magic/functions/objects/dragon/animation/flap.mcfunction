#> rusk_magic:objects/dragon/animation/flap
### 半目でふわふわ

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #dragon_flap time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[0]
    # スコア
    execute if score #dragon_flap time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[1]
    execute if score #dragon_flap time matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[2]
    execute if score #dragon_flap time matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[3]
    execute if score #dragon_flap time matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[4]
    execute if score #dragon_flap time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[5]
    execute if score #dragon_flap time matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[6]
    execute if score #dragon_flap time matches 21 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[7]
    execute if score #dragon_flap time matches 24 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[8]
    execute if score #dragon_flap time matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flap[9]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=wing] run function rusk_magic:pose_apply

## タイマー
scoreboard players add #dragon_flap time 1
execute if score #dragon_flap time matches 30.. run scoreboard players set #dragon_flap time 0