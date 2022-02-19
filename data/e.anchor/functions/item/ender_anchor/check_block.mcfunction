
# 常に同じ
    title @s times 0 3 0
    title @s title {"text":""}

# 目の前がブロックなら点灯
    execute unless block ^ ^ ^0.7 #e.anchor:no_collision run tag @s add E.Anchor_Active

# モブがいるなら点灯
    execute positioned ~-0.5 ~ ~-0.5 if entity @e[type=#e.anchor:heavy,dx=0] run tag @s add E.Anchor_Active

# 条件を満たしていないなら
    title @s[tag=E.Anchor_Active] subtitle {"text":" ","color":"green","underlined":true}

# 条件を満たしていないなら消灯
    title @s[tag=!E.Anchor_Active] subtitle {"text":" ","color":"dark_gray","underlined":true}

# ポジション再帰
    execute positioned ^ ^ ^0.7 if block ~ ~ ~ #e.anchor:no_collision if entity @s[distance=..80] run function e.anchor:item/ender_anchor/check_block

# タグ削除
    tag @s[tag=E.Anchor_Active] remove E.Anchor_Active