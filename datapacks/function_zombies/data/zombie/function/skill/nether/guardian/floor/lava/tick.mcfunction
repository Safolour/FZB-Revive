execute if score round game.state matches ..29 run return fail
execute if score round game.state matches 31..39 run return fail
execute if score round game.state matches 41.. run return fail

function zombie:skill/nether/guardian/floor/lava/particle/tick

scoreboard players remove @a[scores={zombie.nether.lava.damage_timer=0..}] zombie.nether.lava.damage_timer 1
scoreboard players remove @a[scores={zombie.nether.lava.motion_timer=0..}] zombie.nether.lava.motion_timer 1
scoreboard players remove @a[scores={zombie.nether.lava.damage_resettimer=1..}] zombie.nether.lava.damage_resettimer 1
scoreboard players set @a[scores={zombie.nether.lava.damage_resettimer=0,zombie.nether.lava.damage_count=1..}] zombie.nether.lava.damage_count 0

execute as @a[scores={stat.player=1},gamemode=adventure] at @s unless block ~ ~-0.25 ~ lava run effect clear @s levitation
execute as @a[scores={stat.player=1},gamemode=adventure] at @s if block ~ ~0.025 ~ lava run function zombie:skill/nether/guardian/floor/lava/damage

execute unless score stat zombie.nether.guardian matches 1.. run return fail

function zombie:skill/nether/guardian/crimson/1/guardian/suspense/player
scoreboard players remove @a[scores={stat.player=1,zombie.nether.guardian.firecd=1..}] zombie.nether.guardian.firecd 1
