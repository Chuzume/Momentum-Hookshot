
# ストレージ
    execute as @a at @s run function e.anchor:storage

# 飛び道具チェック 
    execute as @e[type=marker,tag=Chuz.Projectile] at @s run function e.anchor:entity/projectile_check

# スライムを消す
    execute as @e[type=magma_cube,tag=ColSlime_Entity] at @s run function e.anchor:entity/col_slime/main

# 飾り
    execute as @e[type=armor_stand,tag=E.Anchor_Hider] at @s run function e.anchor:entity/slime_hider/main

# エフェクト消すやつ
    execute as @a[scores={E.Anchor_Effect=0..}] run function e.anchor:item/ender_anchor/clear_levitation