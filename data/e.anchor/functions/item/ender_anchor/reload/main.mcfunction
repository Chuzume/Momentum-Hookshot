
# 空撃ち
    execute if entity @s[scores={E.Anchor_Shot=0..}] run function e.anchor:item/ender_anchor/reload/failshot

# フックヒットさせてるなら発射可能に
    #execute if entity @s[tag=E.Anchor_Bonus,scores={E.Anchor_Shot=0..}] run function e.anchor:item/ender_anchor/reload/bonusshot

# フックをヒットさせてるならリロード速度加速
    scoreboard players set @s[tag=E.Anchor_Bonus] E.Anchor_Reload 15

# リロード進行
    scoreboard players add @s E.Anchor_Reload 1

# リロード完了
    execute if entity @s[scores={E.Anchor_Reload=20..}] run function e.anchor:item/ender_anchor/reload/finish

# 音関連
    # リロード
        execute if entity @s[tag=E.Anchor_Sound_Reload] run function e.anchor:item/ender_anchor/sound/reload
    # 空撃ち
        execute if entity @s[tag=E.Anchor_Sound_FailShot] run function e.anchor:item/ender_anchor/sound/failshot
    # サウンドスコア
        scoreboard players remove @s[scores={E.Anchor_Sound=1..}] E.Anchor_Sound 1
        scoreboard players reset @s[scores={E.Anchor_Sound=..0}] E.Anchor_Sound

# ボーナスリセット
    tag @s remove E.Anchor_Bonus

# 改造レティクル
    title @s title {"text":""}
    title @s subtitle {"text":" ","color":"dark_gray","underlined":true}