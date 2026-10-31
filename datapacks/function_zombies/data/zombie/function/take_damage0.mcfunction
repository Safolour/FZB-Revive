
scoreboard players operation damage zombie.health = @s zombie.health0
scoreboard players operation damage zombie.health -= @s zombie.health
execute if score @s zombie.health0 = @s zombie.health0 run scoreboard players operation @s zombie.health0 = @s zombie.health

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
