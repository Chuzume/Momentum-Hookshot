# 持ち主にタグ付与
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# 持ち主の足元に計算用のMarkerを召喚
    execute at @p[tag=Chuz.This] run summon marker ~ ~ ~ {Tags:["E.Anchor_PullPos"]}

# プレイヤーを引っ張る
    execute as @p at @s run function e.anchor:entity/hook/pull/player

# リセット
    kill @e[tag=E.Anchor_PullPos]
    scoreboard players reset @s Chuz.Range
    tag @s remove E.Anchor_HookMove
    tag @s add E.Anchor_HookStop
    tag @a remove Chuz.This