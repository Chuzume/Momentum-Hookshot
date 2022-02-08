
# 発動
    #execute if entity @s[scores={E.Anchor_RClick=0..}] run function e.anchor:item/ender_anchor/jump

# アンカー射出
    execute if entity @s[tag=!E.Anchor_NoUse,scores={E.Anchor_Shot=0..}] run function e.anchor:item/ender_anchor/shot_anchor

# リロード
    execute if entity @s[tag=E.Anchor_Reload] run function e.anchor:item/ender_anchor/reload

# 音関連
    # リロード
        execute if entity @s[tag=E.Anchor_Sound_Reload] run function e.anchor:item/ender_anchor/sound/reload
    # サウンドスコア
        scoreboard players remove @s[scores={E.Anchor_Sound=1..}] E.Anchor_Sound 1
        scoreboard players reset @s[scores={E.Anchor_Sound=..0}] E.Anchor_Sound
