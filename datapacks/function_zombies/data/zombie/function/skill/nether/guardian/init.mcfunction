function zombie:skill/nether/guardian/reset
function zombie:skill/nether/guardian/floor/0/init

scoreboard players set stat zombie.nether.guardian 0

scoreboard players set @a[scores={system.room=4..}] zombie.nether.lava.damage_resettimer 0
