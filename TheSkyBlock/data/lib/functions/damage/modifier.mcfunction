#> lib:damage/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @input
#   as entity
#   storage lib:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.DisableParticle? : boolean
#       Argument.BypassArmor? : boolean
#       Argument.BypassResist? : boolean
# @output storage lib: Argument.Damage : float
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Damage at lib:damage/modifier"}}}]
    execute unless data storage lib: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument AttackType at lib:damage/modifier"}}}]
    execute unless data storage lib: Argument.ElementType run data modify storage lib: Argument.ElementType set value "None"
# 補正
    execute if entity @s[type=player] run function lib:damage/core/modifier