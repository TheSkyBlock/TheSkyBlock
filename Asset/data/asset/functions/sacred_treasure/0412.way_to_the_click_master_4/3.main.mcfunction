#> asset:sacred_treasure/0412.way_to_the_click_master_4/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0412.way_to_the_click_master_4/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く
    execute if data storage asset:context Items{mainhand:{tag:{TSB:{RemainingCount:1}}}} run function asset:sacred_treasure/0413.way_to_the_click_master_5/_.give
    #//@aに聞こえるのは仕様(A「うるせぇ！」 B「(´・ω・`)」みたいなのをやってほしい)
    playsound ui.button.click master @a ~ ~ ~ 1 1 1