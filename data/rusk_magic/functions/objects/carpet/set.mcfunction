#> rusk_magic:carpet/set
### 魔法のカーペットを設置

## カーペット用のディスプレイを召喚
    # ベース
    summon silverfish ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet_base,temp_base],PersistenceRequired:1b,Team:"nocol",Silent:1b,NoGravity:1b,DeathLootTable:"",DeathTime:19s,Invulnerable:1b,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
    # カーペット部分
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row0,temp],item:{id:"minecraft:orange_wool",Count:1b}, transformation:{translation:[-0.8f,0f,-1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row0,temp],item:{id:"minecraft:orange_wool",Count:1b}, transformation:{translation:[0f,0f,-1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row0,temp],item:{id:"minecraft:orange_wool",Count:1b}, transformation:{translation:[0.8f,0f,-1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row1,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,-0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row1,temp],item:{id:"minecraft:red_wool",Count:1b},transformation:{translation:[0f,0f,-0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row1,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,-0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row2,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,-0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row2,temp],item:{id:"minecraft:red_wool",Count:1b},transformation:{translation:[0f,0f,-0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row2,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,-0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row3,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,0f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row3,temp],item:{id:"minecraft:red_wool",Count:1b},transformation:{translation:[0f,0f,0f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row3,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,0f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row4,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row4,temp],item:{id:"minecraft:red_wool",Count:1b},transformation:{translation:[0f,0f,0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row4,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,0.4f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row5,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row5,temp],item:{id:"minecraft:red_wool",Count:1b},transformation:{translation:[0f,0f,0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row5,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,0.8f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row6,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[-0.8f,0f,1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row6,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0f,0f,1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,carpet,carpet_row6,temp],item:{id:"minecraft:orange_wool",Count:1b},transformation:{translation:[0.8f,0f,1.2f],scale:[0.8f,0.04f,0.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

## 小物たちを召喚
    # ブロックディスプレイ
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,bookshelf,01,temp],block_state:{Name:"chiseled_bookshelf",Properties:{slot_0_occupied:"true",slot_1_occupied:"true",slot_2_occupied:"true",slot_4_occupied:"true",slot_5_occupied:"true"}},transformation:{translation:[-1f,0.1f,0.6f],scale:[0.7f,0.7f,0.7f],left_rotation:{axis:[0f,1f,0f],angle:-0.3f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,lantern,08,temp],block_state:{Name:"lantern"},transformation:{translation:[-0.95f,0.8f,0.6f],scale:[0.7f,0.7f,0.7f],left_rotation:{axis:[0f,1f,0f],angle:0.1f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,chair,01,temp],block_state:{Name:"cyan_wool"},transformation:{translation:[-0.2f,0.1f,-0.5f],scale:[0.6f,0.1f,0.6f],left_rotation:{axis:[0f,1f,0f],angle:-0.5f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,enchanting_table,02,temp],block_state:{Name:"enchanting_table"},transformation:{translation:[0.5f,0.2f,0.7f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,1f,0f],angle:0.2f},right_rotation:{axis:[0.7f,0f,-0.7f],angle:0.35f}}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,lectern,01,temp],block_state:{Name:"lectern"},transformation:{translation:[0f,0.1f,0.5f],scale:[0.6f,0.6f,0.6f],left_rotation:{axis:[0f,1f,0f],angle:0.1f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,brewing_stand,02,temp],block_state:{Name:"brewing_stand",Properties:{has_bottle_0:"true",has_bottle_1:"true"}},transformation:{translation:[0f,0.2f,-1.4f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,1f,0f],angle:0.2f},right_rotation:{axis:[0f,0f,1f],angle:1.75f}}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,cauldron,01,temp],block_state:{Name:"cauldron"},transformation:{translation:[0.3f,0.1f,-1.3f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,1f,0f],angle:-0.5f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,respawn_anchor,08,temp],block_state:{Name:"respawn_anchor"},transformation:{translation:[-1.05f,0.8f,0.9f],scale:[0.2f,0.2f,0.2f],left_rotation:{axis:[0f,1f,0f],angle:-0.2f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,beacon,04,temp],block_state:{Name:"beacon"},transformation:{translation:[-1.2f,0.4f,-0.9f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,-1f,1f],angle:-0.57f},right_rotation:[0f,0f,0f,1f]}}
        summon block_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,composter,01,temp],block_state:{Name:"composter"},transformation:{translation:[0.4f,0.1f,0f],scale:[0.6f,0.3f,0.6f],left_rotation:{axis:[0f,1f,0f],angle:0.7f},right_rotation:[0f,0f,0f,1f]}}
    # アイテムディスプレイ
        # 瓶
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,ex_bottle,05,temp],item:{id:"experience_bottle",Count:1b},transformation:{translation:[0.4f,0.5f,-1f],scale:[0.55f,0.55f,0.55f],left_rotation:{axis:[0.55f,0.55f,0.55f],angle:-0.5f},right_rotation:[0f,0f,0f,1f]}}
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,glass_bottle,03,temp],item:{id:"glass_bottle",Count:1b},transformation:{translation:[-0.1f,0.3f,-0.9f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0.55f,0.55f,0f],angle:-1.3f},right_rotation:[0f,0f,0f,1f]}}
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,potion1,02,temp],item:{id:"potion",Count:1b},transformation:{translation:[-0.3f,0.2f,-0.65f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,1f,0f],angle:-1.3f},right_rotation:{axis:[1f,0f,0f],angle:1.57f}}}
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,potion2,03,temp],item:{id:"potion",Count:1b},transformation:{translation:[-0.4f,0.3f,-0.85f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[-0.55f,0.55f,0f],angle:1.175f},right_rotation:[0f,0f,0f,1f]}}
        # 骸骨
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,skeleton_skull,03,temp],item:{id:"skeleton_skull",Count:1b},transformation:{translation:[0.6f,0.3f,-0.6f],scale:[0.5f,0.5f,0.5f],left_rotation:{axis:[0f,1f,0f],angle:0.4f},right_rotation:{axis:[1f,0f,0f],angle:-1.57f}}}
        summon item_display ~ ~ ~ {Tags:[rusk_magic,magic_carpet,obj,wither_skeleton_skull,04,temp],item:{id:"wither_skeleton_skull",Count:1b},transformation:{translation:[1f,0.4f,-0.6f],scale:[0.55f,0.55f,0.55f],left_rotation:{axis:[0f,1f,0f],angle:0.1f},right_rotation:[0f,0f,0f,1f]}}

## エンティティ達の初期設定
    # スコア
    scoreboard players set @e[tag=temp_base] time1 -1
    scoreboard players set @e[tag=temp_base] time2 -1
    # 向き
    execute as @e[tag=temp_base] run tp @s ~ ~ ~ ~ ~
    execute as @e[tag=temp] run tp @s ~ ~ ~ ~ ~
    # ライド
    execute as @e[tag=temp] run ride @s mount @e[tag=temp_base,limit=1]
    # スコア初期設定
    execute as @e[tag=temp_base] run function rusk_magic:objects/carpet/flutter/score
    # タグ削除
    tag @e[tag=temp] remove temp
    tag @e[tag=temp_base] remove temp_base