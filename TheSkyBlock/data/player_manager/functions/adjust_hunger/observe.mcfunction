#> player_manager:adjust_hunger/observe
#
# 満腹度を監視し、目標の値と同じならtagとエフェクトを削除します
#
# @within function core:tick

execute if score @s Hunger = @s HungerTarget run effect clear @s saturation
execute if score @s Hunger = @s HungerTarget run tag @s remove AdjustHunger