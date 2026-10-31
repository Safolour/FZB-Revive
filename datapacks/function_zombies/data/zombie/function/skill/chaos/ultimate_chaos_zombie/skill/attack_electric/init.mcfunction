scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_timer 0
tag @s add skill.ultimatechaoszombie.attack_electric

function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_electric/spawn/0

particle flash ~ ~1 ~ 0 0 0 0 0 force @a[scores={particle=0}]
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 1 2
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
