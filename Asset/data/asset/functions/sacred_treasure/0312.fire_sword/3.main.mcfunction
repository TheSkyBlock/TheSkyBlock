#> asset:sacred_treasure/0312.fire_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0312.fire_sword/2.check_condition
#> private
# @private
    #declare score_holder $RandomDamage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] at @s if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity at @s run particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.1 100
    playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 1 0.6

# ダメージ
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~2の追加ダメージ
          scoreboard players operation $RandomDamage Temporary %= $3 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 7
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run function lib:damage/

# リセット
    data remove storage lib: Argument
    scoreboard players reset $RandomDamage Temporary