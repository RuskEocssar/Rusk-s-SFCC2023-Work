#> rusk_magic:objects/carpet/flutter/sound
### サウンドのループ

## サウンド
    # スコア
    execute if score @s time2 matches 0 at @s run playsound item.elytra.flying ambient @a ~ ~ ~ 0.1 0.3 0

## タイマー
scoreboard players add @s time2 1
execute if score @s time2 matches 100.. run scoreboard players set @s time2 0
