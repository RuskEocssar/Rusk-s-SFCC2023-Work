#> rusk_magic:objects/painting/pose
### ポーズを反映

execute if score #painting mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.test
execute if score #painting mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.default
execute if score #painting mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.sleeping
execute if score #painting mode matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.surprised
execute if score #painting mode matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.half_open
execute if score #painting mode matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.glance
execute if score #painting mode matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.down

## ふわふわ
execute if score #painting mode matches 301 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.fluffy[0]
execute if score #painting mode matches 302 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.fluffy[1]

execute on passengers run function rusk_magic:pose_apply