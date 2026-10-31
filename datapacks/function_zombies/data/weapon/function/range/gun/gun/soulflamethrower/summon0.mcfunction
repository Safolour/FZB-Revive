scoreboard players set color weapon.range 0
execute store result score #soul_count weapon.state run random value 1..3
scoreboard players operation @s weapon.gun_shot += #soul_count weapon.state
function weapon:range/gun/gun/soulflamethrower/summon1 {gun:"soulflamethrower"}
