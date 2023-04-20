#> rusk_magic:movie/end
### 終了

## エンティティ
kill @e[tag=rusk_magic]

## ストレージリセット
data modify storage _: {} merge from storage _: saved_data
    # data
    # -carpet_motion
    # -carpet_rotation
    # -dragon_motion
    # -dragon_rotation

## スコア
scoreboard players set #movie time1 -1

## ループの終了
schedule clear rusk_magic:movie/tick

## 
tp @a 0 -9 0 -90 0
stopsound @a * minecraft:item.elytra.flying