

# スコアID使って対象を特定
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# サウンド
    execute at @a[tag=Chuz.This] run playsound minecraft:entity.magma_cube.jump player @p ~ ~ ~ 2 1

# タグ削除
    tag @a[tag=Chuz.This] remove Chuz.This

# タグ
    scoreboard players reset @s Chuz.Range
    tag @s remove E.Anchor_HookMove
    tag @s remove E.Anchor_HookStop
    tag @s add E.Anchor_HookReturn