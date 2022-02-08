
# VFX
    execute anchored eyes positioned ^ ^ ^1 run particle crit ~ ~-0.3 ~ 0 0 0 0.5 10
    scoreboard players set @s E.Anchor_Sound 2
    tag @s add E.Anchor_Sound_Reload

# アイテムを持ち替える
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot

# オフハンド持ち替え
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot

# タグ削除
    tag @s remove E.Anchor_NoUse
    tag @s remove E.Anchor_Reload