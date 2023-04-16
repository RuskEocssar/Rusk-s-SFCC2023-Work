#> rusk_magic:objects/painting/animation
### アニメーションを反映

execute if score #painting mode matches -1 run function rusk_magic:objects/painting/animation/test
execute if score #painting mode matches 0 run function rusk_magic:objects/painting/animation/fluffy_eyes_closed
execute if score #painting mode matches 1 run function rusk_magic:objects/painting/animation/fluffy_eyes_half
execute if score #painting mode matches 2 run function rusk_magic:objects/painting/animation/fluffy_eyes_opened
execute if score #painting mode matches 3 run function rusk_magic:objects/painting/animation/fluffy_eyes_glance


execute if score #painting mode matches 10 run function rusk_magic:objects/painting/animation/hide