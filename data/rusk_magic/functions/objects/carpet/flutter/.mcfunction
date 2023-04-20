#> rusk_magic:carpet/flutter/
### 魔法の絨毯

## オブジェクトに対して実行
    # 絨毯のゆらゆら
    execute at @s on passengers if entity @s[tag=carpet] run function rusk_magic:objects/carpet/flutter/carpet
    # 乗ってる小物
    execute at @s on passengers if entity @s[tag=obj] run function rusk_magic:objects/carpet/flutter/obj