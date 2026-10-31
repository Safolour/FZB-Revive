particle flash ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0..1}]
particle firework ^ ^ ^-1 0 0 0 0.1 5 force @a[scores={particle=0}]

playsound entity.firework_rocket.large_blast record @a ~ ~ ~ 3 1
playsound entity.player.hurt_drown record @a ~ ~ ~ 3 0

tag @s add target0
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.0] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage0
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.1] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage1
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.2] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage2
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.3] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage3
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.4] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage4
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.5] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage5
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.6] as @a[scores={stat.player=1},distance=..2] at @s run function zombie:skill/rainbow/rocketlauncher/damage6

tag @s remove target0
execute on passengers run kill @s
kill @s
