#> rusk_magic:objects/book/pose
### ポーズを反映

execute if score #book mode matches -1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.test
execute if score #book mode matches 0 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.closed
execute if score #book mode matches 1 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.opened

## ふわふわ
execute if score #book mode matches 301 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.fluffy[0]
execute if score #book mode matches 302 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.fluffy[1]

## ぱらぱら
execute if score #book mode matches 401 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[0]
execute if score #book mode matches 402 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[1]
execute if score #book mode matches 403 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[2]
execute if score #book mode matches 404 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[3]
execute if score #book mode matches 405 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[4]
execute if score #book mode matches 406 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[5]
execute if score #book mode matches 407 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[6]
execute if score #book mode matches 408 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[7]
execute if score #book mode matches 409 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[8]
execute if score #book mode matches 410 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[9]
execute if score #book mode matches 411 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[10]
execute if score #book mode matches 412 run data modify storage rusk_magic: _ set from storage rusk_magic: objects.book.flip_through[11]

execute on passengers run function rusk_magic:pose_apply