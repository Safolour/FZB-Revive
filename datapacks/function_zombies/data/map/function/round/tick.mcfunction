
execute if score tick round matches 1 run function map:round/tick0
# 冻结回合（tick round=0）时回合逻辑不跑，但火焰地板/温度的伤害照常生效：
# 结算检查和结束计时不能停，否则人被烧倒/烧死后会一直停在“等待救援 / 等待下一回合”
execute if score tick round matches 0 if score debug round matches 0 if entity @a[scores={system.room=4..}] unless entity @a[scores={system.room=4..,stat.player=1}] if score round game.state matches 1.. run function map:round/gameover/0
execute if score tick round matches 0 if score debug round matches 0 if score timer round matches 1.. run scoreboard players remove timer round 1
execute if score tick round matches 0 if score debug round matches 0 if score timer round matches ..0 if score round game.state matches -1 run function map:round/win/0