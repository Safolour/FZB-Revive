scoreboard players add @s zombie.lamda.skill_timer 1

execute if score @s zombie.lamda.skill_timer matches 2 run data merge entity @s {NoAI:1b}
execute if score @s zombie.lamda.skill_timer matches 2..30 run function zombie:skill/machine/lamda/skill/sprint/facing
execute if score @s zombie.lamda.skill_timer matches 2..40 run function zombie:skill/machine/lamda/skill/hit_ground/line/init

execute if score @s zombie.lamda.skill_timer matches 41..99 run function zombie:skill/machine/lamda/skill/sprint/tp
execute if score @s zombie.lamda.skill_timer matches 41 run playsound item.totem.use record @a ~ ~ ~ 2 1


execute if score @s zombie.lamda.skill_timer matches 100 run function zombie:skill/machine/lamda/skill/sprint/tpend
execute if score @s zombie.lamda.skill_timer matches 100 run function zombie:skill/machine/lamda/skill/sprint/end
