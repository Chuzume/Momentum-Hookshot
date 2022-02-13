
# パーティクル
    particle minecraft:dust 0.95 0.95 1 0.8 ~ ~ ~ 0 0 0 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run tp @s ^ ^ ^0.2 ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# エンティティに当たったとき
    execute positioned ~-0.5 ~0.0 ~-0.5 positioned ~0.3 ~-0.1 ~0.3 if entity @e[type=!#e.anchor:cannot_hook,tag=!E.Anchor_Hook,dx=0,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 unless score @s Chuz_En.ID = @e[type=!#e.anchor:cannot_hook,tag=!E.Anchor_Hook,dx=0,sort=nearest,limit=1] Chuz_Pl.ID run function e.anchor:entity/hook/hit/pull_entity

# 対ドラゴン
    #execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function craftsman_arms:entity/projectile_common/hit

# 壁に当たったとき
    execute unless block ~ ~ ~ #e.anchor:no_collision run function e.anchor:entity/hook/hit/block
    
# 射程限界で戻ってくる
    execute if entity @s[scores={Chuz.Range=0}] run function e.anchor:entity/hook/outrange

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s run function e.anchor:entity/hook/move
