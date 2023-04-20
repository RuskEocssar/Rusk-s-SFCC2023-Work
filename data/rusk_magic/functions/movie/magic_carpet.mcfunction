#> rusk_magic:movie/magic_carpet
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
    execute at @s on passengers if entity @s[tag=carpet] run function rusk_magic:objects/carpet/flutter/carpet
    function rusk_magic:objects/carpet/flutter/sound
    # オブジェクト
    execute at @s on passengers if entity @s[tag=obj] run function rusk_magic:objects/carpet/flutter/obj
    # 本
    execute at @s on passengers on passengers if entity @s[tag=book] positioned as @s run tp @s ~ ~ ~ ~90 0
    # 絵画
    execute at @s on passengers on passengers if entity @s[tag=painting] positioned as @s run tp @s ~ ~ ~ ~-90 0
    # 自動書記
    execute at @s on passengers on passengers if entity @s[tag=note] positioned as @s run tp @s ~ ~ ~ ~ 0

## サウンド