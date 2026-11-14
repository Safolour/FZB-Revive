execute if entity @s[distance=..0.3,x=300.85,y=104.72,z=150.1] run tag @s add firelord.p2.bomb_arrived
execute unless entity @s[tag=firelord.p2.bomb_arrived] run tp @e[type=marker,tag=firelord.p2.ghast.target,limit=1] 300.85 104.72 150.1
execute unless entity @s[tag=firelord.p2.bomb_arrived] run function zombie:skill/nether/firelord/p2/ghast/bomb_steer
