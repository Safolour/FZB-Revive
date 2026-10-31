
scoreboard players operation match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage = @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage
execute as @a[scores={stat.player=1}] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage = match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage run tag @s add target
scoreboard players reset match zombie.chaos.ultimate_chaos_zombie.skill_lightningdamage

execute unless entity @a[tag=target] run return 0

function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/particle/init
function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/damage/particle/init

tag @a[tag=target] remove target
