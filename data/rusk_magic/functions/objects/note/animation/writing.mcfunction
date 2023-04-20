#> rusk_magic:objects/note/animation/writing
### 書く

## 書く
    # リセット
    execute if data storage rusk_magic: _[] run data merge storage rusk_magic: {_:[]}
    # 最初
    execute if score @s time1 matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[0]
    # スコア
    execute if score @s time1 matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[1]
    execute if score @s time1 matches 3 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[2]
    execute if score @s time1 matches 9 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[3]
    execute if score @s time1 matches 12 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[4]
    execute if score @s time1 matches 15 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[5]
    execute if score @s time1 matches 18 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.note.writing[6]
    # 変更
    execute if data storage rusk_magic: _[] on passengers run function rusk_magic:pose_apply

## タイマー
scoreboard players add @s time1 1
scoreboard players set @s[scores={time1=24..}] time1 0

function rusk_magic:objects/note/text_add

#title @a actionbar {"score":{"name": "@s","objective": "time"}}