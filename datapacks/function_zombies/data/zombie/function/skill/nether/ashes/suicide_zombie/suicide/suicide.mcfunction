tag @s add skill.suicidezombie.death
tag @s remove hitable
scoreboard players reset @s zombie.nether.ashes.suicidezombie
data merge entity @s {NoAI:1b,Invulnerable:1b,Silent:1b}
tp @s ~ ~ ~ ~ -70
effect give @s invisibility infinite 0 true

playsound entity.elder_guardian.curse record @a ~ ~ ~ 2 0
playsound block.note_block.pling record @a ~ ~ ~ 1.5 2
playsound entity.wither.death record @a ~ ~ ~ 2 0

#summon marker ~ ~ ~ {Tags:["mob.skill","skill.suicidezombie.particle"]}

execute if entity @a[scores={stat.player=1},distance=..5] as @a[scores={stat.player=1},distance=..5] run function zombie:skill/nether/ashes/suicide_zombie/suicide/warning
