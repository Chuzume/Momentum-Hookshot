
# 空撃ち
    execute if entity @s[tag=E.Anchor_NoUse,scores={E.Anchor_Shot=0..}] run function e.anchor:item/ender_anchor/shot_fail

# アンカー射出
    execute if entity @s[tag=!E.Anchor_NoUse,scores={E.Anchor_Shot=0..}] run function e.anchor:item/ender_anchor/shot_anchor

# リロード時間減算
    scoreboard players remove @s[scores={E.Anchor_Reload=1..}] E.Anchor_Reload 1
    tag @s[scores={E.Anchor_Reload=..0}] add E.Anchor_ReloadFinish
    scoreboard players reset @s[scores={E.Anchor_Reload=..0}] E.Anchor_Reload

# リロード完了
    execute if entity @s[tag=E.Anchor_ReloadFinish] run function e.anchor:item/ender_anchor/reload

# 音関連
    # リロード
        execute if entity @s[tag=E.Anchor_Sound_Reload] run function e.anchor:item/ender_anchor/sound/reload
    # リロード
        execute if entity @s[tag=E.Anchor_Sound_FailShot] run function e.anchor:item/ender_anchor/sound/failshot
    # サウンドスコア
        scoreboard players remove @s[scores={E.Anchor_Sound=1..}] E.Anchor_Sound 1
        scoreboard players reset @s[scores={E.Anchor_Sound=..0}] E.Anchor_Sound
