#> rusk_magic:book/turn
### ページをめくる

execute if score @s mode matches 1 run scoreboard players set @s time 100
execute if score @s mode matches 1 run scoreboard players set @s mode 2

# スコア
scoreboard players add @s time 1

## アニメーション
# 0
execute if score @s time matches 101 on passengers if entity @s[tag=book8     ] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{translation:[-0.102f, 1.085f, 0.450f],left_rotation:{axis:[ 0.279f, 0.949f, 0.144f],angle: 0.993f}}}
execute if score @s time matches 101 on passengers if entity @s[tag=book_text3] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{translation:[-0.101f, 0.942f, 0.404f],left_rotation:{axis:[ 0.048f, 0.988f, 0.149f],angle: 2.528f}}}
execute if score @s time matches 101 on passengers if entity @s[tag=book_text4] run data merge entity @s {start_interpolation:0,interpolation_duration:0,transformation:{translation:[-0.103f, 0.942f, 0.406f],left_rotation:{axis:[-0.422f, 0.896f, 0.135f],angle: 5.595f}}}
# 1
execute if score @s time matches 102 on passengers if entity @s[tag=book8     ] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.060f, 1.096f, 0.414f],left_rotation:{axis:[ 0.505f, 0.853f, 0.129f],angle: 0.581f}}}
execute if score @s time matches 102 on passengers if entity @s[tag=book_text3] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.059f, 0.953f, 0.369f],left_rotation:{axis:[ 0.088f, 0.985f, 0.149f],angle: 2.084f}}}
execute if score @s time matches 102 on passengers if entity @s[tag=book_text4] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.061f, 0.952f, 0.371f],left_rotation:{axis:[ 0.244f,-0.959f,-0.145f],angle: 1.108f}}}
# 2
execute if score @s time matches 104 on passengers if entity @s[tag=book8     ] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.100f, 0.400f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.300f}}}
execute if score @s time matches 104 on passengers if entity @s[tag=book_text3] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.001f, 0.957f, 0.356f],left_rotation:{axis:[ 0.148f, 0.978f, 0.148f],angle: 1.593f}}}
execute if score @s time matches 104 on passengers if entity @s[tag=book_text4] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{translation:[-0.001f, 0.957f, 0.356f],left_rotation:{axis:[ 0.148f,-0.978f,-0.148f],angle: 1.593f}}}
# 3
execute if score @s time matches 105 on passengers if entity @s[tag=book8     ] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[ 0.060f, 1.096f, 0.414f],left_rotation:{axis:[ 0.505f,-0.853f,-0.129f],angle: 0.581f}}}
execute if score @s time matches 105 on passengers if entity @s[tag=book_text3] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[ 0.059f, 0.953f, 0.369f],left_rotation:{axis:[ 0.244f, 0.959f, 0.145f],angle: 1.108f}}}
execute if score @s time matches 105 on passengers if entity @s[tag=book_text4] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[ 0.061f, 0.952f, 0.371f],left_rotation:{axis:[ 0.088f,-0.985f,-0.149f],angle: 2.084f}}}
# 4
execute if score @s time matches 107 on passengers if entity @s[tag=book8     ] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.102f, 1.085f, 0.450f],left_rotation:{axis:[ 0.279f,-0.949f,-0.144f],angle: 0.993f}}}
execute if score @s time matches 107 on passengers if entity @s[tag=book_text3] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.103f, 0.941f, 0.406f],left_rotation:{axis:[ 0.422f, 0.896f, 0.135f],angle: 0.688f}}}
execute if score @s time matches 107 on passengers if entity @s[tag=book_text4] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.101f, 0.942f, 0.404f],left_rotation:{axis:[ 0.048f,-0.988f,-0.149f],angle: 2.528f}}}
## 
execute if score @s time matches 112.. run scoreboard players set @s time 301