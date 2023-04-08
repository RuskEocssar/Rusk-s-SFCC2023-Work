#> rusk_magic:movie/1_tick
### 絨毯で移動 実行

## 絨毯を移動させる
    # モーション
    data modify entity @s Motion set from storage _: carpet_motion[-1]
    data remove storage _: carpet_motion[-1]
    # 向き
    data modify entity @s Rotation[0] set from storage _: carpet_rotation[-1]
    data remove storage _: carpet_rotation[-1]
    # ストップ
    execute unless data storage _: carpet_motion[-1] run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

## ゆらゆらさせる
    # カーペット
    execute at @s on passengers if entity @s[tag=carpet] run function rusk_magic:carpet/flutter/carpet
    # オブジェクト
    execute at @s on passengers if entity @s[tag=obj] run function rusk_magic:carpet/flutter/obj

## スタートのカウント
    # 
    execute if score #root time matches 240 run title @a actionbar {"text":"5"}
    execute if score #root time matches 260 run title @a actionbar {"text":"4"}
    execute if score #root time matches 280 run title @a actionbar {"text":"3"}
    execute if score #root time matches 300 run title @a actionbar {"text":"2"}
    execute if score #root time matches 320 run title @a actionbar {"text":""}