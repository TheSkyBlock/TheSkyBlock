#> asset:sacred_treasure/0017.harmful_books/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0017.harmful_books/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run function asset:sacred_treasure/0017.harmful_books/3.1.add_effect

playsound minecraft:entity.witch.ambient master @a[distance=..10] ~ ~ ~ 1 1.2