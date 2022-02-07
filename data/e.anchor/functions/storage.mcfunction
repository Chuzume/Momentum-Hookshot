
# 取得
    function e.anchor:get_data/

# エンダーアンカー
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run function e.anchor:item/ender_anchor/main
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} run function e.anchor:item/ender_anchor/main

# リセット
    scoreboard players reset @s[scores={E.Anchor_Shot=0..}] E.Anchor_Shot

# 削除
    data remove storage chuz:context Item
