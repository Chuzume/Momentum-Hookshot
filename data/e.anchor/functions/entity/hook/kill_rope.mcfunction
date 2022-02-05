# パーティクル
    particle smoke ~ ~ ~ 0 0 0 0.05 25 force

# アイテムを削除
    kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lead",Count:1b}}]

#
    function e.anchor:entity/hook/kill