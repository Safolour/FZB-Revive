
scoreboard objectives add area.reaction.fire dummy
scoreboard objectives add area.reaction.fire_timer dummy
 scoreboard players set player_default area.reaction.fire_timer 200
 scoreboard players set mob_default area.reaction.fire_timer 200
scoreboard objectives add area.reaction.fire_duration dummy
 scoreboard players set player_default area.reaction.fire_duration 4
 scoreboard players set mob_default area.reaction.fire_duration 4
 scoreboard players set mob_default0 area.reaction.fire_duration 4
 scoreboard players set effect_default area.reaction.fire_duration 10
scoreboard objectives add area.reaction.fire_bar dummy
scoreboard objectives add area.reaction.fire_bar.uuid dummy
 
data modify storage area fire_reaction.text set value {ashes:"\uF017",crimson:"\uF015",spirit:"\uF018",warped:"\uF016"}

return fail
bossbar add area.fire_reaction.1 ""
bossbar add area.fire_reaction.2 ""
bossbar add area.fire_reaction.3 ""
bossbar add area.fire_reaction.4 ""
bossbar add area.fire_reaction.5 ""
bossbar add area.fire_reaction.6 ""
bossbar add area.fire_reaction.7 ""
bossbar add area.fire_reaction.8 ""
bossbar add area.fire_reaction.9 ""
bossbar add area.fire_reaction.10 ""
bossbar add area.fire_reaction.11 ""
bossbar add area.fire_reaction.12 ""
bossbar add area.fire_reaction.13 ""
bossbar add area.fire_reaction.14 ""
bossbar add area.fire_reaction.15 ""
bossbar add area.fire_reaction.16 ""
