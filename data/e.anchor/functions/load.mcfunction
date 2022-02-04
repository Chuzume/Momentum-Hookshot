
# 他のライブラリに必要なものもこっから呼び出してやる
    function oh_my_dat:sys/load

# スコアボード作成
    scoreboard objectives add E.Anchor_PosY dummy
    scoreboard objectives add E.Anchor_Effect dummy
    scoreboard objectives add E.Anchor_Dist dummy
    scoreboard objectives add E.Anchor_RClick minecraft.used:minecraft.warped_fungus_on_a_stick

# 飛び道具の弾速
    scoreboard objectives add Chuz.Range dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Recursion dummy

# 共有スコアボード
    scoreboard objectives add ColSlime_Time dummy
    scoreboard objectives add ColSlime_Power dummy 
    scoreboard objectives add Chuz.Temporary dummy 
    scoreboard objectives add Chuz.Const dummy 
    scoreboard objectives add Chuz.Time dummy 

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
    scoreboard players set $40 Chuz.Const 40
    scoreboard players set $-1 Chuz.Const -1
    scoreboard players set $-25 Chuz.Const -25

# スコアIDだ
    scoreboard objectives add Chuz_Pl.IDCore dummy
    scoreboard objectives add Chuz_Pl.ID dummy
    scoreboard objectives add Chuz_En.ID dummy
    scoreboard objectives add Chuz_Mo.ID dummy