scoreboard players operation match zombie.diamondgiant.match = @s zombie.diamondgiant.match
execute as @e[type=item_display,tag=skill.diamondgiant.sword] if score @s zombie.diamondgiant.match = match zombie.diamondgiant.match run kill @s
kill @s

playsound block.anvil.land record @a ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder record @a ~ ~ ~ 2 0

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
summon lightning_bolt ~ ~ ~
summon lightning_bolt ~ ~ ~

execute if entity @e[type=zombie,tag=skill.mutategiant] run summon marker ~ ~ ~ {Tags:["skill.mutategiant"]}
execute if entity @a[scores={stat.player=1},distance=..5] as @a[scores={stat.player=1},distance=..5] at @s run function zombie:skill/giant/diamond/damage
kill @e[type=marker,tag=skill.mutategiant]
