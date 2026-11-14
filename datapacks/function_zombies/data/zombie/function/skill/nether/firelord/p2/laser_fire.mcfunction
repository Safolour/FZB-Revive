particle flame ~ ~ ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle flame ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle large_smoke ~ ~ ~ 0 0 0 0.1 10 force @a[scores={particle=1}]
particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ~ ~ ~ 0 0 0 0 5 force @a[scores={particle=0}]
particle lava ~ ~ ~ 0 0 0 0 2 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle lava ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound entity.warden.sonic_boom hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 1
tag @a[tag=firelord.p2.laserhit] remove firelord.p2.laserhit
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^0.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^0.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^0.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^0.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^0.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^0.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^0.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^0.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^0.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^0.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^0.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^0.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^0.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^0.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^1.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^1.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^1.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^1.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^1.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^1.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^1.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^1.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^1.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^1.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^1.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^1.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^1.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^1.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^1.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^1.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^2.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^2.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^2.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^2.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^2.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^2.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^2.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^2.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^2.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^2.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^2.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^2.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^2.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^2.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^2.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^2.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^3.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^3.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^3.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^3.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^3.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^3.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^3.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^3.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^3.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^3.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^3.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^3.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^3.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^3.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^3.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^3.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^4.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^4.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^4.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^4.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^4.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^4.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^4.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^4.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^4.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^4.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^4.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^4.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^4.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^4.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^4.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^4.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^5.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^5.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^5.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^5.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^5.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^5.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^5.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^5.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^5.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^5.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^5.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^5.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^5.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^5.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^5.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^5.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^6.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^6.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^6.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^6.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^6.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^6.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^6.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^6.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^6.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^6.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^6.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^6.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^6.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^6.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^6.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^6.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^7.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^7.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^7.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^7.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^7.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^7.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^7.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^7.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^7.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^7.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^7.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^7.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^7.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^7.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^7.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^7.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^8.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^8.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^8.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^8.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^8.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^8.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^8.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^8.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^8.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^8.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^8.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^8.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^8.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^8.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^8.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^8.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^9.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^9.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^9.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^9.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^9.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^9.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^9.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^9.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^9.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^9.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^9.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^9.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^9.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^9.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^9.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^9.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^10.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^10.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^10.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^10.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^10.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^10.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^10.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^10.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^10.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^10.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^10.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^10.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^10.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^10.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^10.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^10.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^11.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^11.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^11.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^11.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^11.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^11.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^11.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^11.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^11.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^11.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^11.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^11.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^11.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^11.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^11.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^11.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^12.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^12.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^12.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^12.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^12.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^12.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^12.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^12.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^12.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^12.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^12.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^12.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^12.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^12.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^12.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^12.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^13.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^13.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^13.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^13.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^13.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^13.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^13.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^13.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^13.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^13.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^13.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^13.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^13.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^13.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^13.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^13.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^14.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^14.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^14.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^14.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^14.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^14.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^14.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^14.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^14.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^14.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^14.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^14.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^14.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^14.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^14.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^14.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^15.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^15.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^15.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^15.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^15.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^15.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^15.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^15.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^15.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^15.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^15.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^15.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^15.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^15.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^15.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^15.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^16.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^16.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^16.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^16.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^16.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^16.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^16.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^16.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^16.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^16.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^16.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^16.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^16.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^16.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^16.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^16.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^17.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^17.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^17.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^17.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^17.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^17.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^17.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^17.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^17.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^17.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^17.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^17.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^17.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^17.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^17.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^17.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^18.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^18.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^18.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^18.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^18.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^18.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^18.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^18.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^18.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^18.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^18.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^18.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^18.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^18.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^18.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^18.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^19.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^19.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^19.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^19.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^19.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^19.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^19.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^19.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^19.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^19.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^19.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^19.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^19.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^19.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^19.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^19.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^20.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^20.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^20.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^20.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^20.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^20.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^20.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^20.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^20.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^20.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^20.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^20.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^20.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^20.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^20.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^20.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^21.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^21.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^21.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^21.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^21.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^21.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^21.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^21.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^21.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^21.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^21.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^21.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^21.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^21.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^21.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^21.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^22.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^22.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^22.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^22.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^22.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^22.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^22.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^22.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^22.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^22.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^22.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^22.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^22.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^22.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^22.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^22.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^23.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^23.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^23.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^23.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^23.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^23.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^23.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^23.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^23.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^23.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^23.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^23.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^23.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^23.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^23.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^23.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^24.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^24.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^24.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^24.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^24.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^24.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^24.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^24.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^24.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^24.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^24.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^24.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^24.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^24.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^24.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^24.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^25.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^25.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^25.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^25.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^25.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^25.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^25.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^25.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^25.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^25.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^25.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^25.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^25.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^25.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^25.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^25.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^26.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^26.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^26.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^26.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^26.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^26.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^26.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^26.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^26.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^26.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^26.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^26.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^26.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^26.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^26.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^26.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^27.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^27.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^27.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^27.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^27.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^27.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^27.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^27.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^27.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^27.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^27.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^27.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^27.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^27.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^27.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^27.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^28.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^28.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^28.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^28.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^28.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^28.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^28.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^28.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^28.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^28.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^28.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^28.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^28.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^28.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^28.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^28.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^29.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^29.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^29.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^29.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^29.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^29.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^29.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^29.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^29.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^29.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^29.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^29.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^29.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^29.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^29.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^29.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^30.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^30.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^30.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^30.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^30.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^30.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^30.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^30.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^30.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^30.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^30.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^30.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^30.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^30.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^30.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^30.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^31.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^31.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^31.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^31.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^31.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^31.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^31.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^31.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^31.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^31.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^31.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^31.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^31.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^31.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^31.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^31.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^32.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^32.0 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^32.0 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^32.0 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^32.0 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^32.0 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^32.0 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^32.0 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^32.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:4.0} ^0 ^0.2 ^32.5 0 0 0 0 1 force @a[scores={particle=1}]
particle lava ^0 ^0.2 ^32.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle lava ^0 ^0.2 ^32.5 0 0 0 0 1 force @a[scores={particle=1}]
particle dripping_lava ^0 ^0.2 ^32.5 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
particle dripping_lava ^0 ^0.2 ^32.5 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]
execute positioned ^0 ^0.2 ^32.5 positioned ~ ~-1.3 ~ run tag @a[gamemode=adventure,scores={stat.player=1},distance=..0.8] add firelord.p2.laserhit
execute positioned ^0 ^0.2 ^32.5 positioned ~ ~-1.3 ~ run tag @e[type=marker,tag=firelord.p2.safe,distance=..5] add firelord.p2.laserblocked
scoreboard players set #shielddamage zombie.health 120
execute as @e[type=marker,tag=firelord.p2.safe,tag=firelord.p2.laserblocked] at @s run function zombie:skill/nether/firelord/p2/safe_hit
execute as @a[tag=firelord.p2.laserhit] at @s unless entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run function zombie:skill/nether/firelord/p2/hit
tag @e[type=marker,tag=firelord.p2.safe] remove firelord.p2.laserblocked
tag @a[tag=firelord.p2.laserhit] remove firelord.p2.laserhit
