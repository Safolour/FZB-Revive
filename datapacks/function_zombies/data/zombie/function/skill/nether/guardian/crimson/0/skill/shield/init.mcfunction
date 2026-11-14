
tag @s add skill.crimsonguardian.shield

tag @s add nogold

scoreboard players set @s zombie.armor 100

summon marker ~ ~ ~ {Tags:["mob.skill","skill.crimsonguardian.shield"]}

execute unless score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.3 50 force @a[scores={particle=1}]
playsound entity.illusioner.prepare_mirror record @a ~ ~ ~ 10 2


tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.shield.tellraw.0"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
