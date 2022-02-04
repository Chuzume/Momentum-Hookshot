
# 負の値のエフェクトを数Tickで消すやつ
    scoreboard players remove @s E.Anchor_Effect 1

# 削除とリセット
    execute if score @s E.Anchor_Effect matches ..0 run effect clear @s levitation
    attribute @s minecraft:generic.knockback_resistance base set 0.0
    scoreboard players reset @s[scores={E.Anchor_Effect=..0}]