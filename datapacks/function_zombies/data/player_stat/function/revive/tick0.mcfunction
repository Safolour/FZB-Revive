
execute if entity @s[scores={revive.actionbar=1}] at @s unless entity @a[scores={stat.player=2},distance=..2.5] run title @s[scores={system.room=4..,title.color.enable=0}] actionbar [{text:""}]
execute if entity @s[scores={revive.actionbar=1}] at @s unless entity @a[scores={stat.player=2},distance=..2.5] run scoreboard players set @s revive.actionbar 0

execute unless score @s revive.revive_target matches 1.. run return fail

scoreboard players operation uuid revive.revive_target = @s uuid
execute as @a[scores={stat.player=2}] if score @s revive.revive_target = uuid revive.revive_target run return fail
scoreboard players set @s revive.revive_target -1