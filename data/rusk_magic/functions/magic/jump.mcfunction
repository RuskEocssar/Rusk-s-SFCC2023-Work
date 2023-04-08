#> rusk_magic:magic/jump
### プレイヤーをジャンプ
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s click_stick 1

# execute if score @s click_stick matches 1 run tp @s ~ 1000 ~
# execute if score @s click_stick matches 1 run tp @s ~ ~ ~
execute if score @s click_stick matches 1 run effect give @s levitation 1 30 true
execute if score @s click_stick matches 2 run effect clear @s

execute if score @s click_stick matches 1.. run scoreboard players add @s click_stick 1
scoreboard players set @s[scores={click_stick=3..}] click_stick 0