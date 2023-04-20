#> rusk_magic:movie/tick
### ムービーのフェーズ毎に常時実行


## 魔法の絨毯
    execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=carpet_base,limit=1] run function rusk_magic:movie/magic_carpet

## 本
    # ゆらゆら
    execute if score #movie time1 matches 0..199 as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:objects/book/animation/fluffy
    execute if score #movie time1 matches 220..369 as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:objects/book/animation/fluffy_turned
    # ページめくり
    execute if score #movie time1 matches 200 run scoreboard players set @e[type=item_display,tag=book_base,limit=1] time1 0
    execute if score #movie time1 matches 200..219 as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:objects/book/animation/turn
    # 閉じる
    execute if score #movie time1 matches 370 run scoreboard players set @e[type=item_display,tag=book_base,limit=1] time1 -1
    execute if score #movie time1 matches 370..374 as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:objects/book/animation/close
    # 棚に移動
    execute if score #movie time1 matches 376 run scoreboard players set @e[type=item_display,tag=book_base,limit=1] time1 -1
    execute if score #movie time1 matches 376..386 as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:objects/book/animation/put_away
    execute if score #movie time1 matches 387 as @e[type=block_display,tag=bookshelf,limit=1] run data merge entity @s {block_state:{Properties:{slot_3_occupied:"true"}}}
    execute if score #movie time1 matches 387 run kill @e[tag=book]

## 動く絵画
    # 目を閉じた状態
    execute if score #movie time1 matches 3 run scoreboard players set @e[type=item_display,tag=painting_base,limit=1] time1 -1
    execute if score #movie time1 matches 3..412 as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:objects/painting/animation/fluffy_eyes_closed
    # 半目
    execute if score #movie time1 matches 412 run scoreboard players set @e[type=item_display,tag=painting_base,limit=1] time1 -1
    execute if score #movie time1 matches 412..436 as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:objects/painting/animation/fluffy_eyes_half
    # 横目
    execute if score #movie time1 matches 437 run scoreboard players set @e[type=item_display,tag=painting_base,limit=1] time1 0
    execute if score #movie time1 matches 437..460 as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:objects/painting/animation/fluffy_eyes_glance
    # 驚いて隠れる
    execute if score #movie time1 matches 461 run scoreboard players set @e[type=item_display,tag=painting_base,limit=1] time1 0
    execute if score #movie time1 matches 461..497 as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:objects/painting/animation/hide
    # 隠れた状態
    execute if score #movie time1 matches 498 run scoreboard players set @e[type=item_display,tag=painting_base,limit=1] time1 12
    execute if score #movie time1 matches 498.. as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:objects/painting/animation/fluffy_empty
    

## 自動書記
    # 待機
    execute if score #movie time1 matches 0 run scoreboard players set @e[type=item_display,tag=note_base,limit=1] time1 20
    execute if score #movie time1 matches 0..396 as @e[type=item_display,tag=note_base,limit=1] run function rusk_magic:objects/note/animation/staying
    # 書く
    execute if score #movie time1 matches 397.. as @e[type=item_display,tag=note_base,limit=1] run function rusk_magic:objects/note/animation/writing

## ペガサス
    # 主役
    execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=pegasus_base,limit=1] run function rusk_magic:movie/pegasus_main
    # 脇役
    execute if score #movie time1 matches 0.. as @e[type=item_display,tag=pegasus_base] run function rusk_magic:movie/pegasus_sub


## ドラゴン
    execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=dragon_base,limit=1] run function rusk_magic:movie/dragon

## 巨人
    execute if score #movie time1 matches 500.. as @e[type=item_display,tag=giant_base,limit=1] run function rusk_magic:objects/giant/animation/walk

## スコア
    execute if score #movie time1 matches 0.. run scoreboard players add #movie time1 1
    # title Rusk_Eocssar actionbar {"score":{"name": "#movie","objective": "time1"}}

## ループ
    # ループ
    execute if score #movie time1 matches 0.. run schedule function rusk_magic:movie/tick 1t
    # 終了
    execute if score #movie time1 matches 1200.. run function rusk_magic:movie/end