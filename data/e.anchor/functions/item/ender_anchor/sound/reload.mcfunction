    execute if entity @s[scores={E.Anchor_Sound=2}] run playsound minecraft:block.stone_button.click_off player @s ~ ~ ~ 2 1.5
    execute if entity @s[scores={E.Anchor_Sound=1}] run playsound minecraft:block.wooden_trapdoor.open player @s ~ ~ ~ 2 1.5
    tag @s[scores={E.Anchor_Sound=1}] remove E.Anchor_Sound_Reload