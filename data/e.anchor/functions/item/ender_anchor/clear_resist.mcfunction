
# 負の値のエフェクトを数Tickで消すやつ
    scoreboard players remove @s E.Anchor_Resist 1

# 削除とリセット
    execute if score @s E.Anchor_Resist matches ..0 run attribute @s generic.knockback_resistance base set 0.0
    scoreboard players reset @s[scores={E.Anchor_Resist=..0}] E.Anchor_Resist