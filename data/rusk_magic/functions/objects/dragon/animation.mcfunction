#> rusk_magic:objects/pegasus/animation
### アニメーションを反映

execute if score #pegasus mode matches -1 run function rusk_magic:objects/pegasus/animation/test
execute if score #pegasus mode matches 0 run function rusk_magic:objects/pegasus/animation/flap
execute if score #pegasus mode matches 1 run function rusk_magic:objects/pegasus/animation/run