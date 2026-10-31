
execute if entity @s[tag=powerup] at @s unless entity @n[type=marker,tag=spawner,tag=portal,distance=..7] run function map:powerup/summon/powerup
# 墙上传送门（portal_lab，北墙 299..301 100 127）门口的台子比地面高 8 格，捡不到：在门口 7 格内被打死的，掉落物挪到门前 6 格再往下落到地面
execute if entity @s[tag=powerup] at @s at @n[type=marker,tag=spawner,tag=portal,distance=..7] positioned ^ ^ ^6 run function map:powerup/summon/powerup

execute if entity @s[type=zombie,tag=skill.ultimatechaoszombie] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/death/explosion

execute if entity @s[type=slime,tag=skill.chaosgolem] at @s run function zombie:skill/chaos/chaos_golem/skill/death/init

execute if entity @s[type=zombie,tag=skill.automation.selfexplosion] at @s run function zombie:skill/electric/automation/self_explosion/death
execute if entity @s[type=zombie,tag=skill.automation] at @s run function zombie:skill/electric/automation/death

execute if entity @s[type=zombie,tag=skill.bomber.burst] at @s run function zombie:skill/electric/tnt/burst/init

execute if entity @s[type=zombie,tag=skill.obviate] at @s run return run function zombie:skill/electric/aircraft/obviate/death/init
execute if entity @s[type=zombie,tag=skill.disperse] at @s run return run function zombie:skill/electric/aircraft/obviate/death/init

execute if entity @s[type=ghast,tag=skill.dropship] at @s run function zombie:skill/remains/dropship/death

execute if entity @s[type=magma_cube,tag=skill.magmaslimeboss] at @s run function zombie:skill/remains/magmaslimeboss/death/death

execute if entity @s[type=blaze,tag=skill.blaze] at @s run function zombie:skill/remains/blaze/death

execute if entity @s[type=magma_cube,tag=skill.magmaslime] at @s run function zombie:skill/remains/magmaslime/death

execute if entity @s[type=zombie,tag=skill.flame] at @s run function zombie:skill/nether/crimson/flame/death

execute if entity @s[type=zombie,tag=skill.soulflame] at @s run function zombie:skill/nether/warped/soul_flame/death

execute if entity @s[type=zombie,tag=skill.teleporter] at @s run function zombie:skill/nether/warped/teleporter/death

execute if entity @s[type=wither_skeleton,tag=skill.ashwizard] at @s run function zombie:skill/nether/ashes/ash_wizard/death/death

execute if entity @s[type=husk,tag=skill.suicidezombie] at @s run return run function zombie:skill/nether/ashes/suicide_zombie/death

execute if entity @s[type=strider,tag=skill.meteor] at @s run function zombie:skill/nether/ashes/meteor/death

execute if entity @s[type=zombie,tag=skill.ashes] at @s run function zombie:skill/nether/ashes/ashes/death

execute if entity @s[type=zombie,tag=skill.soul] at @s run function zombie:skill/nether/spirit/soul/death

execute if entity @s[type=zombie,tag=skill.monhanfollower] at @s run function zombie:skill/nether/spirit/monhanfollower/death

execute if entity @s[type=zombie,tag=skill.annihilate] at @s run function zombie:skill/nether/spirit/annihilate/death

execute if entity @s[type=ghast,tag=skill.spiritghast] at @s run function zombie:skill/nether/spirit/ghast/death

execute if entity @s[type=guardian,tag=skill.crimsonguardian.suspense] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/death
execute if entity @s[type=guardian,tag=skill.crimsonguardian] at @s run function zombie:skill/nether/guardian/crimson/0/skill/death/death
execute if entity @s[type=slime,tag=skill.warpedguardian.labyrinth.0] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/death
execute if entity @s[type=elder_guardian,tag=skill.warpedguardian] at @s run function zombie:skill/nether/guardian/warped/0/skill/death/death

execute if entity @s[type=skeleton,tag=skill.creeper] at @s run function zombie:skill/creeper/creeper/death

execute if entity @s[type=creeper,tag=skill.nuclearcreeper] at @s run function zombie:skill/creeper/nuclear/death

execute if entity @s[type=zombie,tag=skill.fusion] at @s run function zombie:skill/machine/fusion/death

execute if entity @s[type=silverfish,tag=skill.worm.gamma] at @s run function zombie:skill/worm/gamma/death
execute if entity @s[type=silverfish,tag=skill.worm.beta] at @s run function zombie:skill/worm/beta/death
execute if entity @s[type=silverfish,tag=skill.worm.alpha] at @s run function zombie:skill/worm/alpha/death

execute if entity @s[type=zombie,tag=skill.creation.ironsound] at @s run function zombie:skill/creation/death

execute if entity @s[type=zombie,tag=skill.creation.rampart] at @s run function zombie:skill/creation/rampart/death

execute if entity @s[type=slime,tag=skill.lamda] at @s run function zombie:skill/machine/lamda/skill/death/init









execute if entity @s[tag=deathmessage] run function zombie:death_message with entity @s data
function system:death
