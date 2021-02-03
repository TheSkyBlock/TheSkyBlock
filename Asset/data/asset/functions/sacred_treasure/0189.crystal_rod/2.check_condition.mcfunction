#> asset:sacred_treasure/0189.crystal_rod/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0189.crystal_rod/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0189.crystal_rod/3.main