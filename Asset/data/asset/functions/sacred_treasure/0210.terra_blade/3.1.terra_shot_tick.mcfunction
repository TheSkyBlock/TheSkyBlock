#> asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick
#
# テラブレードショットにコマンドを実行するためのfunction。scheduleで自身を呼び出して再帰するよ！
#
# @within function
#   asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick
#   asset:sacred_treasure/0210.terra_blade/3.main

# テラショットにInitコマンド実行
    execute as @e[type=armor_stand,tag=ChuzTerraShotInit] at @s run function asset:sacred_treasure/0210.terra_blade/3.2.terra_shot_init

# テラショットにコマンド実行
    execute as @e[type=armor_stand,tag=ChuzTerraShot] at @s run function asset:sacred_treasure/0210.terra_blade/3.3.terra_shot_main

# ビームが存在していれば、このfunctionをループさせるよ
    execute if entity @e[type=armor_stand,tag=ChuzTerraShot] run schedule function asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick 1t append