particle dust{color:[1,0,0],scale:1} ~ ~5 ~ 0.1 10 0.1 0 20 force @a[scores={particle=0}]

scoreboard players add @s zombie.nuclearbomb 1
tp @s ~ ~ ~ ~2 ~

execute if score @s zombie.nuclearbomb matches ..300 run function zombie:skill/creeper/nuclearbomb/laser

scoreboard players operation cooldown zombie.nuclearbomb = @s zombie.nuclearbomb
scoreboard players set 7 zombie.nuclearbomb 7
scoreboard players operation cooldown zombie.nuclearbomb %= 7 zombie.nuclearbomb
execute if score cooldown zombie.nuclearbomb matches 0 run playsound block.note_block.pling record @a ~ ~ ~ 10 1.7
scoreboard players reset cooldown zombie.nuclearbomb
scoreboard players reset 7 zombie.nuclearbomb
execute if score @s zombie.nuclearbomb matches 119.. unless score cooldown zombie.nuclearbomb matches 0 run playsound block.note_block.pling record @a ~ ~ ~ 10 1.8

execute if score @s zombie.nuclearbomb matches 60 run function zombie:skill/creeper/nuclearbomb/safezone

execute if score @s zombie.nuclearbomb matches 280.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 282.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 284.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 286.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 288.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 290.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 292.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 294.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 296.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 298.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 300.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 302.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 304.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 306.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 308.. run summon lightning_bolt ~ ~ ~
execute if score @s zombie.nuclearbomb matches 310.. run summon lightning_bolt ~ ~ ~

execute if score @s zombie.nuclearbomb matches 290 run function zombie:skill/creeper/nuclearbomb/impact/init

execute if score @s zombie.nuclearbomb matches 310 run function zombie:skill/creeper/nuclearbomb/end
execute if score @s zombie.nuclearbomb matches 310.. run function zombie:skill/creeper/nuclearbomb/clear
