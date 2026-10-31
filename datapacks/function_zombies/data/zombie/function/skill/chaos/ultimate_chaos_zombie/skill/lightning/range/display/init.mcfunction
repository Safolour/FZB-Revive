
summon item_display ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie.lightning.display","chosen"],item:{id:diamond,components:{item_model:"custom:lightning_circle"}}}

scoreboard players add @e[type=item_display,tag=skill.ultimatechaoszombie.lightning.display] zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay 1
scoreboard players add @e[type=zombie,tag=skill.ultimatechaoszombie] zombie.chaos.ultimate_chaos_zombie.skill_lightningdisplay 1

tag @e[type=item_display,tag=chosen] remove chosen
