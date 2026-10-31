function zombie:skill/machine/observereye/clear

summon marker 310 101 150 {Tags:["mob.skill","skill.observereye0","skill.observereye0.0","skill.observereye"]}
summon armor_stand 310 100.5 150 {Tags:["skill.observereye0","skill.observereye0.1"],Invisible:1b,Marker:1b,CustomName:{"translate":"zb.zombie.name.observereye"},CustomNameVisible:1b}
summon armor_stand 310 100.2 150 {Tags:["skill.observereye0","skill.observereye0.2"],Invisible:1b,Marker:1b,CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.5"}]},CustomNameVisible:1b}

summon marker 290 101 150 {Tags:["mob.skill","skill.observereye1","skill.observereye1.0","skill.observereye"]}
summon armor_stand 290 100.5 150 {Tags:["skill.observereye1","skill.observereye1.1"],Invisible:1b,Marker:1b,CustomName:{"translate":"zb.zombie.name.observereye"},CustomNameVisible:1b}
summon armor_stand 290 100.2 150 {Tags:["skill.observereye1","skill.observereye1.2"],Invisible:1b,Marker:1b,CustomName:{"translate":"zb.zombe.observereye.0",with:[{"translate":"zb.zombe.observereye.5"}]},CustomNameVisible:1b}

summon lightning_bolt 310 101 150
summon lightning_bolt 310 101 150
summon lightning_bolt 290 101 150
summon lightning_bolt 290 101 150

particle explosion 310 101 150 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion 290 101 150 0 0 0 0 1 force @a[scores={particle=0}]
particle firework 310 101 150 0 0 0 0.2 50 force @a[scores={particle=0}]
particle firework 290 101 150 0 0 0 0.2 50 force @a[scores={particle=0}]

tellraw @a[scores={system.room=4..}] {"translate":"zb.zombe.observereye.tellraw.0",with:[{"translate":"zb.zombie.name.observereye"}]}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1

function zombie:skill/machine/observereye/start
function zombie:skill/machine/observereye/active

scoreboard players set tick zombie.observereye 1

summon marker ~ ~ ~ {Tags:["mob.skill","skill.observereye.target"]}
