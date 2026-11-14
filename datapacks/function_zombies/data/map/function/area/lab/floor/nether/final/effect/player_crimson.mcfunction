scoreboard players set @s area.floor.effectcooldown 10
# Core door states: 1 = opened, 2 = sealed after entry. Both keep normal floor damage.
execute if score lab_core door.open matches 1.. run return run function map:area/lab/floor/nether/crimson/effect/player0
execute at @s run function map:area/lab/floor/nether/crimson/effect/particle

playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 1 0

function map:area/lab/reaction/fire/attribute_player_add {type:crimson,source:mob}

# Before opening the core door: P1-P4 = 12 HP, P5 = 20 HP (base score 50).
execute store result storage zombie skill.damage double 0.24 run scoreboard players get area.floor.crimson zombie.skill.damage
execute if data storage map:r40 p5 store result storage zombie skill.damage double 0.4 run scoreboard players get area.floor.crimson zombie.skill.damage
execute if data storage map:r40 p5_closed store result storage zombie skill.damage double 0.4 run scoreboard players get area.floor.crimson zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.floor.crimson,color:"#dc143c"}]
