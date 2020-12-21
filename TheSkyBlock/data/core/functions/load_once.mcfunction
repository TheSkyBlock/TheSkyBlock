#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

function core:define_gamerule

#> Datapack Order
# 0: TheSkyBlock
# 1: ScoreToHealth
# 2: OhMyDat
datapack disable OhMyDat
datapack disable ScoreToHealth
datapack enable OhMyDat after TheSkyBlock
datapack enable coreToHealth after TheSkyBlock
datapack enable OhMyDat after ScoreToHealth

#> エイリアス
# @public
    #alias vector shulkerA 10000 0 10000
    #alias vector shulkerB 10000 1 10000
    #alias vector worldSpawn 23 3 24
setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}

#> デバッグ用storage Prefix.<DEBUG,SUCCESS,FAILED,ERROR,CRIT>
# @public
    #declare storage global:debug
data modify storage global:debug Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage global:debug Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage global:debug Prefix.FAILED set value "§cFAILED >> §r"
data modify storage global:debug Prefix.ERROR set value "§cERROR >> §r"
data modify storage global:debug Prefix.CRIT set value "§4CRITICAL >> §r"

#> Healthを持つMobにフィルターする際に使用してください
#
# **teamとしては存在しません**
#
# @public
    #declare team Null

#> 1tickで消す一時変数の保存用
# @public
    scoreboard objectives add Temporary dummy

#> 常に値が設定される変数
# @public
    scoreboard objectives add Global dummy

#> 定数類 **変更厳禁**
# @public
    scoreboard objectives add Const dummy
function core:define_const


#> EventHandlers
# @within function
#   core:handler/*
#   core:tick
    scoreboard objectives add FirstJoinEvent custom:play_one_minute {"text":"イベント: 初回Join"}
    scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
    scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
    scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}

#> Library
# @public
    scoreboard objectives add Argument dummy {"text":"ライブラリの引数/返り値用"}
# 乱数値の設定
    #> Private
    # @private
        #declare tag Random
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
    execute store result score $Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
    execute store result score $Random.Curray Global run data get entity @e[tag=Random,limit=1] UUID[3]
    kill @e[tag=Random,limit=1]

#> PlayerManager
# @within
#   function player_manager:adjust_hunger/**
#   predicate asset_manager:is_use_mainhand/consumable
    scoreboard objectives add HungerTarget dummy {"text":"目標の満腹度"}
    scoreboard objectives add Hunger food {"text":"現在の満腹度"}

#> PlayerManager
# @within
#   function core:handler/first_join
#   function core:load_once
#   * player_manager:**
    #declare tag Believe.Flora
    #declare tag Believe.Urban
    #declare tag Believe.Nyaptov
    #declare tag Believe.Wi-ki
    #declare tag Believe.Rumor
    scoreboard objectives add Health health {"text":"♥","color":"#FF4c99"}
    scoreboard objectives add MP dummy {"text":"MP"}
    scoreboard objectives add MPMax dummy {"text":"MP上限値"}
scoreboard objectives setdisplay belowName Health

#> AssetManager: SacredTreasure
# @within function asset_manager:sacred_treasure/core/tick
    scoreboard objectives add TimeHasEdible dummy