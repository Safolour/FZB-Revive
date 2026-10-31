
execute if score @s area matches 100..199 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=cave] path.way_point.order0 -1
execute if score @s area matches 200..299 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=ruins] path.way_point.order0 -1
execute if score @s area matches 300..399 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=karst] path.way_point.order0 -1
execute if score @s area matches 400..499 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=relic] path.way_point.order0 -1
execute if score @s area matches 500..599 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=forge] path.way_point.order0 -1
execute if score @s area matches 600..699 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=powerstation] path.way_point.order0 -1
execute if score @s area matches 700 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_blue] path.way_point.order0 -1
execute if score @s area matches 701 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_yellow] path.way_point.order0 -1
execute if score @s area matches 702 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_green] path.way_point.order0 -1
execute if score @s area matches 703 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_gray] path.way_point.order0 -1
execute if score @s area matches 704..705 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_portal] path.way_point.order0 -1
execute if score @s area matches 706 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_light] path.way_point.order0 -1
execute if score @s area matches 707 run return run scoreboard players set @n[type=skeleton,tag=way_point,tag=laboratory_shadow] path.way_point.order0 -1
scoreboard players set @n[type=skeleton,tag=way_point] path.way_point.order0 -1
