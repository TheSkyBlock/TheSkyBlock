#> asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear
#
# エフェクトを消す処理
#
# @within function
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.main
#   asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear

# ここから先は神器側の効果の処理を書く

# 落下量を検知
    tag @a[tag=1d.EffectClear,scores={FallDistance=150..}] add 1d.Landing

# 落下を与える
    effect give @a[tag=1d.EffectClear,tag=!OnGround] levitation 1 130 true
    effect give @a[tag=1d.EffectClear,tag=!OnGround] slow_falling 1 10 true

# 着地時の処理
    effect clear @a[tag=1d.EffectClear,tag=OnGround] levitation
    execute as @a[tag=1d.EffectClear,tag=OnGround] run attribute @s minecraft:generic.knockback_resistance modifier remove 1-0-1-0-4d00000007
    # 着地時に周囲にダメージ与える
        execute as @a[tag=1d.EffectClear,tag=OnGround,tag=1d.Landing] at @s run function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.3.landing_attack

    tag @a[tag=1d.EffectClear,tag=OnGround] remove 1d.EffectClear


# 着地していない場合、次tickも実行
    execute if entity @a[tag=1d.EffectClear,limit=1] run schedule function asset:sacred_treasure/0077.swords_of_waterfall_climbing/3.1.effectclear 1t replace
