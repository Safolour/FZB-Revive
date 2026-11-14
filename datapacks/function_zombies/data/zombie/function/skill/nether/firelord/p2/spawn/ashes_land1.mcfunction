execute at @e[type=marker,tag=firelord.p2.spawn.ashes1,limit=1] run function zombie:skill/nether/firelord/p2/golem
execute if entity @e[type=marker,tag=firelord.p2.spawn.ashes1] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.spawn",with:[{translate:"zb.zombie.name.ashesindex"}]}
execute if entity @e[type=marker,tag=firelord.p2.spawn.ashes1] run tellraw @a[scores={system.room=4..}] {translate:"zb.zombie.firelord.5.0",with:[{translate:"zb.zombie.name.ashesindex"},{translate:"zb.zombie.name.ashesgolem"}]}
kill @e[type=marker,tag=firelord.p2.spawn.ashes1]
