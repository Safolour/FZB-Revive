
$scoreboard players operation uuid stat.attack = uuid weapon.melee.$(weapon)
$scoreboard players operation damage stat.attack = damage weapon.melee.$(weapon)
$scoreboard players operation gold stat.attack = gold weapon.melee.$(weapon)
$scoreboard players operation punch stat.attack = punch weapon.melee.$(weapon)
scoreboard players operation @s weapon.use = uuid stat.attack
execute unless data storage weapon root.item.affect_enemy run data modify storage weapon root.item.affect_enemy set value 1