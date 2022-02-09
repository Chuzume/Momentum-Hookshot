
# 落下耐性
    execute if entity @s[tag=E.Anchor_FallResist] run function e.anchor:item/ender_anchor/fall_resist/

# 取得
    function e.anchor:get_data/

# モメンタム・フックショット
    # メインハンド
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run function e.anchor:item/ender_anchor/main
    
    # オフハンド、メインハンドにクロスボウがないなら
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} unless data storage chuz:context Item.Mainhand{id:"minecraft:crossbow"} run function e.anchor:item/ender_anchor/main

# リセット
    scoreboard players reset @s[scores={E.Anchor_Shot=0..}] E.Anchor_Shot

# 削除
    data remove storage chuz:context Item
