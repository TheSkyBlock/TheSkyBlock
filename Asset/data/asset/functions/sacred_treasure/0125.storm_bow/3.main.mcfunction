#> asset:sacred_treasure/0125.storm_bow/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0125.storm_bow/2.check_condition
#> private
# @private
    #declare tag ArrowTarget

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 不発処理
    execute unless entity @e[type=#lib:living,type=!player,distance=..30,limit=1] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2
    execute unless entity @e[type=#lib:living,type=!player,distance=..30,limit=1] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 30

# 成功時の処理
    execute if entity @e[type=#lib:living,type=!player,distance=..30,limit=1] run clear @s minecraft:arrow 5
    execute if entity @e[type=#lib:living,type=!player,distance=..30,limit=1] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1

# 矢を降らす
    tag @e[type=#lib:living,type=!player,distance=..30,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run summon arrow ~-0.4 ~7 ~ {pickup:1b,damage:3d,crit:1b,Motion:[0.2,-1.0,0.0]}
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run particle minecraft:cloud ~-0.4 ~7 ~ 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 2回目
    tag @e[type=#lib:living,type=!player,distance=..30,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run summon arrow ~ ~6 ~1 {pickup:1b,damage:3d,crit:1b,Motion:[0.0,-1.0,-0.3]}
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run particle minecraft:cloud ~ ~6 ~1 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 3回目
    tag @e[type=#lib:living,type=!player,distance=..30,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run summon arrow ~ ~6 ~1 {pickup:1b,damage:3d,crit:1b,Motion:[0.0,-1.0,-0.3]}
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run particle minecraft:cloud ~ ~6 ~1 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 4回目
    tag @e[type=#lib:living,type=!player,distance=..30,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run summon arrow ~0.4 ~4 ~1.6 {pickup:1b,damage:3d,crit:1b,Motion:[-0.2,-1.0,-0.8]}
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run particle minecraft:cloud ~0.4 ~4 ~1.6 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 5回目
    tag @e[type=#lib:living,type=!player,distance=..30,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run summon arrow ~0.4 ~7 ~ {pickup:1b,damage:3d,crit:1b,Motion:[-0.2,-1.0,0.0]}
    execute at @e[type=#lib:living,tag=ArrowTarget,distance=..30,limit=1] run particle minecraft:cloud ~0.4 ~7 ~ 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget
