#> rusk_magic:objects/dragon/animation/breath
### 羽ばたく

## 早く羽ばたく
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score #dragon_head time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[0]
    # スコア
    execute if score #dragon_head time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[1]
    execute if score #dragon_head time matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[2]
    execute if score #dragon_head time matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[3]
    execute if score #dragon_head time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[4]
    execute if score #dragon_head time matches 16 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[5]
    execute if score #dragon_head time matches 20 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[6]
    execute if score #dragon_head time matches 30 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[7]
    execute if score #dragon_head time matches 48 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[8]
    execute if score #dragon_head time matches 50 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[9]
    execute if score #dragon_head time matches 52 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[10]
    execute if score #dragon_head time matches 55 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[11]
    execute if score #dragon_head time matches 57 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[12]
    execute if score #dragon_head time matches 68 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath[13]
    # 変更
    execute if data storage rusk_magic: _[] on passengers if entity @s[tag=head] run function rusk_magic:pose_apply

## パーティクル
    execute if score #dragon_head time matches 20 at @s on passengers if entity @s[tag=marker] run tp @s ~ ~ ~ ~-103.3 ~3.0
    execute if score #dragon_head time matches 20..48 at @s on passengers if entity @s[tag=marker] rotated as @s run tp @s ~ ~ ~ ~2 ~-0.2

    execute if score #dragon_head time matches 8 at @s positioned ^8 ^-2 ^-2.2 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 9 at @s positioned ^8 ^-2.15 ^-2.3 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 10 at @s positioned ^8 ^-2.3 ^-2.4 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 11 at @s positioned ^8.05 ^-2.25 ^-2.4 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 12 at @s positioned ^8.1 ^-2.2 ^-2.4 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 13 at @s positioned ^8.25 ^-2.2 ^-2.2 rotated ~ ~ run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 14 at @s positioned ^8.4 ^-2.15 ^-2.1 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 15 at @s positioned ^8.55 ^-2.1 ^-1.9 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 16 at @s positioned ^8.7 ^-1.7 ^-1.7 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 17 at @s positioned ^8.8 ^-1.6 ^-1.6 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 18 at @s positioned ^8.9 ^-1.5 ^-1.5 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 19 at @s positioned ^9.0 ^-1.4 ^-1.4 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.07 30 force
    execute if score #dragon_head time matches 20 at @s positioned ^9.1 ^-1.3 ^-1.3 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 21 at @s positioned ^9.1 ^-1.2 ^-1.1 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 22 at @s positioned ^9.2 ^-1.1 ^-1.0 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 23 at @s positioned ^9.2 ^-0.9 ^-0.8 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 24 at @s positioned ^9.3 ^-0.8 ^-0.6 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 25 at @s positioned ^9.3 ^-0.7 ^-0.5 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 26 at @s positioned ^9.4 ^-0.6 ^-0.4 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 27 at @s positioned ^9.4 ^-0.5 ^-0.3 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 28 at @s positioned ^9.5 ^-0.4 ^-0.1 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 29 at @s positioned ^9.5 ^-0.3 ^0 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 30 at @s positioned ^9.45 ^-0.27 ^0.15 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 31 at @s positioned ^9.4 ^-0.24 ^0.3 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 32 at @s positioned ^9.35 ^-0.21 ^0.45 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 33 at @s positioned ^9.3 ^-0.18 ^0.6 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 34 at @s positioned ^9.25 ^-0.15 ^0.75 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 35 at @s positioned ^9.2 ^-0.12 ^0.9 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 36 at @s positioned ^9.15 ^-0.09 ^1.05 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 37 at @s positioned ^9.1 ^-0.06 ^1.2 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 38 at @s positioned ^9.05 ^-0.03 ^1.35 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 39 at @s positioned ^9.0 ^0 ^1.5 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 40 at @s positioned ^8.95 ^0.03 ^1.65 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 41 at @s positioned ^8.9 ^0.06 ^1.8 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 42 at @s positioned ^8.85 ^0.09 ^1.95 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 43 at @s positioned ^8.8 ^0.12 ^2.1 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 44 at @s positioned ^8.75 ^0.15 ^2.25 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 45 at @s positioned ^8.7 ^0.18 ^2.3 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 46 at @s positioned ^8.65 ^0.21 ^2.46 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 47 at @s positioned ^8.6 ^0.24 ^2.6 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles
    execute if score #dragon_head time matches 48 at @s positioned ^8.5 ^0.29 ^2.8 on passengers if entity @s[tag=marker] rotated as @s run function rusk_magic:objects/dragon/animation/breath_particles


## タイマー
scoreboard players add #dragon_head time 1
execute if score #dragon_head time matches 80.. run scoreboard players set #dragon_head time -1
