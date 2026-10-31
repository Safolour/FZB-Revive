
playsound entity.player.hurt_on_fire ambient @a ~ ~ ~ 2 0
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0 0 0 0.2 10 force @a[scores={particle=0}]
particle lava ~ ~1 ~ 0 0 0 0 3 force @a[scores={particle=0}]
effect give @s slowness 2 2 false

execute unless entity @s[scores={stat.player=1}] run return 0

# 81-99°C 每秒 40，100°C 热死
scoreboard players set damage health.damage_skill 40
execute if score temperature0 area.temperature matches 100.. run scoreboard players set damage health.damage_skill 1000000
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire,color:yellow}]
