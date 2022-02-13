# 当ててるなら撃てる
    function e.anchor:item/ender_anchor/shot_anchor
    
# 持ち替え
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot
    
# オフハンド持ち替え
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot
