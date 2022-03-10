
# ここが変わると困っちゃうんだな
    gamerule maxCommandChainLength 65536

# 他のライブラリに必要なものもこっから呼び出してやる
    function oh_my_dat:sys/load

# スコアボード作成
    scoreboard objectives add E.Anchor_PosY dummy
    scoreboard objectives add E.Anchor_Effect dummy
    scoreboard objectives add E.Anchor_Dist dummy
    scoreboard objectives add E.Anchor_Resist dummy
    scoreboard objectives add E.Anchor_Sound dummy
    scoreboard objectives add E.Anchor_Reload dummy
    scoreboard objectives add E.Anchor_NoFall dummy
    scoreboard objectives add E.Anchor_NoFall2 dummy
    scoreboard objectives add E.Anchor_Shot minecraft.used:minecraft.crossbow

# 飛び道具の弾速
    scoreboard objectives add Chuz.Range dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Recursion dummy

# 共有スコアボード
    scoreboard objectives add ColSlime_Time dummy
    scoreboard objectives add ColSlime_Power dummy 
    scoreboard objectives add Chuz.Temporary dummy 
    scoreboard objectives add Chuz.ItemCheck dummy 
    scoreboard objectives add Chuz.Const dummy 
    scoreboard objectives add Chuz.Time dummy 
    scoreboard objectives add Chuz.Calc dummy

# Const定義
    scoreboard players set $31743 Chuz.Const 31743
    scoreboard players set $65535 Chuz.Const 65535
    scoreboard players set $1 Chuz.Const 1
    scoreboard players set $2 Chuz.Const 2
    scoreboard players set $3 Chuz.Const 3
    scoreboard players set $4 Chuz.Const 4
    scoreboard players set $5 Chuz.Const 5
    scoreboard players set $6 Chuz.Const 6
    scoreboard players set $7 Chuz.Const 7
    scoreboard players set $8 Chuz.Const 8
    scoreboard players set $9 Chuz.Const 9
    scoreboard players set $10 Chuz.Const 10
    scoreboard players set $15 Chuz.Const 15
    scoreboard players set $20 Chuz.Const 20
    scoreboard players set $30 Chuz.Const 30
    scoreboard players set $40 Chuz.Const 40
    scoreboard players set $45 Chuz.Const 45
    scoreboard players set $50 Chuz.Const 50
    scoreboard players set $-1 Chuz.Const -1
    scoreboard players set $-25 Chuz.Const -25

# スコアIDだ
    scoreboard objectives add Chuz_Pl.IDCore dummy
    scoreboard objectives add Chuz_Pl.ID dummy
    scoreboard objectives add Chuz_En.ID dummy
    scoreboard objectives add Chuz_Mo.ID dummy