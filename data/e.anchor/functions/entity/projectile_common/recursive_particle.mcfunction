
# 弾丸の再帰パーティクル
# 高速弾丸
    execute if entity @s[tag=S.Rif_Bullet] run function craftsman_arms:entity/bullet/particle
    execute if entity @s[tag=S.Rif_SharpBullet] run function craftsman_arms:entity/bullet/particle_sharp

# ショットガン
    execute if entity @s[tag=S.Rif_Shell] run function craftsman_arms:entity/shell/particle