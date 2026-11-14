# Displace this small flame away from a nearby eclipse flame while retaining its aim.
tag @s add firelord.eclipse.pushing
execute if entity @e[type=armor_stand,tag=firelord.eclipse.fire,tag=!firelord.eclipse.pushing,distance=..0.9] facing entity @e[type=armor_stand,tag=firelord.eclipse.fire,tag=!firelord.eclipse.pushing,distance=..0.9,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12
tag @s remove firelord.eclipse.pushing
