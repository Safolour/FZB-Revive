scoreboard players add @s zombie.remains.bomber.skill_timer 1

tp @s ~ ~ ~ ~10 ~

execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 2 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 9 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 15 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 20 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 24 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 27 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] if score @s zombie.remains.bomber.skill_timer matches 29 run team join zombie.remains.bomber.ashes

execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 2 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 9 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 15 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 20 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 24 run team join zombie.remains.bomber.crimson
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 27 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.warped] if score @s zombie.remains.bomber.skill_timer matches 29 run team join zombie.remains.bomber.crimson

execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 2 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 9 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 15 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 20 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 24 run team join zombie.remains.bomber.warped
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 27 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] if score @s zombie.remains.bomber.skill_timer matches 29 run team join zombie.remains.bomber.warped

execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 2 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 9 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 15 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 20 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 24 run team join zombie.remains.bomber.spirit
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 27 run team join zombie.remains.bomber.ashes
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] if score @s zombie.remains.bomber.skill_timer matches 29 run team join zombie.remains.bomber.spirit

execute if score @s zombie.remains.bomber.skill_timer matches 31.. run kill @s
