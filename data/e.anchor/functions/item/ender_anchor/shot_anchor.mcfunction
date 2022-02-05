
# タグ付与
    tag @s add Chuz.This

# フック発射
    #execute anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","Chuz.Projectile_Init"],data:{ChuzData:{Speed:60,Range:400}}}
    execute anchored eyes positioned ^-0.25 ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
    execute anchored eyes run summon marker ^ ^-0.15 ^20 {Tags:["Chuz.Spread"]}

# 発射体にInit処理
    tag @e[type=bat,tag=Chuz.Projectile_Init,limit=1] add E.Anchor_Hook
    execute as @e[type=bat,tag=Chuz.Projectile_Init,limit=1] at @s run function e.anchor:entity/hook/init
    
# タグ削除
    tag @s remove Chuz.This
