#> rusk_magic:objects/book/animation/open
### 本を開く

## 開く
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[1]
    execute if score @s time1 matches 4 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[2]
    execute if score @s time1 matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[3]
    execute if score @s time1 matches 6 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[4]
    execute if score @s time1 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.open[5]

    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=40..}] time1 -1