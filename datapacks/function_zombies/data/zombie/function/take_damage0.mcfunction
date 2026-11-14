# Keep protected health out of damage accounting, including non-weapon score damage.
execute if entity @s[tag=firelord.p2.apostle,tag=!firelord.p2.unlocked] run return run scoreboard players operation @s zombie.health = @s zombie.health0
execute if entity @s[tag=p5.raytarget] at @s run function zombie:skill/nether/firelord/p5/hazards/ray_target_hit
execute if entity @s[tag=skill.firelord] run function zombie:skill/nether/firelord/phase_busy
execute if entity @s[tag=skill.titan,tag=titan.eclipse.cast] run return run function zombie:skill/creation/titan/lock_health
# Shield also restores scoreboard damage from non-gun sources.
execute if entity @s[tag=skill.firelord.shield,tag=!firelord.returning] at @s run function zombie:skill/nether/firelord/shield/take_damage
execute if entity @s[tag=skill.firelord.shield] run return run scoreboard players operation @s zombie.health = @s zombie.health0
execute if entity @s[tag=skill.firelord,tag=firelord.circle.active,tag=!skill.firelord.shield.used,scores={zombie.health=..33333}] run tag @s add firelord.circle.pending
execute if entity @s[tag=skill.firelord,tag=firelord.circle.pending] run scoreboard players set @s zombie.health 33333
execute if entity @s[tag=skill.firelord,tag=!skill.firelord.shield.used,scores={zombie.health=..33333}] run scoreboard players set @s zombie.health 33333
execute if entity @s[tag=skill.firelord,tag=!firelord.circle.active,tag=!firelord.phase.busy,tag=!skill.firelord.shield.used,scores={zombie.health=..33333}] at @s run function zombie:skill/nether/firelord/shield/begin
# P3 to P4 at one third of starting health; finish an active circle before switching.
execute if entity @s[tag=skill.firelord,tag=firelord.p3,tag=!firelord.p4,tag=firelord.circle.active,scores={zombie.health=..16666}] run tag @s add firelord.p4.pending
execute if entity @s[tag=firelord.p4.pending] run scoreboard players set @s zombie.health 16666
execute if entity @s[tag=firelord.p4.pending,tag=!firelord.circle.active] run tag @s remove firelord.p4.pending
execute if entity @s[tag=skill.firelord,tag=firelord.p3,tag=!firelord.p4,scores={zombie.health=..16666}] run scoreboard players set @s zombie.health 16666
execute if entity @s[tag=skill.firelord,tag=firelord.p3,tag=!firelord.p4,tag=!firelord.circle.active,tag=!firelord.phase.busy,tag=!firelord.p4.pending,scores={zombie.health=..16666}] at @s run function zombie:skill/nether/firelord/p4/begin
execute if entity @s[tag=skill.origin] at @s run function zombie:skill/creation/origin/lightning/lock_health
execute if entity @s[type=zombie,tag=skill.titan,tag=!titan.eclipse.used,scores={zombie.health=..37500}] at @s run function zombie:skill/creation/titan/phase_lock
execute if entity @s[type=slime,tag=skill.titan.eclipse,nbt={HurtTime:10s}] at @s run function zombie:skill/creation/titan/eclipse/hurt
scoreboard players operation damage zombie.health = @s zombie.health0
scoreboard players operation damage zombie.health -= @s zombie.health
execute if score @s zombie.health0 = @s zombie.health0 run scoreboard players operation @s zombie.health0 = @s zombie.health
execute if entity @s[tag=setting.dummy] run return run function mainlobby:setting/dummy/hit

execute if entity @s[type=zombie,tag=skill.ultimatechaoszombie.lightning] if score @s zombie.chaos.ultimate_chaos_zombie.skill_lightningrange matches ..150 at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/lightning/range/remove
execute if entity @s[type=slime,tag=skill.ultimatechaoszombie.large_tnt] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/tnt/clear
execute if entity @s[type=slime,tag=skill.ultimatechaoszombie.tnt] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/tnt/clear

execute if entity @s[type=slime,tag=skill.chaosgolem] at @s run function zombie:skill/chaos/chaos_golem/skill/damage/init

execute if entity @s[type=zombie,tag=skill.automation] at @s run function zombie:skill/electric/automation/take_damage

execute if entity @s[type=zombie,tag=skill.bomber.burst] at @s run function zombie:skill/electric/tnt/burst/take_damage

