
tag @s add powerup
$tag @s add powerup.$(powerup)
$execute if score debug_powerup round matches 1 run say =  $(powerup) summoned
execute if score debug_powerup round matches 1 run effect give @s glowing infinite 0 true
$scoreboard players set $(powerup) round 0