#> rusk_magic:record/carpet
### カーペットのモーションと向きの記録

## Motionを取得する
    # 取得
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:5}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.5 {UUID:[I;0,1,2,-242014806]}
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:4}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.4 {UUID:[I;0,1,2,-242014806]}
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:3}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.3 {UUID:[I;0,1,2,-242014806]}
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:2}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.2 {UUID:[I;0,1,2,-242014806]}
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:1}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.1 {UUID:[I;0,1,2,-242014806]}
    execute as Rusk_Eocssar if entity @s[nbt={SelectedItemSlot:0}] at @s positioned 0. 0. 0. run summon marker ^ ^ ^0.0 {UUID:[I;0,1,2,-242014806]}
    data modify entity @e[tag=carpet_base,limit=1] Motion set from entity 0-0-1-0-2f19325aa Pos
    # 保存
    data modify storage _: saved_data.carpet_motion prepend from entity 0-0-1-0-2f19325aa Pos
    # 後処理
    kill 0-0-1-0-2f19325aa

## 向きを取得する
    # 取得
    data modify entity @e[tag=carpet_base,limit=1] Rotation[0] set from entity Rusk_Eocssar Rotation[0]
    # 保存
    data modify storage _: saved_data.carpet_rotation prepend from entity Rusk_Eocssar Rotation[0]

## ループ
    # スコア
    scoreboard players add _ time 1
    title Rusk_Eocssar actionbar {"score":{"name": "_","objective": "time"}}
    # ループ
    schedule function rusk_magic:record/carpet 1t