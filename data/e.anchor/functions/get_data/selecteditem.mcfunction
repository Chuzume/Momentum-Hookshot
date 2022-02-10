
# お願いOhMyDat!
    function oh_my_dat:please

# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Chuz.Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Time set from storage global Time
    execute if score $NotLatestData Chuz.Temporary matches 1 run function e.anchor:get_data/selecteditem_fetch

# outputのstorageに移す
    data remove storage chuz:context Item.Mainhand
    data modify storage chuz:context Item.Mainhand set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data