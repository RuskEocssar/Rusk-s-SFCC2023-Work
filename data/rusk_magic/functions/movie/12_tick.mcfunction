#> rusk_magic:movie/12_tick
### 本を読む 実行

## 本をアニメーション
    # 開く
    execute if score #02 time matches 0 on passengers if entity @s[tag=book_base] run scoreboard players set @s time 0
    execute on passengers if entity @s[tag=book_base,scores={time=0..99}] run function rusk_magic:book/open
    # ゆらゆら
    execute on passengers if entity @s[tag=book_base,scores={time=300..399}] run function rusk_magic:book/flutter
    # ページめくり
    execute if score #02 time matches 400 on passengers if entity @s[tag=book_base] run scoreboard players set @s mode 1
    execute on passengers if entity @s[tag=book_base,scores={time=100..199}] run function rusk_magic:book/turn

## タイマー
    scoreboard players add #02 time 1