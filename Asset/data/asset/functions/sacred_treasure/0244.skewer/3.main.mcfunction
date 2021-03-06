#> asset:sacred_treasure/0244.skewer/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0244.skewer/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 神器give
    function asset:sacred_treasure/0245.skewered_meat/_.give

# 演出
    particle minecraft:crit ~ ~1 ~ 0.25 0.5 0.25 0.1 20 force
    particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.01 50 force
    playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.generic.eat master @a ~ ~ ~ 2 1