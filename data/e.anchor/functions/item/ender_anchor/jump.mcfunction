
# Posを取る
    execute store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    execute as @e[tag=Test] store result score @s E.Anchor_PosY run data get entity @s Pos[1]
    scoreboard players operation @a E.Anchor_PosY -= @e[tag=Test,limit=1] E.Anchor_PosY

# 一旦落ちてくる
    execute as @e[tag=Test] store result entity @s Pos[1] double 1 run data get entity @p Pos[1] 1

# ポイントとの距離を求める
    execute at @e[tag=Test] facing entity @s feet run function e.anchor:entity/point/get_distance

# 戻ってくる
    execute as @e[tag=Test] store result entity @s Pos[1] double 1 run scoreboard players get @s E.Anchor_PosY

# 音
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1.2
    #playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2

# 落下速度リセット
    tp @s 0 0 0
    tp ~ ~0.0 ~

# 座標差を使ってさんすうの時間 (((PosY*-1)-3)*5)+40
    scoreboard players operation @s E.Anchor_PosY *= $-1 Chuz.Const
    scoreboard players operation @s E.Anchor_PosY -= $3 Chuz.Const
    scoreboard players operation @s E.Anchor_PosY *= $5 Chuz.Const
    scoreboard players operation @s E.Anchor_PosY += $40 Chuz.Const

# 127以上になったらは正常に飛ばないので無理やり127にする
    execute if score @s E.Anchor_PosY matches 127.. run scoreboard players set @s E.Anchor_PosY 127

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace water

# 下向きだった場合
    tellraw @a [{"text":"score: "},{"score":{"objective":"E.Anchor_PosY","name":"@s"}}]
    execute if score @s E.Anchor_PosY matches ..-10 run effect give @s levitation 1 180 false
    execute if score @s E.Anchor_PosY matches ..-10 run scoreboard players set @s E.Anchor_Effect 3

# AECを召喚、エフェクト威力に代入
    summon area_effect_cloud ~ ~ ~ {Tags:["E.Anchor_Jump"],NoGravity:1b,Radius:0.0f,Duration:6,Age:4,WaitTime:0,Effects:[{Id:25b,Amplifier:20b,Duration:3,ShowParticles:0b}]}
    execute store result entity @e[type=area_effect_cloud,tag=E.Anchor_Jump,sort=nearest,limit=1] Effects[0].Amplifier byte 1 run scoreboard players get @s E.Anchor_PosY

# 大雑把に距離から威力決める
    scoreboard players operation @s E.Anchor_Dist *= $5 Chuz.Const
    execute store result score @s ColSlime_Power run scoreboard players operation @s E.Anchor_Dist += $5 Chuz.Const

# コリジョン召喚
    execute at @s facing entity @e[tag=Test,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^-0.0 ^-0.2 run function e.anchor:entity/col_slime/summon_recursive

# 足元のスライムを隠す
    execute at @s facing entity @e[tag=Test,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^-0.5 ^-0.2 run summon armor_stand ~ ~-1.0 ~ {NoGravity:1b,Silent:1b,Invisible:1b,Tags:["E.Anchor_Hider"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1621761885,420563628,-1988687145,1381854084],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGRiYTY0MmVmZmZhMTNlYzM3MzBlYWZjNTkxNGFiNjgxMTVjMWY5OTg4MDNmNzQ0NTJlMmUwY2QyNmFmMGI4In19fQ=="}]}}}}]}
    #summon armor_stand ~ ~-1.5 ~ {HasVisualFire:1b,Marker:1b,Invisible:1b,Tags:["E.Anchor_Hider"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-147967364,1201816944,-1162301804,-2140075533],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODdjZjIxY2NiMjFlMmQyOWM4MWNjMTVmZThkM2IzZWY5NzFkMTgyZDMyMjRhMjEyOTY0ZGRkYjM2Y2Y0In19fQ=="}]}}}}]}

# 距離リセット
    scoreboard players reset @s E.Anchor_Dist
    scoreboard players reset @s ColSlime_Power
    scoreboard players reset @s E.Anchor_PosY
