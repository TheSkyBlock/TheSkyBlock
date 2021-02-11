#> asset:sacred_treasure/0409.way_to_the_click_master_1/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:409} run function asset:sacred_treasure/0409.way_to_the_click_master_1/2.check_condition