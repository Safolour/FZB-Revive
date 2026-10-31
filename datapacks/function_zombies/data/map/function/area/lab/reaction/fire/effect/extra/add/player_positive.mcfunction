
execute unless entity @s[scores={stat.player=1}] run return 0

scoreboard players set damage health.damage_skill 50
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.neutral,color:"#ffffff"}]


#damage @s 5
#data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire.neutral,color:"#ffffff"}]

execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0 3 force @a[scores={particle=0}]
execute at @s run playsound entity.player.hurt ambient @a
