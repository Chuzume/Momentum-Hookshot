
# 常に同じ
    title @s times 0 2 0
    title @s title {"text":""}

# 目の前がブロックなら緑
    execute unless block ^ ^ ^0.7 #e.anchor:no_collision run title @s subtitle {"text":" ","color":"green","underlined":true}

# 目の前がブロックじゃないとこなら赤
    execute if block ^ ^ ^0.7 #e.anchor:no_collision run title @s subtitle {"text":" ","color":"red","underlined":true}

# ポジション再帰
    execute positioned ^ ^ ^0.7 if block ~ ~ ~ #e.anchor:no_collision if entity @s[distance=..80] run function e.anchor:item/ender_anchor/check_block
