summon marker ~ ~2 ~ {Tags:["mob.skill","skill.ultimatechaoszombie.lightning.particle","chosen"]}
scoreboard players set @n[type=marker,tag=chosen] zombie.chaos.ultimate_chaos_zombie.skill_lightningparticle 0

execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/particle/loop

kill @n[type=marker,tag=chosen]
