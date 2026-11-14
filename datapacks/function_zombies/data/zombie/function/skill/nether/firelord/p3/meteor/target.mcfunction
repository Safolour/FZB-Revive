# Each active arena player gets a marker at their current position every volley.
execute as @a[scores={stat.player=1},gamemode=adventure,x=286,y=90,z=129,dx=28,dy=25,dz=44] at @s positioned ~ 92 ~ run function zombie:skill/nether/firelord/p3/meteor/mark
