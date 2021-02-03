#> asset:sacred_treasure/0125.storm_bow/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0125.storm_bow/1.trigger
#> Private
# @private
    #declare score_holder $ArrowCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 矢を持ってるかチェック
        execute store result score $ArrowCount Temporary run clear @s arrow 0
        execute if score $ArrowCount Temporary matches ..5 run tag @s remove CanUsed
        execute if score $ArrowCount Temporary matches ..5 run function lib:message/sacred_treasure/dont_have_require_items
        scoreboard players reset $ArrowCount Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0125.storm_bow/3.main