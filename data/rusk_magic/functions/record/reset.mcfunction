#> rusk_magic:record/init
### リセット

## 
    function rusk_magic:movie/end
    schedule clear rusk_magic:record/carpet
    schedule clear rusk_magic:record/pegasus
    schedule clear rusk_magic:record/dragon

## プレイヤー
    tp @a 86 220 52

## スコア
    scoreboard players set #movie time1 0

## カーペット 
    scoreboard players set _ time1 0

## 絨毯の召喚
    execute positioned 86 209 52 rotated 0 0 run function rusk_magic:objects/carpet/set
    execute as @e[tag=magic_carpet] run data merge entity @s {Glowing:1b}
    # execute as @a run ride @s mount @e[tag=carpet_base,limit=1]
    # data modify storage _: saved_data merge value {carpet_motion:[],carpet_rotation:[]}

## ペガサスの召喚
    scoreboard players set #pegasus_main mode 1
    execute positioned 70 220 0 rotated 90 0 run function rusk_magic:objects/pegasus/summon
    execute as @e[tag=pegasus] run data merge entity @s {Glowing:1b}
    # execute as @a run ride @s mount @e[tag=pegasus_base,limit=1]
    # data modify storage _: saved_data merge value {pegasus_motion:[],pegasus_rotation:[]}

## ドラゴンの召喚
    execute positioned 71 215 -52 rotated 90 0 run function rusk_magic:objects/dragon/summon
    execute as @a run ride @s mount @e[tag=dragon_base,limit=1]
    data modify storage _: saved_data merge value {dragon_motion:[],dragon_rotation:[]}

    
## ストレージリセット
    data modify storage _: {} merge from storage _: saved_data