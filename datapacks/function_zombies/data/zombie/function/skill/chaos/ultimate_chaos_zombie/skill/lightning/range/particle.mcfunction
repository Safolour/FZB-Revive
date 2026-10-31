
execute store result storage zombie root.circle.range int 100 run scoreboard players get @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange

execute store result storage zombie root.circle.rangeelectricparticle int 0.05 run scoreboard players get @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange
execute store result storage zombie root.circle.rangeelectricparticlecount int 0.5 run scoreboard players get @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/particle0 with storage zombie root.circle
data remove storage zombie root.circle
