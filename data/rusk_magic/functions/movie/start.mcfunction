#> rusk_magic:movie/start
### 開始

## プレイヤー
    tp @a 86 133 52 90 20

## エンティティ
    kill @e[tag=rusk_magic]

## ストレージリセット
    data modify storage _: {} merge from storage _: saved_data
    # data
    # -carpet_motion
    # -carpet_rotation
    # -dragon_motion
    # -dragon_rotation

## スコア
    scoreboard players set #movie time1 0

## チャンク
    forceload add 86 52

## 魔法の絨毯
    ## カーペットの設置
        # 召喚
        function rusk_magic:objects/carpet/set
        # プレイヤーをライド
        execute as @a run ride @s mount @e[tag=carpet_base,limit=1]

    ## 本の設置
        # 召喚
        function rusk_magic:objects/book/summon
        ride @e[tag=book_base,limit=1] mount @e[tag=carpet_base,limit=1]

    ## 絵画の設置
        # 召喚
        function rusk_magic:objects/painting/summon
        ride @e[tag=painting_base,limit=1] mount @e[tag=carpet_base,limit=1]
        
    ## 自動書記
        # 召喚
        function rusk_magic:objects/note/summon
        ride @e[tag=note_base,limit=1] mount @e[tag=carpet_base,limit=1]

    tp @e[tag=carpet_base] 86 209 52 0 0

## ペガサスの召喚
    scoreboard players set #pegasus _ 0
    # 主役を召喚
    scoreboard players set #pegasus_main mode 1
    function rusk_magic:objects/pegasus/summon
    tp @e[tag=pegasus_base] 70 220 0 90 0
    
    # 脇役を召喚 ランダムにタイム付与
    scoreboard players set #pegasus_main mode 0
    execute positioned 44 244 25 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 40 264 29 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 25 257 13 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 33 273 29 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 53 274 43 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 36 259 46 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 15 251 51 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 32 267 55 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 15 273 59 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 56 259 61 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 36 262 77 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 21 244 80 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 11 245 62 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 49 238 80 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 27 261 101 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 42 247 102 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 27 277 88 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 29 238 98 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 0 254 92 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute positioned 9 288 114 rotated 90 0 run function rusk_magic:objects/pegasus/summon

## ドラゴンの召喚
    function rusk_magic:objects/dragon/summon
    tp @e[tag=dragon_base] 71 215 -52 90 0

## 巨人の召喚
    function rusk_magic:objects/giant/summon
    tp @e[tag=giant_base] 201 160 760 90 0

## 開始
    function rusk_magic:movie/tick