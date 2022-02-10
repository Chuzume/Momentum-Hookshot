# VFX
    execute anchored eyes positioned ^ ^ ^1 run particle smoke ~ ~-0.3 ~ 0 0 0 0.05 5
    scoreboard players set @s E.Anchor_Sound 2
    tag @s add E.Anchor_Sound_FailShot

# 持ち替え
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot_used
# オフハンド持ち替え
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot_used
