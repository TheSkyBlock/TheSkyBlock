#> asset:sacred_treasure/0078.self_destruct_order/count_down
#
#
#
# @within function
#    asset:sacred_treasure/0078.self_destruct_order/3.main
#    asset:sacred_treasure/0078.self_destruct_order/count_down

scoreboard players add @a[tag=1e.Owner] 1e.TickCount 1

# 3秒数後実行
    execute as @a[tag=1e.Owner,scores={1e.TickCount=60..}] run function asset:sacred_treasure/0078.self_destruct_order/explosion

# 再起処理
    execute if entity @a[tag=1e.Owner, limit=1] run schedule function asset:sacred_treasure/0078.self_destruct_order/count_down 1t