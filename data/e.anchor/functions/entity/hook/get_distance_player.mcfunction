
# 距離加算
    scoreboard players add @s E.Anchor_Dist 1

# 光(テスト用)
    #particle end_rod ~ ~1 ~

# 上下にプレイヤーがいたら止まる
    execute positioned ~-0.5 ~100 ~-0.5 if entity @s[dy=-200] run tag @s add E.Anchor_Stop

# ポジション再帰
    execute if entity @s[tag=!E.Anchor_Stop] positioned ^ ^ ^1 if entity @e[tag=E.Anchor_DistCheck,distance=..45] run function e.anchor:entity/hook/get_distance_player