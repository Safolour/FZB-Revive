
execute if score @s health.invincible_timer matches 0.. run return run scoreboard players set @s health.invincible_timer -1
scoreboard players operation d health.operation = @s health.damage_resisted
# Boss melee may penetrate; generic melee cannot identify an attacker here.
execute if score round game.state matches 40 at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] unless entity @e[tag=skill.firelord,distance=..4] run return run function zombie:skill/nether/firelord/p2/safe_player_damage
function player_stat:health/get_damage/default/operation
# 倒地判定按 红血 + 金血（扣血用原版 generic_kill，本来就先扣金血）
function player_stat:health/absorption/get
scoreboard players operation #eff health.operation = @s health.health
scoreboard players operation #eff health.operation += #abs health.operation
execute if score damage0 health.operation >= #eff health.operation at @s run return run function player_stat:revive/down
execute store result storage game root.health.damage float 0.1 run scoreboard players get damage0 health.operation
execute store result storage game root.health.damage0 float 0.1 run scoreboard players get damage health.operation
#data modify storage game root.health.damage set string storage game root.health.damage 3
function player_stat:health/get_damage/default/damage0 with storage game root.health
data remove storage game root

data remove storage revive root.down
