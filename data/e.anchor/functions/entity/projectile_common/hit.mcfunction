# もし使用者自身に当たったなら、なかったことにする
    execute store success score @s Chuz.HitCheck if score @s Chuz_En.ID = @e[type=!#craftsman_arms:unhurtable,dx=0,sort=nearest,limit=1] Chuz_Pl.ID

# ヒット
    execute store result storage csr_score_damage: ChuzDamage.Body int 1 run data get entity @s data.ChuzData.BodyDamage
    execute store result storage csr_score_damage: ChuzDamage.Head int 1 run data get entity @s data.ChuzData.HeadDamage

# ダメージを与える
    execute if score @s Chuz.HitCheck matches 0 as @e[type=!#craftsman_arms:unhurtable,dx=0,sort=nearest,limit=1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function craftsman_arms:entity/projectile_common/hit_damage

# 消失
    execute if score @s Chuz.HitCheck matches 0 run function craftsman_arms:entity/projectile_common/break