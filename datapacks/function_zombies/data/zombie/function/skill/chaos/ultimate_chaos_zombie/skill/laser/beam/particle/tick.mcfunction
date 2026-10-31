scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/0

execute positioned ^ ^0.1 ^0.0 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/1
execute positioned ^ ^0.1 ^1.5 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/1

execute positioned ^ ^ ^0.0 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/2
execute positioned ^ ^ ^1.0 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/2
execute positioned ^ ^ ^2.0 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/particle/particle/2

execute positioned ^ ^ ^0.0 run particle enchanted_hit ~ ~ ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute positioned ^ ^ ^1.0 run particle enchanted_hit ~ ~ ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute positioned ^ ^ ^2.0 run particle enchanted_hit ~ ~ ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]

tp @s ^ ^ ^3.0

execute positioned ^ ^ ^0.0 as @a[scores={stat.player=1},distance=..2.5] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/damage
execute positioned ^ ^ ^1.5 as @a[scores={stat.player=1},distance=..2.5] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/laser/beam/damage

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 1 run playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 4 run playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 7 run playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 10 run playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1
execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 13 run playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 1


execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 15.. run kill @s
