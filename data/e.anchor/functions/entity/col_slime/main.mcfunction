scoreboard players add @s ColSlime_Time 1
execute if entity @s[scores={ColSlime_Time=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={ColSlime_Time=2..}]