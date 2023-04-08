#> rusk_magic:magic/move
### 移動する

# 動く
execute if score @s click_stick matches 1 run effect give @s levitation infinite 5 false
execute if score @s click_stick matches 1 run tp @e[type=turtle,tag=turtle] ~ -500 ~
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 run summon turtle ~ 255 ~ {Tags:[turtle],Size:0,DeathLootTable:"",Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19s,ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}]}
execute if score @s click_stick matches 1 rotated ~ 0 run tp @e[type=turtle,tag=turtle] ^ ^ ^-0.5

# 止まる
execute if score @s click_stick matches 2 run effect clear @s levitation
execute if score @s click_stick matches 2 run tp @e[type=turtle,tag=turtle] ~ -500 ~
execute if score @s click_stick matches 2 run scoreboard players set @s click_stick 0