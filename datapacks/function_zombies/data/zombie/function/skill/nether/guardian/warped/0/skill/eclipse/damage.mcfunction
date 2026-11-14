
function zombie:skill/nether/guardian/warped/0/skill/fire/addwarped

#particle flash ~ ~1 ~
execute unless score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle snowflake ~ ~1 ~ 0 0 0 0.1 1 force @a[scores={particle=1}]

effect give @s slowness 2 1 false

execute store result storage zombie skill.damage double 0.1 run scoreboard players get warpedguardian.eclipse zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{"translate":"zb.zombie.name.eclipse",color:blue}]
