#> rusk_magic:movie/tick
### ムービーのフェーズ毎に常時実行

## 移動中 
    # 絨毯
    execute if score #root time matches 0 run function rusk_magic:movie/10_init
    # 魔法の絨毯
    execute if score #root time matches 0.. as @e[type=silverfish,tag=carpet_base,limit=1] run function rusk_magic:movie/11_tick
    # 本
    execute if score #root time matches 0.. as @e[type=item_display,tag=book_base,limit=1] run function rusk_magic:movie/12_tick
    # 動く絵画
    execute if score #root time matches 0.. as @e[type=item_display,tag=painting_base,limit=1] run function rusk_magic:movie/13_tick
    # 自動書記
    execute if score #root time matches 0.. as @e[type=item_display,tag=note_base,limit=1] run function rusk_magic:movie/14_tick

    # ペガサス
    execute if score #root time matches 0 run function rusk_magic:movie/20_init
    # 主役
    execute if score #root time matches 0.. as @e[type=item_display,tag=pegasus_main,limit=1] run function rusk_magic:movie/21_tick
    # 脇役
    execute if score #root time matches 0.. as @e[type=item_display,tag=pegasus_other,limit=1] run function rusk_magic:movie/22_tick
    
    # ドラゴン
    execute if score #root time matches 0 run function rusk_magic:movie/30_init
    execute if score #root time matches 0.. as @e[type=item_display,tag=dragon_base,limit=1] run function rusk_magic:movie/31_tick

    # 巨人
    execute if score #root time matches 0 run function rusk_magic:movie/40_init
    execute if score #root time matches 0.. as @e[type=item_display,tag=giant_base,limit=1] run function rusk_magic:movie/41_tick


## スコア
scoreboard players add #root time 1