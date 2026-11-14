function zombie:skill/nether/firelord/p2/golem
execute unless entity @e[tag=firelord.p2.ashes.apostle_announced] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.ashesindex"}]}
execute unless entity @e[tag=firelord.p2.ashes.apostle_announced] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.5.0",with:[{translate:"zb.zombie.name.ashesindex"},{translate:"zb.zombie.name.ashesgolem"}]}
tag @e[tag=firelord.p2.ashes] add firelord.p2.ashes.apostle_announced
kill @s
