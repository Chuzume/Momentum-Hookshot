
# タグ付与
    tag @s add Chuz.This
    tag @s add E.Anchor_NoUse

# VFX
    playsound minecraft:entity.fishing_bobber.throw player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1.5 2
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1.5 1
    playsound minecraft:block.wooden_button.click_on player @a ~ ~ ~ 1.5 0.8

# フック発射(右手)
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} anchored eyes positioned ^-0.25 ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

# フック発射(左手)
    #execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} anchored eyes positioned ^0.25 ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

# フック発射
    execute anchored eyes positioned ^ ^ ^-0.4 run summon bat ~ ~-0.4 ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["Chuz.Projectile","Chuz.Projectile_Init"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

# ターゲット
    execute anchored eyes run summon marker ^ ^-0.15 ^20 {Tags:["Chuz.Spread"]}

# 発射体にInit処理
    tag @e[type=bat,tag=Chuz.Projectile_Init,limit=1] add E.Anchor_Hook
    execute as @e[type=bat,tag=Chuz.Projectile_Init,limit=1] at @s run function e.anchor:entity/hook/init
    
# 持ち替え
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.mainhand loot e.anchor:item/monemtum_hookshot_used

# オフハンド持ち替え
    execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:"Momentum_Hookshot"} run loot replace entity @s weapon.offhand loot e.anchor:item/monemtum_hookshot_used

# タグ削除
    tag @s remove Chuz.This
