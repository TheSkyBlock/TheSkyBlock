#> asset_manager:sacred_treasure/core/check/
#
# 実行可能かどうかのチェックを行う
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output tag @s CanUsed
# @within function asset:sacred_treasure/lib/check_condition/*

#> Private
# @private
    #declare score_holder $Temp

# 対象スロットのデータの取得
    function asset_manager:sacred_treasure/core/data/get_data_from_slot
# 事前にtag付与
    tag @s add CanUsed
# 条件を満たしてなかったらtag削除
    # MP必要量による制限
        function asset_manager:sacred_treasure/core/check/check_mp
        execute if entity @s[tag=CheckFailed] run tellraw @s {"text":"MPが足りない！","color":"red"}
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # 信仰による制限
        function asset_manager:sacred_treasure/core/check/check_believe
        execute if entity @s[tag=CheckFailed] run tellraw @s {"text":"現在の信仰では使えないようだ...","color":"red"}
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # LocalCooldownによる制限
        function asset_manager:sacred_treasure/core/check/check_local_cooldown
        execute if entity @s[tag=CheckFailed] run tellraw @s {"text":"クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
    # SpecialCooldownによる制限
        function asset_manager:sacred_treasure/core/check/check_special_cooldown
        execute if entity @s[tag=CheckFailed] run tellraw @s {"text":"特殊クールダウンが終わっていません。","color":"red"}
        execute if entity @s[tag=CheckFailed] run tag @s remove CanUsed
        tag @s[tag=CheckFailed] remove CheckFailed
# リセット
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure Item