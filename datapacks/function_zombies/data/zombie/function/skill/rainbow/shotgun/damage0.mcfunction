#$damage @s $(damage) mob_attack by @n[type=zombie,tag=target0]
#data remove storage zombie skill.damage

$function bs.health:add/health {points:-$(damage)}
data remove storage zombie skill.damage
$damage @s $(damage0) mob_attack by @n[type=zombie,tag=target0]

#$say $(damage) $(damage0)
