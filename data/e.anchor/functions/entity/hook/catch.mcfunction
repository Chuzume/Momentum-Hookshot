
# 持ち主の手持ち変える
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add E.Anchor_Reload

# 消える
    function e.anchor:entity/hook/kill