#> core:keep_lost_item/take
#
# プレイヤーのアイテムを保管するよ
#
# @within core:handler/death

#> Temp
# @private
    #declare storage core:keep_lost_item/take

# InventoryをTempに移してSlotを削除し、固有storageに追加
    data modify storage core:keep_lost_item/take Temp set from entity @s Inventory
    data remove storage core:keep_lost_item/take Temp[].Slot
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items append from storage core:keep_lost_item/take Temp[]
    data remove storage core:keep_lost_item/take Temp
# インベントリclear
    clear @s