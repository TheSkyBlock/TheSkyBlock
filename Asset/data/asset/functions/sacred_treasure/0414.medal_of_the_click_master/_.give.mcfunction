#> asset:sacred_treasure/0414.medal_of_the_click_master/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0413.way_to_the_click_master_5/3.main

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 414
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:prismarine_shard"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"連打王の勲章","color":"green"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"先の見えない連打を潜り抜けた者に与えられる勲章"}]','[{"text":"圧倒的な力を感じる"}]','[{"text":"しかしその力の反面、あまりの過酷な道のりにより"}]','[{"text":"辿り着いた者はいないとされる"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value offhand
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value onAttackByMelee
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Nyaptov,Wi-ki,Urban,Rumor]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {Enchantments:[{id:unbreaking,lvl:1}],HideFlags:1,AttributeModifiers:[{AttributeName:generic.attack_damage}]}

# 神器の入手用function
    function asset:sacred_treasure/lib/give