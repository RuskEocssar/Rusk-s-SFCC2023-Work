#> rusk_magic:book/flip_through
### ぱらぱら

## 初期
execute if score @s time matches 400 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:0,shadow_strength:0f}

## ふわふわアニメーション
    # スコア
    execute if score @s time matches 401 run scoreboard players set #book mode 401
    execute if score @s time matches 404 run scoreboard players set #book mode 402
    execute if score @s time matches 408 run scoreboard players set #book mode 403
    execute if score @s time matches 411 run scoreboard players set #book mode 404
    execute if score @s time matches 414 run scoreboard players set #book mode 405
    execute if score @s time matches 417 run scoreboard players set #book mode 406
    execute if score @s time matches 420 run scoreboard players set #book mode 407
    execute if score @s time matches 425 run scoreboard players set #book mode 408
    execute if score @s time matches 428 run scoreboard players set #book mode 409
    execute if score @s time matches 431 run scoreboard players set #book mode 410
    execute if score @s time matches 434 run scoreboard players set #book mode 411
    execute if score @s time matches 437 run scoreboard players set #book mode 412

    # 変更
    execute if score #book mode matches 0.. run function rusk_magic:book/pose
    execute if score #book mode matches 0.. run scoreboard players set #book mode -1

## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=441..}] time 401

#title @a actionbar {"score":{"name": "@s","objective": "time"}}