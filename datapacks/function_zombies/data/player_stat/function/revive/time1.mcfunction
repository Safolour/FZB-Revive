
scoreboard players set @s[scores={system.actionbar=1..}] system.actionbar 1
$execute unless score @s revive.revive_target matches 1.. run title @s[scores={system.actionbar=1,system.room=4..,title.color.enable=0}] actionbar [{translate:"zb.revive.actionbar.1",with:[{text:"§e$(0).$(1)s§r"}]}]
execute unless score @s revive.revive_target matches 1.. run return fail
scoreboard players operation uuid revive.revive_target = @s uuid
execute as @a[scores={stat.player=1},predicate=map:is_sneaking] if score @s revive.revive_target = uuid revive.revive_target run tag @s add target
scoreboard players set @p[tag=target,scores={system.actionbar=1..}] system.actionbar 1
$title @s[scores={system.actionbar=1,system.room=4..,title.color.enable=0}] actionbar [{translate:"zb.revive.actionbar.3",with:[{selector:"@p[tag=target]"},{text:"§c$(0).$(1)§r"}]}]
$title @p[tag=target,scores={system.actionbar=1}] actionbar [{translate:"zb.revive.actionbar.2",with:[{selector:"@p[tag=chosen]"},{text:"§c$(0).$(1)§r"}]}]
tag @p[tag=target] remove target