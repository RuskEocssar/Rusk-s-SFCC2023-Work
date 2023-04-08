#> rusk_magic:movie/2_init
### 本を読む 開始

## 本の設置
    # 召喚
    execute positioned 171 153 691 rotated 180 0 run function rusk_magic:book/set
    # ライド
    ride @e[tag=book_base,limit=1] mount @e[tag=carpet_base,limit=1]
    # スコア
    scoreboard players set @e[tag=book_base,limit=1] time 300
    scoreboard players set @e[tag=book_base,limit=1] mode 0