# 相对温度显示器说明（点击显示器时给自己看）：当前档位用 ■（tellraw.8/.10），其余用 □（tellraw.7/.9），格式照录像
tellraw @s {translate:"zb.area.temperature.tellraw.5"}
execute unless score #tier area.temperature matches 0 run tellraw @s {translate:"zb.area.temperature.tellraw.7",with:["0","20",{translate:"zb.area.temperature.tellraw.11"}]}
execute if score #tier area.temperature matches 0 run tellraw @s {translate:"zb.area.temperature.tellraw.8",with:["0","20",{translate:"zb.area.temperature.tellraw.11"}]}
execute unless score #tier area.temperature matches 1 run tellraw @s {translate:"zb.area.temperature.tellraw.7",with:["21","40",{translate:"zb.area.temperature.tellraw.12",with:["30%"]}]}
execute if score #tier area.temperature matches 1 run tellraw @s {translate:"zb.area.temperature.tellraw.8",with:["21","40",{translate:"zb.area.temperature.tellraw.12",with:["30%"]}]}
execute unless score #tier area.temperature matches 2 run tellraw @s {translate:"zb.area.temperature.tellraw.7",with:["41","60",{translate:"zb.area.temperature.tellraw.13"}]}
execute if score #tier area.temperature matches 2 run tellraw @s {translate:"zb.area.temperature.tellraw.8",with:["41","60",{translate:"zb.area.temperature.tellraw.13"}]}
execute unless score #tier area.temperature matches 3 run tellraw @s {translate:"zb.area.temperature.tellraw.7",with:["61","80",{translate:"zb.area.temperature.tellraw.12",with:["60%"]}]}
execute if score #tier area.temperature matches 3 run tellraw @s {translate:"zb.area.temperature.tellraw.8",with:["61","80",{translate:"zb.area.temperature.tellraw.12",with:["60%"]}]}
execute unless score #tier area.temperature matches 4 run tellraw @s {translate:"zb.area.temperature.tellraw.7",with:["81","99",{translate:"zb.area.temperature.tellraw.14"}]}
execute if score #tier area.temperature matches 4 run tellraw @s {translate:"zb.area.temperature.tellraw.8",with:["81","99",{translate:"zb.area.temperature.tellraw.14"}]}
execute unless score #tier area.temperature matches 5 run tellraw @s {translate:"zb.area.temperature.tellraw.9",with:["100",{translate:"zb.area.temperature.tellraw.15"}]}
execute if score #tier area.temperature matches 5 run tellraw @s {translate:"zb.area.temperature.tellraw.10",with:["100",{translate:"zb.area.temperature.tellraw.15"}]}
tellraw @s {translate:"zb.area.temperature.tellraw.6"}
