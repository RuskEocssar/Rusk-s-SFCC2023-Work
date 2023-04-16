#> rusk_magic:movie/10_init
### 絨毯の移動 開始

## カーペットの設置
    # 召喚
    execute positioned 86 133 52 rotated 0 0 run function rusk_magic:objects/carpet/set
    # プレイヤーをライド
    execute as @a run ride @s mount @e[tag=carpet_base,limit=1]

## 本の設置
    # 召喚
    execute positioned 86 133 52 rotated 180 0 run function rusk_magic:objects/book/summon
    # ライド
    ride @e[tag=book_base,limit=1] mount @e[tag=carpet_base,limit=1]
    # スコア
    scoreboard players set @e[tag=book_base,limit=1] time 300
    scoreboard players set @e[tag=book_base,limit=1] mode 0

## 絵画の設置
    # 召喚
    execute positioned 86 133 52 rotated 180 0 run function rusk_magic:objects/painting/summon
    # ライド
    ride @e[tag=painting_base,limit=1] mount @e[tag=carpet_base,limit=1]
    # スコア
    scoreboard players set @e[tag=painting_base,limit=1] time 300
    scoreboard players set @e[tag=painting_base,limit=1] mode 0
    
## 自動書記
    # 召喚
    execute positioned 86 133 52 rotated 180 0 run function rusk_magic:objects/notes/summon
    # ライド
    ride @e[tag=notes_base,limit=1] mount @e[tag=carpet_base,limit=1]
    # スコア
    scoreboard players set @e[tag=notes_base,limit=1] time 300
    scoreboard players set @e[tag=notes_base,limit=1] mode 0