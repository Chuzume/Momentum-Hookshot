
# Posを取る
    execute store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    execute as @e[type=bat,tag=E.Anchor_HookHit] store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    scoreboard players operation @a E.Anchor_PosY -= @e[type=bat,tag=E.Anchor_HookHit,limit=1] E.Anchor_PosY

# 一旦落ちてくる
    execute as @e[type=bat,tag=E.Anchor_HookHit] store result entity @s Pos[1] double 1 run data get entity @p Pos[1] 1

# ポイントとの距離を求める
    execute at @e[type=bat,tag=E.Anchor_HookHit] facing entity @s feet run function e.anchor:entity/point/get_distance

# 戻ってくる
    execute as @e[type=bat,tag=E.Anchor_HookHit] store result entity @s Pos[1] double 1 run scoreboard players get @s E.Anchor_PosY

# 音
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2

# 落下速度リセット
    tp @s 0 0 0
    tp ~ ~0.09 ~


# 座標差を使ってさんすうの時間 (((PosY*-1)-3)*5)+40
    scoreboard players operation @s Chuz.Temporary = @s E.Anchor_PosY
    scoreboard players operation @s Chuz.Temporary *= $-1 Chuz.Const
    scoreboard players operation @s Chuz.Temporary *= $2 Chuz.Const
    scoreboard players operation @s Chuz.Temporary += $30 Chuz.Const

# 127以上になったらは正常に飛ばないので調整
    execute if score @s Chuz.Temporary matches 127.. run scoreboard players set @s Chuz.Temporary 127

# 下向きだった場合
    execute if score @s Chuz.Temporary matches ..4 run effect give @s levitation 1 180 true
    execute if score @s Chuz.Temporary matches ..4 run scoreboard players set @s E.Anchor_Effect 3

# AECを召喚(計算結果が125以下)
    execute if score @s Chuz.Temporary matches ..127 at @s run summon area_effect_cloud ~ ~ ~ {Tags:["E.Anchor_Jump"],NoGravity:1b,Radius:0.0f,Duration:6,Age:4,WaitTime:0,Effects:[{Id:25b,Amplifier:20b,Duration:6,ShowParticles:0b}]}

# エフェクト威力に代入(計算結果が125未満)
    execute store result entity @e[type=area_effect_cloud,tag=E.Anchor_Jump,sort=nearest,limit=1] Effects[0].Amplifier byte 1 run scoreboard players get @s Chuz.Temporary

# 大雑把に距離から威力決める
    scoreboard players operation @s E.Anchor_Dist *= $5 Chuz.Const
    execute store result score @s ColSlime_Power run scoreboard players operation @s E.Anchor_Dist += $5 Chuz.Const

# スライムの威力表示
    #tellraw @a [{"text":"勢い: "},{"score":{"objective":"ColSlime_Power","name":"@s"}}]

# コリジョン召喚
    execute at @s facing entity @e[type=bat,tag=E.Anchor_HookHit,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^-0.5 ^-0.2 run function e.anchor:entity/col_slime/summon_recursive

# 足元のスライムを隠す
    execute at @s facing entity @e[type=bat,tag=E.Anchor_HookHit,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^-2 ^-0.2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,HasVisualFire:1b,Marker:1b,Invisible:1b,Tags:["E.Anchor_Hider"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2097361313,1024410766,-1135746352,-1925943514],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNlZWI0NDA0YTIyZTNjNWZiZGQ0ODM2YzcyYTdmNTljMTYxNTU4OGE5YzU3ZDI4NzE1NTQ1MzcyOGFlYSJ9fX0="}]}}}}]}

# 出始めにノクバ耐性を付与
    scoreboard players set @s E.Anchor_Resist 10
    attribute @s generic.knockback_resistance base set 1.0

# リセット
    scoreboard players reset @s E.Anchor_Dist
    scoreboard players reset @s ColSlime_Power
    scoreboard players reset @s Chuz.Temporary
    scoreboard players reset @s E.Anchor_PosY
    tag @s remove Chuz.This