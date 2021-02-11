#> asset:sacred_treasure/0412.way_to_the_click_master_4/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:412} run function asset:sacred_treasure/0412.way_to_the_click_master_4/2.check_condition