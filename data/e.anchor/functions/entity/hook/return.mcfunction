
# パーティクル
    particle minecraft:dust 0.8 0.8 0.8 0.8 ~ ~ ~ 0 0 0 0 1

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players set @s Chuz.Recursion 15

# スコアID使って対象を特定
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..}] facing entity @p[tag=Chuz.This] eyes run tp @s ^ ^ ^0.25 ~ ~

# 持ち主に接触
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=Chuz.This,dx=0] run function e.anchor:entity/hook/kill

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1

# タグ削除
    tag @a[tag=Chuz.This] remove Chuz.This

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function e.anchor:entity/hook/return