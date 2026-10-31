execute if entity @s[tag=skill.suicidezombie.death] run return run function zombie:skill/nether/ashes/suicide_zombie/suicide/tick

execute if score @s zombie.nether.ashes.suicidezombie matches 1.. run scoreboard players remove @s zombie.nether.ashes.suicidezombie 1
execute if score @s zombie.nether.ashes.suicidezombie matches 0 run function zombie:skill/nether/ashes/suicide_zombie/suicide/suicide
