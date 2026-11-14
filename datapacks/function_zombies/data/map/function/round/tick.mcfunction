execute if data storage map:r40 p5_water_pending unless data storage map:r40 p5 unless data storage map:r40 p5_closed run function zombie:skill/nether/firelord/p5/hazards/lava_water_cleanup
execute if score round game.state matches 40 if data storage map:r40 p5 run function zombie:skill/nether/firelord/p5/hazards/tick
execute if score round game.state matches 40 if data storage map:r40 p5_closed run function zombie:skill/nether/firelord/p5/hazards/tick
execute if score round game.state matches 40 if data storage map:r40 p5 run function zombie:skill/nether/firelord/p5/fan/tick
execute if score round game.state matches 40 if data storage map:r40 p5_closed run function zombie:skill/nether/firelord/p5/fan/tick
execute if score type map matches 4 if score round game.state matches 41 unless data storage map:r40 r41_cleaned run function zombie:skill/nether/firelord/p5/cleanup_r40
execute if data storage map:r40 p5_closed if score round game.state matches 40 run function zombie:skill/nether/firelord/p5/return_portal/tick
execute if score round game.state matches 40 if data storage map:r40 p5 run function zombie:skill/nether/firelord/p5/breach/tick
execute if score round game.state matches 40 if data storage map:r40 p5_closed run function zombie:skill/nether/firelord/p5/breach/tick
execute if data storage map:r40 p5 if score round game.state matches 40 run function zombie:skill/nether/firelord/p5/tick
execute if data storage map:r40 p5 if score round game.state matches 40 as @e[type=ghast,tag=firelord.p2.ghast] at @s run function zombie:skill/nether/firelord/p2/ghast/tick
execute if data storage map:r40 p5_closed if score round game.state matches 40 as @e[type=ghast,tag=firelord.p2.ghast] at @s run function zombie:skill/nether/firelord/p2/ghast/tick

# Only an actually started game can be abandoned; end it immediately when its room is empty.
execute if score #game_active round matches 1 unless entity @a[scores={system.room=4..}] run return run function map:round/gameover/0
execute if score tick round matches 1 run function map:round/tick0
# 冻结回合（tick round=0）时回合逻辑不跑，但火焰地板/温度的伤害照常生效：
# 结算检查和结束计时不能停，否则人被烧倒/烧死后会一直停在“等待救援 / 等待下一回合”
execute if score tick round matches 0 if score debug round matches 0 if score #game_active round matches 1 unless entity @a[scores={system.room=4..,stat.player=1}] if score round game.state matches 1.. run function map:round/gameover/0
execute if score tick round matches 0 if score debug round matches 0 if score timer round matches 1.. run scoreboard players remove timer round 1
execute if score tick round matches 0 if score debug round matches 0 if score timer round matches ..0 if score round game.state matches -1 run function map:round/win/0
