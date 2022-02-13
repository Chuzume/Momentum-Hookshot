
# タグ付与
    tag @s add E.Anchor_HookHit

# スコアID使って対象を特定
    execute at @a if score @s Chuz_En.ID = @p Chuz_Pl.ID run tag @p add Chuz.This

# ヒット時の音
    execute at @a[tag=Chuz.This] run playsound minecraft:block.iron_door.open player @p ~ ~ ~ 2 1
    execute at @a[tag=Chuz.This] run playsound minecraft:entity.blaze.hurt neutral @p ~ ~ ~ 2 2
    execute at @a[tag=Chuz.This] run playsound minecraft:entity.item.break player @p ~ ~ ~ 2 1.5

# 持ち主のフックをリロード
    tag @a[tag=Chuz.This] add E.Anchor_Bonus
    #scoreboard players set @a[tag=Chuz.This] E.Anchor_Reload 15


# 持ち主としてジャンプ関数を実行
    execute as @a[tag=Chuz.This] at @s run function e.anchor:item/ender_anchor/jump

# タグ
    scoreboard players reset @s Chuz.Range
    tag @s remove E.Anchor_HookMove
    tag @s remove E.Anchor_HookHit
    tag @s add E.Anchor_HookStop