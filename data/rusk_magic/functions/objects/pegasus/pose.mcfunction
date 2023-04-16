#> rusk_magic:objects/pegasus/pose
### ポーズを反映

execute if score #pegasus mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.test
execute if score #pegasus mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.default
execute if score #pegasus mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_top
execute if score #pegasus mode matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_up_upper
execute if score #pegasus mode matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_up_lower
execute if score #pegasus mode matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_bottom
execute if score #pegasus mode matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_down_upper
execute if score #pegasus mode matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.wing_down_lower

execute if score #pegasus mode matches 7 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.legs_backward
execute if score #pegasus mode matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.legs_forward
execute if score #pegasus mode matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.legs_up
execute if score #pegasus mode matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.pegasus.legs_put

execute on passengers run function rusk_magic:pose_apply