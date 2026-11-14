scoreboard players add @s titan.sword_age 1
# Keep the original movement AI: charge movement and head turns are visible in every sample.
execute if score @s titan.sword_age matches 40 run function zombie:skill/creation/titan/sword/throw
execute if score @s titan.sword_age matches 60.. run function zombie:skill/creation/titan/sword/finish
