    execute if entity @s[scores={E.Anchor_Sound=2}] run playsound minecraft:entity.fishing_bobber.throw player @a ~ ~ ~ 1.5 0.7
    execute if entity @s[scores={E.Anchor_Sound=1}] run playsound minecraft:block.wooden_trapdoor.open player @s ~ ~ ~ 2 1.5
    tag @s[scores={E.Anchor_Sound=1}] remove E.Anchor_Sound_FailShot