
# タグ付与
    tag @s add Chuz.This

# VFX
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 2 2
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 2 1

# フック発射(右手)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} anchored eyes positioned ^-0.25 ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

# フック発射(左手)
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} anchored eyes positioned ^1.25 ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

# ターゲット
    execute anchored eyes run summon marker ^ ^-0.15 ^20 {Tags:["Chuz.Spread"]}

# 発射体にInit処理
    tag @e[type=bat,tag=Chuz.Projectile_Init,limit=1] add E.Anchor_Hook
    execute as @e[type=bat,tag=Chuz.Projectile_Init,limit=1] at @s run function e.anchor:entity/hook/init
    
# 持ち替え
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot

# オフハンド
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot

# タグ削除
    tag @s remove Chuz.This
