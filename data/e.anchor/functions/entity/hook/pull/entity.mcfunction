
# タグとスコア付与
    tag @s add E.Anchor_Hooked
    
# 音
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# 足元のスライムを隠す
    execute at @s facing entity @e[type=marker,tag=E.Anchor_PullPos,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^-2 ^-0.2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,HasVisualFire:1b,Marker:1b,Invisible:1b,Tags:["E.Anchor_Hider"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2097361313,1024410766,-1135746352,-1925943514],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNlZWI0NDA0YTIyZTNjNWZiZGQ0ODM2YzcyYTdmNTljMTYxNTU4OGE5YzU3ZDI4NzE1NTQ1MzcyOGFlYSJ9fX0="}]}}}}]}

# Posを取る
    execute store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    execute as @e[type=marker,tag=E.Anchor_PullPos] store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    scoreboard players operation @a E.Anchor_PosY -= @e[type=marker,tag=E.Anchor_PullPos,limit=1] E.Anchor_PosY

# ポイントとの距離を求める
    tag @e[type=marker,tag=E.Anchor_PullPos,limit=1] add E.Anchor_DistCheck
    execute at @e[type=marker,tag=E.Anchor_PullPos] facing entity @s feet rotated ~ ~ run function e.anchor:entity/hook/get_distance_player
    tag @e[type=marker,tag=E.Anchor_PullPos,limit=1] remove E.Anchor_DistCheck

# 座標差を使ってさんすうの時間 (((PosY*-1)-3)*5)+40
    scoreboard players operation @s Chuz.Temporary = @s E.Anchor_PosY
    #scoreboard players operation @s Chuz.Temporary *= $-1 Chuz.Const
    #scoreboard players operation @s Chuz.Temporary *= $2 Chuz.Const
    #scoreboard players operation @s Chuz.Temporary += $30 Chuz.Const

# 大雑把に距離から威力決める
    scoreboard players operation @s E.Anchor_Dist *= $2 Chuz.Const
    scoreboard players operation @s E.Anchor_Dist -= $10 Chuz.Const

    execute store result score @s ColSlime_Power run scoreboard players operation @s E.Anchor_Dist += $5 Chuz.Const

# 威力表示(テスト用)
    tellraw @a [{"text":"勢い: "},{"score":{"objective":"E.Anchor_Dist","name":"@s"}}]

# 飛ぶ
    scoreboard players operation @s Chuz.Speed = @s E.Anchor_Dist
    execute facing entity @e[type=marker,tag=E.Anchor_PullPos,limit=1] feet rotated ~ -15 run function e.anchor:entity/motion

# リセット
    scoreboard players reset @s E.Anchor_Dist
    scoreboard players reset @s ColSlime_Power
    scoreboard players reset @s Chuz.Temporary
    scoreboard players reset @s E.Anchor_PosY
    tag @s remove Chuz.This
    tag @s remove E.Anchor_Stop