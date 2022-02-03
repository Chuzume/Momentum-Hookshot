# とりあえずプレイヤーのSelectedItemを取得する
    data modify storage api: Temp set from entity @s SelectedItem
# SelectedItemが存在する場合は設定(これは↑の4つ目のコマンドと同じ)
# 存在しない場合は、データから削除する
    execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data set from storage api: Temp
    execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data
# 不要なごみをリセットするやつ
    data remove storage api: Temp