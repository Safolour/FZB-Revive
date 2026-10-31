scoreboard players add @s zombie.rainbow 1
execute if score @s zombie.rainbow matches 1..3 run tp @s ^ ^0.1 ^0.1
execute if score @s zombie.rainbow matches 4..6 run tp @s ^ ^0.05 ^0.2
execute if score @s zombie.rainbow matches 7..9 run tp @s ^ ^ ^0.4
execute if score @s zombie.rainbow matches 10..19 run tp @s ^ ^-0.08 ^0.7
execute if score @s zombie.rainbow matches 20.. run tp @s ^ ^-0.08 ^1

execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.0] run particle dust_color_transition{from_color:16711680,to_color:16771584,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.1] run particle dust_color_transition{from_color:16742144,to_color:10092288,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.2] run particle dust_color_transition{from_color:16768256,to_color:65318,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.3] run particle dust_color_transition{from_color:6355456,to_color:46079,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.4] run particle dust_color_transition{from_color:52479,to_color:10027263,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.5] run particle dust_color_transition{from_color:17663,to_color:16711680,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute on passengers if entity @s[tag=skill.rainbowzombie.rocketlauncher.missile.6] run particle dust_color_transition{from_color:7536895,to_color:16751872,scale:1} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/rainbow/rocketlauncher/explosion
execute positioned ~ ~-1 ~ if entity @a[scores={stat.player=1},distance=..2] run function zombie:skill/rainbow/rocketlauncher/explosion
execute if score @s zombie.rainbow matches 50.. run function zombie:skill/rainbow/rocketlauncher/explosion
