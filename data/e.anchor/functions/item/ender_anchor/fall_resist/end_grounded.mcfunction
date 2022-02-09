
# 着地で終わらせたとき
    tag @s remove E.Anchor_FallResist
    scoreboard players reset @s E.Anchor_NoFall
    scoreboard players reset @s E.Anchor_NoFall2

# VFX
    particle minecraft:instant_effect ~ ~0.1 ~ 0.5 0 0.5 1 7
    playsound minecraft:entity.generic.small_fall player @a ~ ~ ~ 1 1.0