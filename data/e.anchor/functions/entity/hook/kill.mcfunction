# 誰かにフックを当てていたなら解除
    execute if entity @s[tag=E.Anchor_HookEntity] run tag @e[tag=E.Anchor_Hooked,sort=nearest,limit=1] remove E.Anchor_Hooked

# 削除
    scoreboard players reset @s Chuz.Range
    tp @s ~ ~-300 ~
    kill @s