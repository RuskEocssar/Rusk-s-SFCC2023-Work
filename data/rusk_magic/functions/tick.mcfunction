#> rusk_magic:tick
### 常時実行

# 本
# execute as @a at @s if score @s click_stick matches 1.. run function rusk_magic:book/toggle
# execute as @e[type=item_display,tag=book_base,scores={time=1..99}] run function rusk_magic:book/open
# execute as @e[type=item_display,tag=book_base,scores={time=100..199}] run function rusk_magic:book/close
# execute as @e[type=item_display,tag=book_base,scores={time=200..299}] run function rusk_magic:book/turn