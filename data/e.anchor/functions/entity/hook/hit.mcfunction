summon armor_stand ~ ~ ~ {Tags:[Test]}
execute as @a at @s run function e.anchor:item/ender_anchor/jump
kill @e[tag=Test,limit=1]
kill @s