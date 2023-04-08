#> rusk_magic:movie/tick
### ムービーのフェーズ毎に常時実行

## 移動中 
    # 絨毯で移動
    execute if score #root time matches 0 run function rusk_magic:movie/1_init
    execute if score #root time matches 0.. as @e[type=silverfish,tag=carpet_base,limit=1] run function rusk_magic:movie/1_tick
    #　本を読む
    execute if score #root time matches 0 run function rusk_magic:movie/2_init
    execute if score #root time matches 0.. as @e[type=silverfish,tag=carpet_base,limit=1] run function rusk_magic:movie/2_tick
    # ドラゴンを見つける
    
    # 目的地を見つける

    # 本をしまう

    # 石板を取り出す

    # 目的地に降り立つ

    # 絨毯をしまう

## 遺跡
    # 石板をはめる

    # 扉が開く

    # 

## スコア
scoreboard players add #root time 1