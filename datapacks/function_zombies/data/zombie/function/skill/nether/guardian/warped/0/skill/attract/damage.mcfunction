#say damage
#particle explosion ~ ~1 ~

#return fail

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.attract.motion","chosen"]}
tp @n[type=marker,tag=chosen] ~ ~ ~ facing entity @e[type=elder_guardian,tag=skill.warpedguardian,limit=1]
execute as @n[type=marker,tag=chosen] at @s run tp @s ^ ^ ^10

execute store result score x zombie.nether.guardian.attract run data get entity @n[type=marker,tag=chosen] Pos[0] 800
execute store result score z zombie.nether.guardian.attract run data get entity @n[type=marker,tag=chosen] Pos[2] 800

execute store result score x0 zombie.nether.guardian.attract run data get entity @s Pos[0] 800
execute store result score z0 zombie.nether.guardian.attract run data get entity @s Pos[2] 800

scoreboard players operation x zombie.nether.guardian.attract -= x0 zombie.nether.guardian.attract
scoreboard players operation z zombie.nether.guardian.attract -= z0 zombie.nether.guardian.attract


scoreboard players operation $x player_motion.api.launch = x zombie.nether.guardian.attract
scoreboard players set $y player_motion.api.launch 200
scoreboard players operation $z player_motion.api.launch = z zombie.nether.guardian.attract
function player_motion:api/launch_xyz

scoreboard players reset x zombie.nether.guardian.attract
scoreboard players reset z zombie.nether.guardian.attract
scoreboard players reset x0 zombie.nether.guardian.attract
scoreboard players reset z0 zombie.nether.guardian.attract
kill @e[type=marker,tag=skill.warpedguardian.attract.motion]

#function zombie:skill/nether/guardian/crimson/0/skill/fire/addcrimson

#execute store result storage zombie skill.damage double 0.1 run scoreboard players get crimsonguardian.attract zombie.skill.damage
#function zombie:skill/damage with storage zombie skill
#data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.warpedguardian",color:"#dc143c"}]
#say damage
