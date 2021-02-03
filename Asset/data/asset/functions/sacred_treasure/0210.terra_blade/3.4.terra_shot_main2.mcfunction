#> asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2
#
#
# テラブレードショットが飛んでいく際に使うfunction。緑色のビームだよ！
#
# @within function asset:sacred_treasure/0204.spelunker_shoes/_.give

# 移動とパーティクル
    execute if block ^ ^ ^0.5 #lib:no_collusion run tp @s ^ ^ ^0.5
    particle minecraft:dust 0 1 0.25 1 ~ ~ ~ 0 0 0 0 1
    particle minecraft:dust 0.75 1 0.75 1 ~ ~ ~ 0 0 0 0 1

# 正面が地形なら消滅
    execute unless block ^ ^ ^0.5 #lib:no_collusion run kill @s

# モブに接触
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!HurtEntity,dx=0] positioned ~0.5 ~0.5 ~0.5 run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!HurtEntity,dx=0] positioned ~0.5 ~0.5 ~0.5 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!HurtEntity,dx=0] at @s run function asset:sacred_treasure/0210.terra_blade/3.5.terra_shot_hit
