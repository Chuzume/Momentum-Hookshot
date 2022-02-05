
# 拡散用のエンティティを消す
    execute facing entity @e[type=marker,tag=Chuz.Spread,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
    execute at @s run tp @s ^ ^ ^1
    kill @e[type=marker,tag=Chuz.Spread,distance=..100]

# 発射体のデータから弾速と射程をもらってくる
    scoreboard players set @s Chuz.Speed 40
    scoreboard players set @s Chuz.Range 300

# 紐つける
    data modify entity @s Leash.UUID set from entity @p[tag=Chuz.This] UUID

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p[tag=Chuz.This] Chuz_Pl.ID

# タグ
    tag @s add E.Anchor_HookMove
    tag @s remove Chuz.Projectile_Init