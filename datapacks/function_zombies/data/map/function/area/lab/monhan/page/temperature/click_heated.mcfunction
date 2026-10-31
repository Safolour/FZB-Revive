# 加热完（43）/ 净化完（45）：1 = 继续加热（“我还想继续加热！”/“好冷啊...我需要加热...”），其余回主菜单
execute if score #idx monhan matches 1 run return run function map:area/lab/monhan/page/temperature/heat
function map:area/lab/monhan/page/main/show
