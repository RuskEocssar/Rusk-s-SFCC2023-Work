#> rusk_magic:giant/pose
### ポーズを反映

execute if score #giant mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.test_pose
execute if score #giant mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.t_pose
execute if score #giant mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.idle

execute if score #giant mode matches 101 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.walk[0]
execute if score #giant mode matches 102 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.walk[1]
execute if score #giant mode matches 103 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.walk[2]
execute if score #giant mode matches 104 run data modify storage rusk_magic: _ set from storage rusk_magic: giant.walk[3]

execute on passengers run function rusk_magic:pose/apply