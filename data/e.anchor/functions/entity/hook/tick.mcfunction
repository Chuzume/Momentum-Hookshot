

# 動作を分ける
    execute if entity @s[tag=E.Anchor_HookMove] run function e.anchor:entity/hook/move
    execute if entity @s[tag=E.Anchor_HookReturn] run function e.anchor:entity/hook/return
    execute if entity @s[tag=E.Anchor_HookStop] run function e.anchor:entity/hook/stop

# ロープが外れたら消える
    execute unless data entity @s Leash.UUID run function e.anchor:entity/hook/kill_rope
