#> asset:sacred_treasure/0364.red_knights_sword/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0365.bloodthirsty_sword/3.main

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 364
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"赤い騎士の剣","color":"dark_red","bold":true,"italic":true}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['{"text":"渇きは収まることを知らない。","color":"dark_red"}','[{"text":"血の欲望は","color":"dark_red"},{"text":"貴方","color":"dark_red","underlined":true},{"text":"の身体まで求める。","color":"dark_red"}]','{"text":"壊れたとしても血を与えれば再生する。","color":"dark_red","underlined":true}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 13
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onAttackByMelee"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 (オプション)
    data modify storage asset:sacred_treasure AttackInfo set value {Damage:90,AttackType:[Physical],ElementType:[None],BypassResist:0b}
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Wi-ki]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {}

# 神器の入手用function
    function asset:sacred_treasure/lib/give