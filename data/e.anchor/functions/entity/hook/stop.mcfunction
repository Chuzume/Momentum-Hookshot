
# パーティクル
    particle crit ~ ~0.5 ~ 0 0 0 0.1 3 force

# 時間経過で戻ってくる
    scoreboard players add @s Chuz.Time 1
    execute if score @s Chuz.Time matches 40.. run function e.anchor:entity/hook/outrange

# スコアID使って対象を特定
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# 近くに来たら自動で戻ってくる
    execute if entity @a[tag=Chuz.This,distance=..5] run function e.anchor:entity/hook/outrange
    
# エンティティ追従
    execute at @e[tag=E.Anchor_Hooked,sort=nearest,limit=1] run tp @s ~ ~0.5 ~

# タグ削除
    tag @a[tag=Chuz.This] remove Chuz.This