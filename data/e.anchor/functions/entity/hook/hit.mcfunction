summon armor_stand ~ ~ ~ {Tags:[Test]}
execute as @a[tag=AnchorPlayer] at @s run function e.anchor:item/ender_anchor/jump
kill @e[tag=Test]
kill @s