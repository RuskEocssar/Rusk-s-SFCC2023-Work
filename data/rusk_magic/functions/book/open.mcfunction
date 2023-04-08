#> rusk_magic:book/open
### 本を開く

## 初期設定
execute if score @s time matches 0 run scoreboard players set @s mode 0
execute if score @s time matches 0 on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:1,shadow_radius:0f}
## スコア
scoreboard players add @s time 1

## アニメーション
# 1
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book1     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[-0.065f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.015f, 0.330f, 0.270f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book2     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.065f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.015f, 0.330f, 0.270f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book3     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.250f, 0.530f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 1.571f},scale:[ 0.010f, 0.330f, 0.100f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 1.571f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book4     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[-0.031f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.060f, 0.310f, 0.250f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 1.571f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book5     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.031f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.060f, 0.310f, 0.250f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 1.571f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book6     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.001f, 0.310f, 0.250f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book7     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.001f, 0.310f, 0.250f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book8     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.250f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 0.000f},scale:[ 0.001f, 0.310f, 0.250f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}}}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book_text1] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.100f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 1.571f},scale:[ 0.050f, 0.050f, 1.000f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:1f}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book_text2] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.100f, 0.400f],left_rotation:{axis:[ 0.000f,-1.000f, 0.000f],angle: 1.571f},scale:[ 0.050f, 0.050f, 1.000f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:1f}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book_text3] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.100f, 0.400f],left_rotation:{axis:[ 0.000f, 1.000f, 0.000f],angle: 1.571f},scale:[ 0.050f, 0.050f, 1.000f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:1f}
execute if score @s time matches 1 on passengers run data merge entity @s[tag=book_text4] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.100f, 0.400f],left_rotation:{axis:[ 0.000f,-1.000f, 0.000f],angle: 1.571f},scale:[ 0.050f, 0.050f, 1.000f],right_rotation:{axis:[ 0.000f, 0.000f, 1.000f],angle: 0.000f}},shadow_radius:1f}
# 2
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book1     ] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[-0.141f, 1.213f, 0.520f],left_rotation:{axis:[ 0.237f, 0.961f, 0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book2     ] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.141f, 1.213f, 0.520f],left_rotation:{axis:[ 0.237f,-0.961f,-0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book3     ] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.000f, 1.196f, 0.574f],left_rotation:{axis:[ 0.148f, 0.998f, 0.148f],angle: 1.593f},scale:[ 0.010f, 0.330f, 0.075f]}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book4     ] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[-0.125f, 1.222f, 0.491f],left_rotation:{axis:[ 0.237f, 0.961f, 0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book5     ] {start_interpolation:0,interpolation_duration:3,transformation:{translation:[ 0.125f, 1.222f, 0.491f],left_rotation:{axis:[ 0.237f,-0.961f,-0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book6     ] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[-0.111f, 1.230f, 0.465f],left_rotation:{axis:[ 0.237f, 0.961f, 0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book7     ] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[ 0.111f, 1.230f, 0.465f],left_rotation:{axis:[ 0.237f,-0.961f,-0.145f],angle: 1.136f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book_text1] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[-0.110f, 1.087f, 0.420f],left_rotation:{axis:[ 0.036f, 0.988f, 0.149f],angle: 2.676f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book_text2] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[ 0.110f, 1.087f, 0.420f],left_rotation:{axis:[ 0.036f,-0.988f,-0.149f],angle: 2.676f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book8     ] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[ 0.102f, 1.235f, 0.450f],left_rotation:{axis:[ 0.279f,-0.949f,-0.144f],angle: 0.993f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book_text3] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[ 0.103f, 1.091f, 0.406f],left_rotation:{axis:[ 0.422f, 0.896f, 0.135f],angle: 0.688f}}}
execute if score @s time matches 2 on passengers run data merge entity @s[tag=book_text4] {start_interpolation:1,interpolation_duration:3,transformation:{translation:[ 0.101f, 1.092f, 0.404f],left_rotation:{axis:[ 0.048f,-0.988f,-0.149f],angle: 2.528f}}}
# 3
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book1     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.010f, 0.370f, 0.270f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book2     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.010f, 0.370f, 0.270f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book3     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.010f, 0.370f, 0.065f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book4     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.060f, 0.350f, 0.250f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book5     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.060f, 0.350f, 0.250f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book6     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.001f, 0.350f, 0.250f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book7     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.001f, 0.350f, 0.250f]}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book8     ] {start_interpolation:0,interpolation_duration:1,transformation:{scale:[ 0.001f, 0.350f, 0.250f]}}
# 4
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book8     ] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.000f, 1.250f, 0.400f],left_rotation:{axis:[ 1.000f, 0.000f, 0.000f],angle: 0.300f}}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book_text3] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[ 0.001f, 1.107f, 0.356f],left_rotation:{axis:[ 0.148f, 0.978f, 0.148f],angle: 1.593f}}}
execute if score @s time matches 6 on passengers run data merge entity @s[tag=book_text4] {start_interpolation:0,interpolation_duration:1,transformation:{translation:[-0.001f, 1.107f, 0.356f],left_rotation:{axis:[ 0.148f,-0.978f,-0.148f],angle: 1.593f}}}
# 5
execute if score @s time matches 7 on passengers run data merge entity @s[tag=book8     ] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.102f, 1.235f, 0.450f],left_rotation:{axis:[ 0.279f, 0.949f, 0.144f],angle: 0.993f}}}
execute if score @s time matches 7 on passengers run data merge entity @s[tag=book_text3] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.101f, 1.092f, 0.404f],left_rotation:{axis:[ 0.048f, 0.988f, 0.149f],angle: 2.528f}}}
execute if score @s time matches 7 on passengers run data merge entity @s[tag=book_text4] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[-0.103f, 1.092f, 0.406f],left_rotation:{axis:[-0.422f, 0.896f, 0.135f],angle: 5.595f}}}

# 
execute if score @s time matches 9.. run scoreboard players set @s time 300
