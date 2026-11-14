# The selector intersects the one-block model footprint with the player hitbox.
# s = surface feet Y x100 - 1; above it the column damages but does not lift.
tag @a[tag=p5.lava_contact] remove p5.lava_contact
tag @a[tag=p5.lava_sub] remove p5.lava_sub
execute positioned 298.0 87.0 214.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=29,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10599}
execute positioned 303.0 87.0 231.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=29,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10199}
execute positioned 319.0 87.0 251.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=27,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10399}
execute positioned 321.0 87.0 193.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=25,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10199}
execute positioned 322.0 81.0 234.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=37,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10999}
execute positioned 323.0 87.0 248.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=27,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:10499}
execute positioned 329.0 83.0 188.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=26,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:9899}
execute positioned 335.0 82.0 254.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=49,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12099}
execute positioned 338.0 79.0 190.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=30,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:9799}
execute positioned 339.0 110.0 286.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=28,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12599}
execute positioned 340.0 81.0 217.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=28,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:9999}
execute positioned 350.0 110.0 293.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=28,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12369}
execute positioned 351.0 79.0 204.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=25,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:9499}
execute positioned 357.0 84.0 235.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=42,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:11599}
execute positioned 361.0 84.0 240.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=15,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:9299}
execute positioned 362.0 110.0 285.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=28,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12679}
execute positioned 373.0 108.0 252.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=29,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12699}
execute positioned 379.0 108.0 272.0 as @a[gamemode=adventure,scores={stat.player=1},dx=0,dy=29,dz=0] run function zombie:skill/nether/firelord/p5/hazards/lava_hit {s:12699}
execute as @a[tag=p5.lava_contact,gamemode=adventure,scores={stat.player=1}] at @s run function zombie:skill/nether/firelord/p5/hazards/lava_damage
execute as @a[tag=p5.lava_sub] run function zombie:skill/nether/firelord/p5/hazards/lava_float
execute as @a[tag=p5.lava_float,tag=!p5.lava_sub] run function zombie:skill/nether/firelord/p5/hazards/lava_unfloat
tag @a[tag=p5.lava_contact] remove p5.lava_contact
tag @a[tag=p5.lava_sub] remove p5.lava_sub
