# Two multiplayer recordings show the prompt when the last visible player reaches the core side of the gate.
tag @a[tag=firelord.p5.inside] remove firelord.p5.inside
tag @a[gamemode=adventure,scores={stat.player=1..2,system.room=4..},x=270,y=50,z=173,dx=60,dy=100,dz=127] add firelord.p5.inside
execute if entity @a[gamemode=adventure,scores={stat.player=1..2,system.room=4..}] unless entity @a[gamemode=adventure,tag=!firelord.p5.inside,scores={stat.player=1..2,system.room=4..}] run function zombie:skill/nether/firelord/p5/door_warn
