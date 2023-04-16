#> rusk_magic:objects/painting/animation/fluffy_eyes_glance
### 半目でふわふわ

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.fluffy_eyes_glance[0]
    # スコア
    execute if score @s time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.fluffy_eyes_glance[1]
    execute if score @s time matches 3 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:7,shadow_radius:1f}
    execute if score @s time matches 9 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:3,shadow_radius:2f}
    execute if score @s time matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.painting.fluffy_eyes_glance[2]
    execute if score @s time matches 15 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:7,shadow_radius:1f}
    execute if score @s time matches 21 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:3,shadow_radius:2f}
    # 変更
    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=24..}] time 0