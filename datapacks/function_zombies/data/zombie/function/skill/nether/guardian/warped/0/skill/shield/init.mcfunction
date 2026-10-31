
tag @s add skill.warpedguardian.shield

tag @s add nogold

scoreboard players set @s zombie.armor 100

summon marker ~ ~ ~ {Tags:["mob.skill","skill.warpedguardian.shield"]}

particle end_rod ~ ~1 ~ 0 0 0 0.3 100 force @a[scores={particle=0}]
playsound entity.illusioner.prepare_mirror record @a ~ ~ ~ 10 2


tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.shield.tellraw.1"}
execute as @a[scores={system.room=4..}] at @s run playsound block.note_block.pling record @s ~ ~ ~ 10 1
