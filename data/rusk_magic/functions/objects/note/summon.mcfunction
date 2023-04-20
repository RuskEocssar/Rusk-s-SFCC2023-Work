#> rusk_magic:objects/note/summon
### 召喚

## ベース
summon item_display ~ ~ ~ {Tags:[rusk_magic,note,note_base,temp_base]}

## テキスト
    data merge storage rusk_magic: {note:{text1:[],text2:"waiu3lrctiwauebrciuaywebgirucatwbeiurcaliwuerlcbiauweybrlicawyetbriawvrwvervawerncuatweuilrctbalwiuebraqbwuekybakuvqwyeitcliuawtbeiructaiwetrbcliuawt"}}

## パーツ
    # 体
    summon item_display ~ ~ ~ {Tags:[rusk_magic,note,temp,paper]     ,transformation:{translation:[ 0.30f, 0.80f, 0.75f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 1.571f},scale:[ 0.600f, 0.600f, 0.100f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:paper",Count:1b}}
    summon text_display ~ ~ ~ {Tags:[rusk_magic,note,temp,note_text] ,transformation:{translation:[ 0.22f, 0.81f, 0.70f],left_rotation:{axis:[ 0.360f, 0.660f, 0.660f],angle: 3.833f},scale:[ 0.085f, 0.085f, 0.085f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,text:'[{"nbt":"note.text1[]","storage":"rusk_magic:","separator":"","font":"alt","bold":true,"color":"#663333"},{"nbt":"note.text2","storage":"rusk_magic:","font":"alt","bold":true,"color":"#ffffff"}]',line_width:85,background:0,alignment:left}
    summon item_display ~ ~ ~ {Tags:[rusk_magic,note,temp,pen]       ,transformation:{translation:[ 0.20f, 0.85f, 0.85f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 1.500f},scale:[ 0.300f, 0.300f, 0.300f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:0f,shadow_strength:0f,item:{id:"minecraft:feather",Count:1b}}

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