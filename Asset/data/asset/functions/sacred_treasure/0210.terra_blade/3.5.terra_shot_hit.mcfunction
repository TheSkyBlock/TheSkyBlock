#> asset:sacred_treasure/0210.terra_blade/3.5.terra_shot_hit
#
# モブにヒットした際の処理だよ ノックバックは…どうしよう。
#
# @within function asset:sacred_treasure/0210.terra_blade/3.4.terra_shot_main2

# 魔法、無属性のダメージをぶちかます
    tag @s add HurtEntity
    data modify storage lib: Argument.Damage set value 6.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/