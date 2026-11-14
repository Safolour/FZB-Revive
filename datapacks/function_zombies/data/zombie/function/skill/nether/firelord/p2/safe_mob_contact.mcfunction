tag @s add firelord.safe.contact
scoreboard players add @s fl.safe.melee 1
execute if score @s fl.safe.melee matches 20.. run function zombie:skill/nether/firelord/p2/safe_mob_hit
execute if entity @e[type=marker,tag=firelord.p2.safe,distance=..5.15] facing entity @e[type=marker,tag=firelord.p2.safe,sort=nearest,limit=1,distance=..5.4] feet rotated ~ 0 positioned ^ ^ ^-0.3 run tp @s ~ ~ ~
