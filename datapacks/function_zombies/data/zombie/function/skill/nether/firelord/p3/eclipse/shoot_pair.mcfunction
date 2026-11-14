# The temporary marker represents the nearest eligible player's body centre.
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80,sort=nearest,limit=1] at @s positioned ~ ~0.9 ~ run summon marker ~ ~ ~ {Tags:["firelord.eclipse.aim_target"]}
execute facing entity @e[type=marker,tag=firelord.eclipse.aim_target,sort=nearest,limit=1] feet run function zombie:skill/nether/firelord/p3/eclipse/shoot_aimed
kill @e[type=marker,tag=firelord.eclipse.aim_target,sort=nearest,limit=1]
function zombie:skill/nether/firelord/p3/eclipse/shoot_scatter
