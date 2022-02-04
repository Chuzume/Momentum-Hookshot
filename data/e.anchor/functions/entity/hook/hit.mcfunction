
# 着弾地点を召喚し、IDをコピーする
    summon snowball ~ ~ ~ {NoGravity:1b,Tags:["E.Anchor_Point"],Item:{id:"minecraft:ender_eye",Count:1b}}
    execute store result score @e[type=snowball,tag=E.Anchor_Point,sort=nearest,limit=1] Chuz_En.ID run scoreboard players get @s Chuz_En.ID
 
# スコアID使って対象を特定
    execute at @a if score @e[type=snowball,tag=E.Anchor_Point,sort=nearest,limit=1] Chuz_En.ID = @p Chuz_Pl.ID run tag @p add E.Anchor_User
    execute as @a[tag=E.Anchor_User] at @s run function e.anchor:item/ender_anchor/jump
    kill @e[type=snowball,tag=E.Anchor_Point]

scoreboard players reset @s Chuz.Range
execute positioned ^ ^ ^-1 run particle crit ~ ~ ~ 0 0 0 0.25 1
playsound minecraft:block.stone.break neutral @a ~ ~ ~ 1 1.25
kill @s