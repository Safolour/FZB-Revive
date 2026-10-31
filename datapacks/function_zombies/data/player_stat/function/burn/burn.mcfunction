
scoreboard players set damage health.damage_skill 20
function player_stat:health/get_damage/skill/get_damage
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.fire,color:yellow}]

playsound entity.player.hurt_on_fire

#particle lava ~ ~ ~ 0 0 0 0 10 normal @a[scores={particle=0..}]