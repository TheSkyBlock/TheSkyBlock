#> asset:sacred_treasure/0210.terra_blade/3.2.terra_shot_init
#
# テラショット発射直後の動作。向きを発射者に揃えて、発射者の目線の高さに移動
#
# @within function asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick

    execute at @p run tp @s ~ ~ ~ ~ ~
    execute as @p at @s anchored eyes run tp @e[type=armor_stand,tag=ChuzTerraShotInit] ^ ^ ^
    tag @s remove ChuzTerraShotInit
    tag @s add ChuzTerraShot