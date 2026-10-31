scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run item replace entity @s weapon.mainhand with tnt
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run playsound entity.sniffer.drop_seed record @a ~ ~ ~ 2 0

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 20 run team join zombie.chaos.ultimate_chaos_zombie.1 @s
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 20 run effect give @s glowing infinite 0 true


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 20..30 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/throw/init0
#execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 40..50 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/position/init


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run team join mob
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run effect clear @s glowing


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 30 run item replace entity @s weapon.mainhand with air

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 80 run item replace entity @s weapon.mainhand with diamond_sword[attribute_modifiers=[{id:"attack_damage",type:"minecraft:attack_damage",amount:0,operation:"add_value"}]]

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 80 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/end
