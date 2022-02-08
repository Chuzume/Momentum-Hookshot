# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot e.anchor:item/monemtum_hookshot

# すぐ拾いてえよ
    data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

# VFX
    playsound minecraft:entity.villager.work_fletcher player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.villager.work_toolsmith player @a ~ ~ ~ 1 1

# 次回以降も実行するためにレシピ没収
    recipe take @s e.anchor:momentum_hookshot

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only e.anchor:craft/momentum_hookshot