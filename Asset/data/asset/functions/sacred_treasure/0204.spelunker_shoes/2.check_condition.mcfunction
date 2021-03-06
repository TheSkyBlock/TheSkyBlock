#> asset:sacred_treasure/0204.spelunker_shoes/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0204.spelunker_shoes/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/feet
# 他にアイテム等確認する場合はここに書く

# 落下距離が2マス未満の場合は処理しない
    execute if score @s FallDistance matches ..150 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0204.spelunker_shoes/3.main
