
# 取得
    function e.anchor:get_data/

# 落下耐性
    execute if entity @s[tag=E.Anchor_FallResist] run function e.anchor:item/ender_anchor/fall_resist/

# モメンタム・フックショット
    # メインハンド
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run function e.anchor:item/ender_anchor/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run function e.anchor:item/ender_anchor/reload/main

    # オフハンド、メインハンドにクロスボウがないなら
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} unless data storage chuz:context Item.Mainhand{id:"minecraft:crossbow"} run function e.anchor:item/ender_anchor/main
    # リロード
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot_Reload"} run function e.anchor:item/ender_anchor/reload/main

# 共通処理
    # アイテムが変わったら状態リセット
        execute if entity @s[scores={Chuz.ItemCheck=1}] run scoreboard players reset @s E.Anchor_Reload

    # スコアリセット
        scoreboard players reset @s[scores={E.Anchor_Shot=0..}] E.Anchor_Shot