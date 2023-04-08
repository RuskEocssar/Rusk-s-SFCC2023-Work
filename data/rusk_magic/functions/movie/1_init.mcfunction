#> rusk_magic:movie/1_init
### 絨毯の移動 開始

## カーペットの設置
    # 召喚
    execute positioned 171 153 691 rotated 90 0 run function rusk_magic:carpet/set
    # プレイヤーをライド
    execute as @a run ride @s mount @e[tag=carpet_base,limit=1]