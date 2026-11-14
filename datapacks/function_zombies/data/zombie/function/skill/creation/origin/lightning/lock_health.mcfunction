# Hold each large-strike threshold until its strike starts, then only for that cast.
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=!origin.p2,tag=!origin.transition,tag=!origin.large75,scores={zombie.health=..112500}] run scoreboard players set @s zombie.health 112500
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large75,tag=!origin.p2,tag=!origin.transition,tag=!origin.large25,scores={zombie.health=..37500}] run scoreboard players set @s zombie.health 37500
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large75,tag=!origin.large25,tag=!origin.transition,scores={origin.big=1,origin.cast=1..,zombie.health=..112500}] run scoreboard players set @s zombie.health 112500
execute if entity @s[tag=skill.origin,tag=origin.ready,tag=origin.large25,tag=!origin.transition,scores={origin.big=1,origin.cast=1..,zombie.health=..37500}] run scoreboard players set @s zombie.health 37500
