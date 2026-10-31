scoreboard players add @s zombie.chaos.chaos_golem.skill_timerspawn 1

execute if score @s[tag=!skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 10 run damage @s 0.01 generic_kill by @a[scores={stat.player=1},sort=nearest,limit=1]
execute if score @s[tag=!skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 20 run damage @s 0.01 generic_kill by @a[scores={stat.player=1},sort=nearest,limit=1]
execute if score @s[tag=!skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 20 run scoreboard players set @s zombie.chaos.chaos_golem.skill_timerspawn 1

execute if entity @s[x=296,y=99,z=131,dx=8,dy=4,dz=7,tag=!skill.chaosgolem.spawn.jump] run function zombie:skill/chaos/chaos_golem/spawn/jump/init

execute if score @s[tag=skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 11 run function zombie:skill/chaos/chaos_golem/spawn/jump/motion

execute if score @s[tag=skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 31 run function zombie:skill/chaos/chaos_golem/spawn/jump/ground

execute if score @s[tag=skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 61 run function zombie:skill/chaos/chaos_golem/spawn/jump/end

execute if score @s[tag=skill.chaosgolem.spawn.jump] zombie.chaos.chaos_golem.skill_timerspawn matches 11..31 run particle electric_spark ~ ~0.5 ~ 0.3 0.1 0.3 0.3 5 force @a[scores={particle=0}]
