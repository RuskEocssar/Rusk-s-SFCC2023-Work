#> rusk_magic:objects/dragon/pose
### ポーズを反映

execute if score #dragon mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.test
execute if score #dragon mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.default

execute if score #dragon mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.flying_body
execute if score #dragon mode matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.wing_center
execute if score #dragon mode matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.wing_top
execute if score #dragon mode matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.wing_bottom
execute if score #dragon mode matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.wing_up
execute if score #dragon mode matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.dragon.breath

execute on passengers run function rusk_magic:pose_apply