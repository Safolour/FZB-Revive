scoreboard players set @s setting.dps 0
scoreboard players set @s setting.dps_total 0
scoreboard players set @s setting.dps_ticks 0
scoreboard players set @s setting.dps_clock 0
scoreboard players set @s setting.dps_idle 0
scoreboard players set @s setting.dps_span 0
scoreboard players set @s setting.dps_run 1
tellraw @s [{text:"[伤害测试] ",color:"gold",bold:true},{text:"已开始记录伤害，停手 3 秒后结算。",color:"gray",bold:false}]

