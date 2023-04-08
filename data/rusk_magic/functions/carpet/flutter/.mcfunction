#> rusk_magic:carpet/flutter/
### 魔法の絨毯

# ## 向きを同期
#     data modify entity @s Rotation set from entity @s Rotation
#     execute positioned as @s run tp @s ~ ~ ~ ~ 0

## オブジェクトに対して実行
    # 絨毯のゆらゆら
    execute on passengers if entity @s[tag=carpet] run function rusk_magic:carpet/flutter/carpet
    # 乗ってる小物
    execute on passengers if entity @s[tag=obj] run function rusk_magic:carpet/flutter/obj