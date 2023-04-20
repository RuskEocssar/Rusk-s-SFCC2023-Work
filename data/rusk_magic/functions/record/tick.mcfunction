#> rusk_magic:record/tick
### ムービーのフェーズ毎に常時実行


## 魔法の絨毯
    execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=carpet_base,limit=1] run function rusk_magic:movie/magic_carpet

## ペガサス
    # 主役
    execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=pegasus_base,limit=1] run function rusk_magic:movie/pegasus_main

## ドラゴン
    # 近づく
    # execute if score #movie time1 matches 0.. as @e[type=silverfish,tag=dragon_base,limit=1] run function rusk_magic:movie/dragon


## スコア
    execute if score #movie time1 matches 0.. run scoreboard players add #movie time1 1
    title Rusk_Eocssar actionbar {"score":{"name": "#movie","objective": "time1"}}

## ループ
    # 終了
    execute if score #movie time1 matches 1200.. run function rusk_magic:movie/end