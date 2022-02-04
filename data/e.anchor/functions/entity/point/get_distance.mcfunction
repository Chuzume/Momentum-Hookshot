
# 目の前がじゃないとこまで行ってTP
    #execute unless block ^ ^ ^1 #useful_tools:no_collision align xyz run tp ~0.5 ~ ~0.5

# 距離加算
    scoreboard players add @s E.Anchor_Dist 1

# 光(テスト用)
    particle electric_spark

# ポジション再帰
    execute positioned ^ ^ ^1 unless entity @a[distance=..1] if entity @e[type=snowball,tag=E.Anchor_Point,distance=..30] run function e.anchor:entity/point/get_distance
