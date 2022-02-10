# 自身にタグ付与
    tag @s add E.Anchor_HookEntity

# 完全停止  
    scoreboard players reset @s Chuz.Range

# 持ち主にタグ付与
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# 持ち主の足元に計算用のMarkerを召喚
    execute at @p[tag=Chuz.This] run summon marker ~ ~ ~ {Tags:["E.Anchor_PullPos"]}

# プレイヤーを引っ張る
    execute as @e[type=player,dx=0,sort=nearest,limit=1] at @s run function e.anchor:entity/hook/pull/player

# エンティティを引っ張る (不安定なので封印しておきます)
    #execute as @e[type=!#e.anchor:cannot_hook,type=!#e.anchor:heavy,type=!player,tag=!E.Anchor_Hook,dx=0,sort=nearest,limit=1] at @s run function e.anchor:entity/hook/pull/entity

# 重いエンティティに当てた
    tag @e[type=#e.anchor:heavy,dx=0,sort=nearest,limit=1] add E.Anchor_Hooked
    execute if entity @e[type=#e.anchor:heavy,dx=0,sort=nearest,limit=1] run function e.anchor:entity/hook/hit/block

# リセット
    kill @e[tag=E.Anchor_PullPos]
    tag @s remove E.Anchor_HookMove
    tag @s add E.Anchor_HookStop
    tag @a remove Chuz.This