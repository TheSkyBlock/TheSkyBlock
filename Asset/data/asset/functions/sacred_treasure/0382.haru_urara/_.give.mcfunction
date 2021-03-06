#> asset:sacred_treasure/0382.haru_urara/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 382
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value golden_axe
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"ハルウララ","color":"light_purple","italic":true,"bold":true}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"風情ある桜が描かれた扇"}]','[{"text":"一振りで"},{"text":"春の風","color":"light_purple","italic":true},{"text":"が巻き起こる。"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onAttackByMelee"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 (オプション)
    data modify storage asset:sacred_treasure AttackInfo set value {Damage:60,AttackType:[Magic],ElementType:[None],BypassResist:0b}
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 30
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Nyaptov,Rumor]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1,1,382,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1,1,382,1],Slot:"mainhand"}]}

# 神器の入手用function
    function asset:sacred_treasure/lib/give