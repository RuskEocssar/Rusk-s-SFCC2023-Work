#> rusk_magic:book/flip_through
### ぱらぱら

## ふわふわアニメーション
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[1]

    execute if score @s time1 matches 2 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[2]
    execute if score @s time1 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[3]
    execute if score @s time1 matches 5 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[4]
    execute if score @s time1 matches 7 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[5]
    execute if score @s time1 matches 8 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[6]
    execute if score @s time1 matches 10 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[7]
    execute if score @s time1 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[8]
    execute if score @s time1 matches 13 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[9]
    execute if score @s time1 matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[10]
    execute if score @s time1 matches 17 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[11]
    execute if score @s time1 matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[12]

    execute if score @s time1 matches 20 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[13]

    execute if score @s time1 matches 22 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[14]
    execute if score @s time1 matches 23 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[15]
    execute if score @s time1 matches 25 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[16]
    execute if score @s time1 matches 27 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[17]
    execute if score @s time1 matches 28 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[18]
    execute if score @s time1 matches 30 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[19]
    execute if score @s time1 matches 32 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[20]
    execute if score @s time1 matches 33 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[21]
    execute if score @s time1 matches 35 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[22]
    execute if score @s time1 matches 37 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[23]
    execute if score @s time1 matches 38 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[24]

    # 変更
    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=40..}] time1 0

#title @a actionbar {"score":{"name": "@s","objective": "time"}}