execute if entity @s[type=slime,tag=skill.bomber.throw.tnt] at @s run function zombie:skill/electric/tnt/throw/tnt/clear

execute if entity @s[type=slime,tag=skill.bomber.burst.tnt] at @s run function zombie:skill/electric/tnt/burst/tnt/clear

execute if entity @s[type=zombie,tag=skill.obviate] at @s run function zombie:skill/electric/aircraft/obviate/damage/init
execute if entity @s[type=zombie,tag=skill.disperse] at @s run function zombie:skill/electric/aircraft/obviate/damage/init

execute if entity @s[type=magma_cube,tag=skill.magmaslimeboss] at @s run function zombie:skill/remains/magmaslimeboss/take_damage

execute if entity @s[type=slime,tag=skill.remains.bomber.tnt] at @s run function zombie:skill/remains/bomber/tnt/clear

execute if entity @s[type=zombie,tag=skill.flame] at @s run function zombie:skill/nether/crimson/flame/take_damage

execute if entity @s[type=zombie,tag=skill.soulflame] at @s run function zombie:skill/nether/warped/soul_flame/take_damage

execute if entity @s[type=zombie,tag=skill.teleporter] at @s run function zombie:skill/nether/warped/teleporter/take_damage

execute if entity @s[type=zombie,tag=skill.ashes] at @s run function zombie:skill/nether/ashes/ashes/take_damage

execute if entity @s[type=zombie,tag=skill.soul] at @s run function zombie:skill/nether/spirit/soul/take_damage

execute if entity @s[type=zombie,tag=skill.monhanfollower] at @s run function zombie:skill/nether/spirit/monhanfollower/take_damage

execute if entity @s[type=guardian,tag=skill.crimsonguardian.suspense] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/take_damage
execute if entity @s[type=guardian,tag=skill.crimsonguardian] at @s run function zombie:skill/nether/guardian/crimson/0/skill/takedamage/take_damage
execute if entity @s[type=guardian,tag=skill.crimsonguardian,tag=skill.crimsonguardian.shield] at @s run function zombie:skill/nether/guardian/crimson/0/skill/shield/take_damage
execute if entity @s[type=slime,tag=skill.warpedguardian.eclipse.4] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/take_damage
execute if entity @s[type=slime,tag=skill.warpedguardian.labyrinth.0] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/take_damage
execute if entity @s[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/0/skill/takedamage/take_damage
execute if entity @s[type=elder_guardian,tag=skill.warpedguardian,tag=skill.warpedguardian.shield] at @s run function zombie:skill/nether/guardian/warped/0/skill/shield/take_damage

execute if entity @s[type=skeleton,tag=skill.creeper] at @s run function zombie:skill/creeper/creeper/take_damage

execute if entity @s[type=creeper,tag=skill.nuclearcreeper] at @s run function zombie:skill/creeper/nuclear/take_damage

execute if entity @s[type=zombie,tag=skill.fusion] at @s run function zombie:skill/machine/fusion/take_damage

execute if entity @s[type=zombie,tag=skill.creation.ironsound] at @s run function zombie:skill/creation/take_damage
execute if entity @s[type=slime,tag=skill.creation.sample.weapon] at @s run function zombie:skill/creation/sample/take_damage

execute if entity @s[type=slime,tag=skill.creation.defend.weapon] at @s run function zombie:skill/creation/defend/take_damage

execute if entity @s[type=slime,tag=skill.creation.elude.weapon] at @s run function zombie:skill/creation/elude/take_damage

execute if entity @s[type=zombie,tag=skill.creation.resonance] at @s run function zombie:skill/creation/resonance/take_damage

execute if entity @s[type=slime,tag=skill.creation.calamity.weapon] at @s run function zombie:skill/creation/calamity/take_damage

execute if entity @s[type=slime,tag=skill.creation.benediction.weapon] at @s run function zombie:skill/creation/benediction/take_damage

execute if entity @s[type=slime,tag=skill.creation.avert.weapon] at @s run function zombie:skill/creation/avert/take_damage

execute if entity @s[type=slime,tag=skill.lamda] at @s run function zombie:skill/machine/lamda/skill/damage/init






execute if entity @s[tag=bossbar] run function zombie:bossbar/if_health

#tellraw @a [{"score":{"name":"damage","objective":"zombie.health"}}]
