tp @s ~ ~ ~ facing entity @p[scores={stat.player=1}]

scoreboard players add @s zombie.nuclearcreeper.explosion 1

particle dust{color:[1,0,0],scale:2} ~ ~5 ~ 0.1 10 0.1 0 20 force @a[scores={particle=0}]

scoreboard players operation mod zombie.nuclearcreeper.explosion = @s zombie.nuclearcreeper.explosion
scoreboard players set 6 zombie.nuclearcreeper.explosion 6
scoreboard players operation mod zombie.nuclearcreeper.explosion %= 6 zombie.nuclearcreeper.explosion
scoreboard players reset 6 zombie.nuclearcreeper.explosion


execute if score mod zombie.nuclearcreeper.explosion matches 0 run playsound block.note_block.pling record @a ~ ~ ~ 10 1.7
execute if score @s zombie.nuclearcreeper.explosion matches 60.. run playsound block.note_block.pling record @a ~ ~ ~ 10 1.8
scoreboard players reset mod zombie.nuclearcreeper.explosion

execute if score @s zombie.nuclearcreeper.explosion matches 100 run function zombie:skill/creeper/nuclear/explosion/spawn

execute if score @s zombie.nuclearcreeper.explosion matches 100.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 104.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 108.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 112.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 114.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 116.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 118.. run summon lightning_bolt
execute if score @s zombie.nuclearcreeper.explosion matches 120 run function zombie:skill/creeper/nuclear/explosion/end
