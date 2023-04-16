#> rusk_magic:objects/book/animation/turn
### 本を開く

## 開く
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.turn[0]
    # スコア
    execute if score @s time matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.turn[1]
    execute if score @s time matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.turn[2]
    execute if score @s time matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.turn[3]

    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
## タイマー
scoreboard players add @s time 1
scoreboard players set @s[scores={time=40..}] time -1