
#获取时间戳
execute store result score time1 time run data get storage base64 root.decode.text1
execute store result score time2 time run data get storage base64 root.decode.text2

#算自定义的时间戳
#scoreboard players set time1 time 732973500
#scoreboard players set time2 time 1

#从2024年开始计算
scoreboard players set year time 2024
scoreboard players set day time 1
scoreboard players set hour time 0
scoreboard players set minute time 0
scoreboard players set second time 0
#scoreboard players add time2 time 28800
scoreboard players remove time1 time 86400

scoreboard players remove time1 time 704038400
scoreboard players remove time2 time 1
execute if score time1 time matches ..0 run scoreboard players remove time2 time 1
execute if score time1 time matches ..0 run scoreboard players add time1 time 1000000000
function system:time/operation/year
function system:time/operation/month
function system:time/operation/day
#function system:time/operation/hour
#function system:time/operation/minute
#scoreboard players operation second time = time1 time
