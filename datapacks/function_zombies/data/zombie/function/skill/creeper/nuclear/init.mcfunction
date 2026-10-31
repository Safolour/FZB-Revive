
summon lightning_bolt 300 110 120
summon lightning_bolt 300 110 120

particle firework 300 93 132 0 0 0 0.2 40 force @a[scores={particle=0}]
particle flash 300 93 132 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion 300 93 132 0 0 0 0 1 force @a[scores={particle=0..1}]

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.nuclearcreeper"}]}

summon marker ~ ~ ~ {Tags:["mob.skill","skill.nuclearcreeper.particle"]}

scoreboard players add @e[type=creeper,tag=skill.nuclearcreeper] zombie.nuclearcreeper.match 1
scoreboard players add @e[type=marker,tag=skill.nuclearcreeper.particle] zombie.nuclearcreeper.match 1
