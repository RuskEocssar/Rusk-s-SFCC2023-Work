#> rusk_magic:objects/giant/pose
### ポーズを反映

execute if score #giant mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.test_pose
execute if score #giant mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.t_pose
execute if score #giant mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.idle

execute if score #giant mode matches 101 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[0]
execute if score #giant mode matches 102 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[1]
execute if score #giant mode matches 103 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[2]
execute if score #giant mode matches 104 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[3]
execute if score #giant mode matches 105 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.giant.walk[4]

execute on passengers run function rusk_magic:pose_apply