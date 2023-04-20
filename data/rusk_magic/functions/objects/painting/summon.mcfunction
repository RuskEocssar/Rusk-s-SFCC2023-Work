#> rusk_magic:objects/painting/summon
### 動く絵画の召喚

## ベース
summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,painting_base,temp_base]}

## パーツ
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,right_frame],transformation:{translation:[-0.440f, 0.000f, 0.000f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.080f, 1.160f, 0.080f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,left_frame] ,transformation:{translation:[ 0.440f, 0.000f, 0.000f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.080f, 1.160f, 0.080f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,up_frame]   ,transformation:{translation:[ 0.000f, 0.540f, 0.000f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.800f, 0.080f, 0.080f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,down_frame] ,transformation:{translation:[ 0.000f,-0.540f, 0.000f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.800f, 0.080f, 0.080f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:stripped_spruce_wood",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,background] ,transformation:{translation:[ 0.000f, 0.000f,-0.020f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.800f, 1.000f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:light_blue_concrete",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,head]      ,transformation:{translation:[ 0.000f, 0.150f, 0.000f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.400f, 0.500f, 0.400f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:white_terracotta",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,nose]      ,transformation:{translation:[ 0.000f,-0.050f, 0.250f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.100f, 0.200f, 0.100f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:light_gray_terracotta",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,eyebrows]  ,transformation:{translation:[ 0.000f, 0.125f, 0.201f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.300f, 0.050f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:gray_terracotta",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,right_eye1],transformation:{translation:[-0.100f, 0.075f, 0.201f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.100f, 0.050f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:white_concrete",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,right_eye2],transformation:{translation:[-0.075f, 0.075f, 0.202f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.050f, 0.050f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:green_concrete",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,left_eye1] ,transformation:{translation:[ 0.100f, 0.075f, 0.201f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.100f, 0.050f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:white_concrete",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,left_eye2] ,transformation:{translation:[ 0.075f, 0.075f, 0.202f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.050f, 0.050f, 0.001f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:green_concrete",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,body]      ,transformation:{translation:[ 0.000f,-0.300f, 0.000f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.000f},scale:[ 0.450f, 0.450f, 0.350f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:gray_wool",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,right_arm] ,transformation:{translation:[-0.300f,-0.325f, 0.125f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle:-0.785f},scale:[ 0.200f, 0.400f, 0.200f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:brown_wool",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,left_arm]  ,transformation:{translation:[ 0.300f,-0.325f, 0.125f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle:-0.785f},scale:[ 0.200f, 0.400f, 0.200f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:brown_wool",Count:1b}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,painting,temp,wrist]     ,transformation:{translation:[ 0.000f,-0.395f, 0.195f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle:-0.785f},scale:[ 0.400f, 0.200f, 0.200f],right_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:brown_wool",Count:1b}}

## エンティティの設定
    # スコア
    scoreboard players set @e[tag=temp_base] time1 -1
    # 向き
    execute as @e[tag=temp_base] run tp @s ~ ~ ~ ~ ~
    execute as @e[tag=temp] run tp @s ~ ~ ~ ~ ~
    # ライド
    execute as @e[tag=temp] run ride @s mount @e[tag=temp_base,limit=1]
    # タグ削除
    tag @e[tag=temp] remove temp
    tag @e[tag=temp_base] remove temp_base