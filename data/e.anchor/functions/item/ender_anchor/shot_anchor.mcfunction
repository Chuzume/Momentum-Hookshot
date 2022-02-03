
# フック発射
    execute anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{Speed:60,Range:400}}}
    execute anchored eyes run summon marker ^ ^-0.15 ^10 {Tags:["Chuz.Spread"]}

# 発射体にInit処理
    tag @e[type=marker,tag=Chuz.Projectile_Init,limit=1] add E.Anchor_Hook
    execute as @e[type=marker,tag=Chuz.Projectile_Init,limit=1] at @s run function e.anchor:entity/projectile_common/init