#> rusk_magic:objects/note/text_add
### 文字を増やしていく

## 文字を消そうとする
    data modify storage rusk_magic: note.text1 append string storage rusk_magic: note.text2 0 1
    data modify storage rusk_magic: note.text2 set string storage rusk_magic: note.text2 1

## テキストを反映
data modify entity @e[type=text_display,tag=note_text,limit=1] text set value '[{"nbt":"note.text1[]","storage":"rusk_magic:","separator":"","font":"alt","bold":true,"color":"#663333"},{"nbt":"note.text2","storage":"rusk_magic:","font":"alt","bold":true,"color":"#ffffff"}]'