#> asset:sacred_treasure/0414.medal_of_the_click_master/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0414.medal_of_the_click_master/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出(相手生存時のみ)
    execute at @e[type=#lib:living,type=!player,tag=HurtEntity,distance=..10,limit=1] run particle crit ~ ~0.25 ~ 0.3 0.5 0.3 0 15 force @a[distance=..30]