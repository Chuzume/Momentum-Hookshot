
# 拡散用のエンティティを消す
    execute facing entity @e[type=marker,tag=Chuz.Spread,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
    kill @e[type=marker,tag=Chuz.Spread,distance=..100]

# 発射体のデータから弾速と射程をもらってくる
    execute store result score @s Chuz.Speed run data get entity @s data.ChuzData.Speed
    execute store result score @s Chuz.Range run data get entity @s data.ChuzData.Range

# UUIDコピー
    execute run data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID

# タグ削除
    tag @s remove Chuz.Projectile_Init