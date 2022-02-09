    
# ゴリ押しで着地ダメージ無効化
    scoreboard players add @s E.Anchor_NoFall 1
    execute if entity @s[scores={E.Anchor_NoFall=3..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    scoreboard players reset @s[scores={E.Anchor_NoFall=3..}] E.Anchor_NoFall

# 制限時間
    scoreboard players remove @s E.Anchor_NoFall2 1
    execute if entity @s[scores={E.Anchor_NoFall2=..0}] run function e.anchor:item/ender_anchor/fall_resist/end

# 着地で強制解除
    execute if entity @s[nbt={OnGround:1b}] run function e.anchor:item/ender_anchor/fall_resist/end_grounded

# VFX
    particle minecraft:instant_effect ~ ~0.1 ~ 0.3 0 0.3 0 1