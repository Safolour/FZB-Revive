# The Eclipse cast must survive scoreboard damage as well as vanilla damage.
execute unless entity @s[tag=titan.eclipse.cast] run return 0
scoreboard players set @s zombie.health 37500
scoreboard players set @s zombie.health0 37500
