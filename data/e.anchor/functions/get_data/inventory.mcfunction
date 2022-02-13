
# お願いOhMyDat!
    function oh_my_dat:please

# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Chuz.Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Inventory.Time set from storage global Time
    execute if score $NotLatestData Chuz.Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Inventory.Data set from entity @s Inventory 
    
# outputのstorageに移す
    data remove storage chuz:context Item.Inventory
    data modify storage chuz:context Item.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Inventory.Data
