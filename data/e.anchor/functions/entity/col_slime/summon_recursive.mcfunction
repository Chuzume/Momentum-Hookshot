
# ゲームルールをちょっといじる
    gamerule maxEntityCramming 0

# スライムを召喚
    scoreboard players remove @s ColSlime_Power 1
    summon magma_cube ^ ^ ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",Tags:["ColSlime_Entity","Chuz_NonVanillaMob"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
    execute if score @s ColSlime_Power matches 0.. run function e.anchor:entity/col_slime/summon_recursive

# ちょっとした後戻す
    schedule function e.anchor:entity/col_slime/return_gamerule 2t