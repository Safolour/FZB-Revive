scoreboard objectives add origin.owner dummy
scoreboard objectives add origin.age dummy
scoreboard objectives add origin.pulse dummy
scoreboard objectives add origin.light_cd dummy
scoreboard objectives add origin.sword_cd dummy
scoreboard objectives add origin.cast dummy
scoreboard objectives add origin.big dummy
scoreboard objectives add origin.fx_age dummy
scoreboard objectives add origin.y dummy
scoreboard objectives add origin.stage dummy
scoreboard objectives add origin.swings dummy
scoreboard objectives add origin.busy dummy
scoreboard objectives add origin.tool dummy
scoreboard objectives add origin.tool_age dummy
scoreboard objectives add origin.volley dummy
scoreboard objectives add origin.volley_t dummy
scoreboard objectives add origin.v_step dummy
scoreboard objectives add origin.tp_glow dummy
scoreboard objectives add origin.air_tick dummy
team add origin.red
team modify origin.red color red
team modify origin.red collisionRule pushOtherTeams
team modify origin.red friendlyFire false
team add origin.white
team modify origin.white color white
team modify origin.white collisionRule pushOtherTeams
team modify origin.white friendlyFire false
scoreboard objectives add origin.shovel_cd dummy
scoreboard objectives add origin.pick_cd dummy
scoreboard objectives add origin.laser_cd dummy
scoreboard objectives add origin.fx_id dummy
scoreboard objectives add origin.target dummy
scoreboard objectives add origin.tool_cfg dummy
scoreboard objectives add origin.pick_vx dummy
scoreboard objectives add origin.pick_vy dummy
scoreboard objectives add origin.pick_vz dummy
scoreboard objectives add origin.phase_age dummy
scoreboard objectives add origin.phase_armor dummy
scoreboard objectives add origin.p_owner dummy
scoreboard objectives add origin.line dummy
scoreboard players add #next origin.fx_id 0
scoreboard players add #next origin.owner 0
scoreboard players set #origin.brutality zombie.skill.damage 150
function zombie:skill/creation/origin/melee/load
# Base 21 yields 8.6 after the diamond armor/toughness damage formula.
scoreboard players set #origin.lightning zombie.skill.damage 210
function zombie:skill/creation/origin/sword/config
function zombie:skill/creation/origin/shovel/config
function zombie:skill/creation/origin/pickaxe/config
function zombie:skill/creation/origin/laser/config
function zombie:skill/creation/titan/load
