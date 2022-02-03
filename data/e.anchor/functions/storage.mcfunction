
# 取得
    function e.anchor:get_data/

# エンダーアンカー
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Ender_Anchor"} run function e.anchor:item/ender_anchor/main

# リセット
    scoreboard players reset @s[scores={E.Anchor_RClick=0..}] E.Anchor_RClick

# 削除
    data remove storage chuz:context Item
