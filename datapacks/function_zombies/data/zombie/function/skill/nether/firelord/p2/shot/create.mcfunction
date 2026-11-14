execute unless entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..}] run return 0
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 20 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 10 force @a[scores={particle=1}]
playsound entity.ghast.shoot hostile @a[scores={system.room=4..}] ~ ~ ~ 3 1
summon marker ~ ~ ~ {Tags:["firelord.p2.shot","firelord.p2.shot.new"]}
execute as @e[type=marker,tag=firelord.p2.shot.new,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..}] eyes
scoreboard players set @e[type=marker,tag=firelord.p2.shot.new,limit=1,sort=nearest] zombie.skill_timer 0
scoreboard players set @e[type=marker,tag=firelord.p2.shot.new,limit=1,sort=nearest] zombie.skill.damage 0
tag @e[type=marker,tag=firelord.p2.shot.new,limit=1,sort=nearest] remove firelord.p2.shot.new
