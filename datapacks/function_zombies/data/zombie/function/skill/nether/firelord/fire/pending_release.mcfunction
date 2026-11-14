tag @s remove firelord.fire.pending
scoreboard players set @s fl.firewait 0
function zombie:skill/nether/firelord/fire/throw
tag @s add fl.choose.after_travel
scoreboard players set @s zombie.skill_timer 0
