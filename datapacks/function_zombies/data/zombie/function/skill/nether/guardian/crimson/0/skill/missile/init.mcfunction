function zombie:skill/nether/guardian/crimson/0/skill/missile/end

tag @s add skill.crimsonguardian.missile

scoreboard players set @s zombie.nether.guardian.missile 0

effect give @s glowing infinite 0 true
team join zombie.crimsonguardian

particle soul_fire_flame ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
playsound entity.wither.ambient record @a ~ ~ ~ 2 1

tp @e[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~ ~ facing entity @p[scores={stat.player=1}]
