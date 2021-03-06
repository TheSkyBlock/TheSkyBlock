### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function oh_my_dat:sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score $ OhMyDatID run data get storage oh_my_dat: id[-1]
execute store result score $ OhMyDat run data get storage oh_my_dat: id[0]
execute if score $ OhMyDatID matches 0 run scoreboard players set $ OhMyDatID 65536
scoreboard players operation $ OhMyDatID += $ OhMyDat
scoreboard players set $ OhMyDat 2
scoreboard players operation $ OhMyDatID /= $ OhMyDat

# 割り当てIDに追加
data modify storage oh_my_dat: id append value -1
execute store result storage oh_my_dat: id[-1] int 1 run scoreboard players get $ OhMyDatID
# 割り当てる
scoreboard players operation @s OhMyDatID = $ OhMyDatID