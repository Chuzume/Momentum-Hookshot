
# パーティクル
    particle crit ~ ~ ~ 0 0 0 0.1 3 force

# 動作を分ける
    execute if entity @s[tag=E.Anchor_HookMove] run function e.anchor:entity/hook/move
    execute if entity @s[tag=E.Anchor_HookReturn] run function e.anchor:entity/hook/return
    execute if entity @s[tag=E.Anchor_HookStop] run function e.anchor:entity/hook/stop

# 射出者にはフックを撃てなくなってもらう
    tag @s add Chuz.This
    #execute as @a if score @e[tag=Chuz.This,limit=1] H.Hook_ID.Entity = @s H.Hook_ID.Player run tag @s add H.Hook_NoUse
    tag @s remove Chuz.This

# ロープが外れたら消える
    execute unless data entity @s Leash.UUID run function e.anchor:entity/hook/kill_rope
