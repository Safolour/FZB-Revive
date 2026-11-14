execute unless score round game.state matches 40 run particle scrape ~ ~0.5 ~ 0.2 0.2 0.2 0.9 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle scrape ~ ~0.5 ~ 0.2 0.2 0.2 0.9 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle scrape ~ ~0.5 ~ 0.2 0.2 0.2 0.9 1 force @a[scores={particle=1}]

scoreboard players add @s zombie.nether.guardian.twilight 1

execute if score @s zombie.nether.guardian.twilight matches 2 run playsound block.note_block.pling record @a ~ ~ ~ 1.5 2
execute if score @s zombie.nether.guardian.twilight matches 12 run playsound block.note_block.pling record @a ~ ~ ~ 1.5 2
execute if score @s zombie.nether.guardian.twilight matches 22 run playsound block.note_block.pling record @a ~ ~ ~ 1.5 2

scoreboard players operation mod zombie.nether.guardian.twilight = @s zombie.nether.guardian.twilight
scoreboard players operation mod zombie.nether.guardian.twilight %= 10 number

execute if score mod zombie.nether.guardian.twilight matches 0 run playsound entity.elder_guardian.ambient record @a ~ ~ ~ 1 1

scoreboard players reset mod zombie.nether.guardian.twilight

execute if score @s zombie.nether.guardian.twilight matches ..30 run return 0

scoreboard players operation mod zombie.nether.guardian.twilight = @s zombie.nether.guardian.twilight
scoreboard players set 10 zombie.nether.guardian.twilight 10
scoreboard players operation mod zombie.nether.guardian.twilight %= 10 zombie.nether.guardian.twilight

execute if score mod zombie.nether.guardian.twilight matches 0 run function zombie:skill/nether/guardian/warped/0/skill/twilight/laser

scoreboard players reset mod zombie.nether.guardian.twilight
scoreboard players reset 10 zombie.nether.guardian.twilight

execute if score @s zombie.nether.guardian.twilight matches ..35 run return 0

execute if entity @s[tag=skill.twilightguardian.left] run tp @s ^0.1 ^ ^
execute if entity @s[tag=skill.twilightguardian.right] run tp @s ^-0.1 ^ ^

execute if score @s zombie.nether.guardian.twilight matches ..150 run return 0

execute unless block ~ ~2 ~ #weapon:gun_penetrable run function zombie:skill/nether/guardian/warped/0/skill/twilight/clear

execute if score @s zombie.nether.guardian.twilight matches 400.. run function zombie:skill/nether/guardian/warped/0/skill/twilight/clear
