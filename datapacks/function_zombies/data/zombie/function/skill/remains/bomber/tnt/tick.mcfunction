scoreboard players add @s zombie.remains.bomber.skill_timer 1

tp @s ~ ~ ~ ~9 ~
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] at @s run particle dust{color: [0.86, 0.08, 0.24], scale:1 } ^ ^0.2 ^4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] at @s run particle dust{color: [0.86, 0.08, 0.24], scale:1 } ^ ^0.2 ^-4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] at @s run particle dust{color: [0.86, 0.08, 0.24], scale:1 } ^3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.tnt.crimson] at @s run particle dust{color: [0.86, 0.08, 0.24], scale:1 } ^-3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @s[tag=skill.remains.bomber.tnt.warped] at @s run particle dust{color: [0, 0.54, 0.54], scale:1 } ^ ^0.2 ^4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.warped] at @s run particle dust{color: [0, 0.54, 0.54], scale:1 } ^ ^0.2 ^-4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.warped] at @s run particle dust{color: [0, 0.54, 0.54], scale:1 } ^3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.tnt.warped] at @s run particle dust{color: [0, 0.54, 0.54], scale:1 } ^-3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @s[tag=skill.remains.bomber.tnt.ashes] at @s run particle dust{color: [0.18, 0.3, 0.3], scale:1 } ^ ^0.2 ^4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] at @s run particle dust{color: [0.18, 0.3, 0.3], scale:1 } ^ ^0.2 ^-4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] at @s run particle dust{color: [0.18, 0.3, 0.3], scale:1 } ^3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.tnt.ashes] at @s run particle dust{color: [0.18, 0.3, 0.3], scale:1 } ^-3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @s[tag=skill.remains.bomber.tnt.spirit] at @s run particle dust{color: [0.85, 0.99, 1], scale:1 } ^ ^0.2 ^4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] at @s run particle dust{color: [0.85, 0.9, 1], scale:1 } ^ ^0.2 ^-4 0 0 0 0 1 force @a[scores={particle=0..}]
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] at @s run particle dust{color: [0.85, 0.99, 1], scale:1 } ^3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.tnt.spirit] at @s run particle dust{color: [0.85, 0.9, 1], scale:1 } ^-3 ^0.2 ^ 0 0 0 0 1 force @a[scores={particle=0}]

execute if score @s zombie.remains.bomber.skill_timer matches 30.. run function zombie:skill/remains/bomber/tnt/explosion
