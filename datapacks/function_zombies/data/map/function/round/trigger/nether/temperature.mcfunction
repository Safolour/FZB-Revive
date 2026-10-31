function map:area/lab/temperature/display/init

execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 10 1
tellraw @a[scores={system.room=4..}] {"translate":"zb.area.nether",color:yellow,italic:false}
