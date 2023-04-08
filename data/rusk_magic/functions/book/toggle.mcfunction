#> rusk_magic:book/toggle
### 開いたり閉じたり

# 開く
execute if score @s click_stick matches 1 as @e[tag=book_base] run scoreboard players set @s time 0
execute as @e[tag=book_base,scores={time=0..99}] run function rusk_magic:book/open
scoreboard players set @s[scores={click_stick=1}] click_stick 2

# ゆらゆら
execute as @e[tag=book_base,scores={time=300..399}] run function rusk_magic:book/flutter

# めくる
execute if score @s click_stick matches 3 as @e[tag=book_base] run scoreboard players set @s mode 1
execute as @e[tag=book_base,scores={time=100..199}] run function rusk_magic:book/turn
scoreboard players set @s[scores={click_stick=3}] click_stick 4

# 閉じる
execute if score @s click_stick matches 5 as @e[tag=book_base] run scoreboard players set @s time 200
execute as @e[tag=book_base,scores={time=200..299}] run function rusk_magic:book/close
scoreboard players set @s[scores={click_stick=5..}] click_stick 0
