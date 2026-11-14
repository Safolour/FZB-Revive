$execute unless entity @e[nbt={UUID:$(target)},tag=mob,tag=hitable,scores={zombie.health=1..}] run return 0
$tp @s ~ ~ ~ facing entity @e[nbt={UUID:$(target)},limit=1] eyes
scoreboard players set #target_ok weapon.pd_hit 1
