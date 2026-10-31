
scoreboard players add heal_other weapon.state 1
$function bs.health:add/health {points:$(heal_other)}
tellraw @s [{translate:zb.item.skill.heal.tellraw.5,with:[{selector:"@p[tag=chosen]"},{translate:zb.item.skill.tellraw.heal.0}]}]