#> rusk_magic:load
### 初期設定

## スコアボード
scoreboard objectives add _ dummy
scoreboard objectives add time dummy
scoreboard objectives add mode dummy
scoreboard objectives add tls_x1 dummy
scoreboard objectives add tls_x2 dummy
scoreboard objectives add tls_y1 dummy
scoreboard objectives add tls_y2 dummy
scoreboard objectives add tls_z1 dummy
scoreboard objectives add tls_z2 dummy
scoreboard objectives add click_stick minecraft.used:minecraft.carrot_on_a_stick

## チャンク
forceload add 0 0
forceload add -1 0
forceload add 0 -1
forceload add -1 -1
forceload add 171 691

## チーム
team add nocol
team modify nocol collisionRule never

## 姿勢/アニメーションの設定
function rusk_magic:objects/book/load
function rusk_magic:objects/painting/load
function rusk_magic:objects/giant/load
function rusk_magic:objects/pegasus/load
function rusk_magic:objects/dragon/load
function rusk_magic:objects/stone_swardsman/load
function rusk_magic:objects/stone_wizard/load
function rusk_magic:objects/spirit_of_fire/load