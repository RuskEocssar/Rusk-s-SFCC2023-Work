#> rusk_magic:book/fluffy
### ふわふわする

## 初期
execute if score @s time matches 300 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:0,shadow_strength:0f}

## ふわふわアニメーション
    # スコア
    execute if score @s time matches 301 run scoreboard players set #book mode 301
    execute if score @s time matches 306 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:12,shadow_radius:1f}
    execute if score @s time matches 316 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,shadow_radius:2f}
    execute if score @s time matches 321 run scoreboard players set #book mode 302
    execute if score @s time matches 326 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:12,shadow_radius:1f}
    execute if score @s time matches 336 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:5,shadow_radius:2f}
    # 変更
    execute if score #book mode matches 0.. run function rusk_magic:book/pose
    execute if score #book mode matches 0.. run scoreboard players set #book mode -1

## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=341..}] time 301

#title @a actionbar {"score":{"name": "@s","objective": "time"}}