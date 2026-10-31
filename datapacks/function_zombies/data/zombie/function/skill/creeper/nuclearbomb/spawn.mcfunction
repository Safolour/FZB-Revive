
function zombie:skill/creeper/nuclearbomb/clear
function zombie:skill/creeper/nuclearbomb/clear0

summon marker ~ ~ ~ {Tags:["mob.skill","skill.nuclearbomb"]}
summon block_display ~-0.5 ~ ~-0.5 {Tags:["skill.nuclearbomb"],block_state:{Name:beacon},Glowing:1b,glow_color_override:16711680}

execute store result storage zombie nuclearbomb.x int 1 run data get entity @s Pos[0]
execute store result storage zombie nuclearbomb.y int 1 run data get entity @s Pos[1]
execute store result storage zombie nuclearbomb.z int 1 run data get entity @s Pos[2]

function zombie:skill/creeper/nuclearbomb/particle
