
# VFX
    execute anchored eyes positioned ^ ^ ^1 run particle crit ~ ~-0.3 ~ 0 0 0 0.5 10
    scoreboard players set @s E.Anchor_Sound 2
    tag @s add E.Anchor_Sound_Reload

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand set from entity @s Inventory

# アイテムを持ち替える
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot

# オフハンド持ち替え
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot

# タグ削除
    scoreboard players reset @s E.Anchor_Reload
    tag @s remove E.Anchor_Bonus
    tag @s remove E.Anchor_NoUse
    tag @s remove E.Anchor_ReloadFinish