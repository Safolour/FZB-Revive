
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^2 {Tags:["rotation"]}
data modify storage weapon root.airgun.wave_rotation.x set from entity @n[type=marker,tag=rotation] Pos[0]
data modify storage weapon root.airgun.wave_rotation.y set from entity @n[type=marker,tag=rotation] Pos[1]
data modify storage weapon root.airgun.wave_rotation.z set from entity @n[type=marker,tag=rotation] Pos[2]

kill @e[type=marker,tag=rotation]