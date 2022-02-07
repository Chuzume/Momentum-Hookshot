
# ストレージ
    execute as @a at @s run function e.anchor:storage

# 飛び道具チェック 
    execute as @e[type=bat,tag=E.Anchor_Hook] at @s run function e.anchor:entity/hook/tick

# スライムを消す
    execute as @e[type=magma_cube,tag=ColSlime_Entity] at @s run function e.anchor:entity/col_slime/main

# 飾り
    execute as @e[type=armor_stand,tag=E.Anchor_Hider] at @s run function e.anchor:entity/slime_hider/main

# エフェクト消すやつ
    execute as @a[scores={E.Anchor_Effect=0..}] run function e.anchor:item/ender_anchor/clear_levitation

# エフェクト消すやつ
    execute as @a[scores={E.Anchor_Resist=0..}] run function e.anchor:item/ender_anchor/clear_resist

# スコアID
    execute as @a unless score @s Chuz_Pl.ID matches 0.. run function e.anchor:score_id
