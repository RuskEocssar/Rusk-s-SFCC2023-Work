#> rusk_magic:objects/dragon/animation/breath
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[1]
    execute if score @s time1 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[2]
    execute if score @s time1 matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[3]
    execute if score @s time1 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[4]
    execute if score @s time1 matches 16 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[5]
    execute if score @s time1 matches 16 at @s run playsound entity.ender_dragon.growl ambient @a ~ ~ ~ 2 1 0.5
    execute if score @s time1 matches 20 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[6]
    execute if score @s time1 matches 30 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[7]
    execute if score @s time1 matches 48 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[8]
    execute if score @s time1 matches 50 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[9]
    execute if score @s time1 matches 52 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[10]
    execute if score @s time1 matches 55 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[11]
    execute if score @s time1 matches 57 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[12]
    execute if score @s time1 matches 68 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[13]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=head] run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
execute if score @s time1 matches 80.. run scoreboard players set @s time1 -1
