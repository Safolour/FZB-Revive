# Migrate existing bosses without resetting their other skill timers.
function zombie:skill/creation/origin/melee_config
execute unless score @s origin.melee_cd = @s origin.melee_cd run scoreboard players set @s origin.melee_cd 20
scoreboard players remove @s origin.melee_cd 1
# Only attack where vanilla AI was allowed to attack; travel/casting must not hit.
execute if data entity @s {NoAI:1b} run return 0
execute if data entity @s {Invisible:1b} run return 0
execute if entity @s[tag=origin.intro] run return 0
execute if entity @s[tag=origin.arrive] run return 0
execute if entity @s[tag=origin.depart] run return 0
execute if entity @s[tag=origin.transition] run return 0
execute if entity @s[tag=origin.p2] run return 0
execute unless score @s origin.melee_cd matches ..0 run return 0
# Conservative short reach. The previous vanilla hit and the wider pulse are distinct.
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2] run return 0
scoreboard players set @s origin.melee_cd 20
tag @s add origin.brutality.swing
scoreboard players set #origin.melee.ray origin.tool_cfg 0
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2,sort=nearest,limit=1] positioned ~ ~1.3 ~ facing entity @s eyes run function zombie:skill/creation/origin/melee/line
