scoreboard players add @s zombie.lasrgiant 1

execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop
execute at @s run function zombie:skill/giant/lasr/loop

execute if score @s zombie.lasrgiant matches 5.. run kill @s
