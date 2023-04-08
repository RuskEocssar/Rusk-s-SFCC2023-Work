#> rusk_magic:carpet/move
### カーペットの移動

## Motionを取得する
execute positioned 0. 0. 0. run summon marker ^ ^ ^0.5 {UUID:[I;0,1,2,-242014806]}
data modify entity @s Motion set from entity 0-0-1-0-2f19325aa Pos
kill 0-0-1-0-2f19325aa