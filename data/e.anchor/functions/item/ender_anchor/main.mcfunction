
# 発動
    #execute if entity @s[scores={E.Anchor_RClick=0..}] run function e.anchor:item/ender_anchor/jump

# アンカー射出
    execute if entity @s[scores={E.Anchor_RClick=0..}] run function e.anchor:item/ender_anchor/shot_anchor
