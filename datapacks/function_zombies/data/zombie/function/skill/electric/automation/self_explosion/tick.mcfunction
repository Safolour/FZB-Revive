particle smoke ~ ~1.2 ~ 0 0 0 0.1 2 force @a[scores={particle=0}]

scoreboard players add @s zombie.electric.automation.selfexplosion 1
execute if score @s zombie.electric.automation.selfexplosion matches 60 run function zombie:skill/electric/automation/self_explosion/init

execute if score @s zombie.electric.automation.selfexplosion matches 60 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 65 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 70 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 74 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 77 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 79 run playsound block.note_block.bit record @a ~ ~ ~ 1.5 2
execute if score @s zombie.electric.automation.selfexplosion matches 80 run function zombie:skill/electric/automation/self_explosion/death
