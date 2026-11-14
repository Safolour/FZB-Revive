execute if entity @s[type=marker,tag=firelord.p2.safe] at @s run function zombie:skill/nether/firelord/p2/safe_tick
execute if entity @s[type=ghast,tag=firelord.p2.patrol,tag=!firelord.p5.chase] at @s run function zombie:skill/nether/firelord/p2/ghast/tick

execute if entity @s[type=item,tag=skill.bruh] at @s run function zombie:skill/bruh/tick0
execute if entity @s[type=text_display,tag=skill.bruh] at @s run function zombie:skill/bruh/tick1

execute if entity @s[type=marker,tag=skill.ultimatechaoszombie] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/tick0
execute if entity @s[type=item,tag=skill.ultimatechaoszombie] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/tick1
execute if entity @s[type=armor_stand,tag=skill.ultimatechaoszombie.large_tnt] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/tnt/tick0
execute if entity @s[type=armor_stand,tag=skill.ultimatechaoszombie.tnt] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/tnt/tick0

execute if entity @s[type=marker,tag=skill.chaosgolem.jumpimpact] at @s run function zombie:skill/chaos/chaos_golem/spawn/jump/impact/tick
execute if entity @s[type=marker,tag=skill.chaosgolem.hitground.impact] at @s run function zombie:skill/chaos/chaos_golem/skill/hit_ground/impact/tick
execute if entity @s[type=item_display,tag=skill.chaosgolem.bullet] at @s run function zombie:skill/chaos/chaos_golem/skill/shoot/bullet/tick

execute if entity @s[type=item,tag=skill.bomber.throw.throwtnt0] at @s run function zombie:skill/electric/tnt/throw/throw/tick
execute if entity @s[type=armor_stand,tag=skill.bomber.throw.tnt] at @s run function zombie:skill/electric/tnt/throw/tnt/tick0

execute if entity @s[type=item,tag=skill.bomber.burst.throwtnt] at @s run function zombie:skill/electric/tnt/burst/throw/tick
execute if entity @s[type=armor_stand,tag=skill.bomber.burst.tnt] at @s run function zombie:skill/electric/tnt/burst/tnt/tick0

execute if entity @s[type=marker,tag=skill.disperse.missile] at @s run function zombie:skill/electric/aircraft/disperse/missile/tick
execute if entity @s[type=block_display,tag=skill.obviate.missile] at @s run function zombie:skill/electric/aircraft/obviate/missile/tick

execute if entity @s[type=block_display,tag=skill.dropship.tnt] at @s run function zombie:skill/remains/dropship/tnt/tick

execute if entity @s[type=marker,tag=skill.blaze.fire.0] at @s run function zombie:skill/remains/blaze/shoot/tick0

execute if entity @s[type=item,tag=skill.remains.bomber.throw.0] at @s run function zombie:skill/remains/bomber/throw/tick
execute if entity @s[type=armor_stand,tag=skill.remains.bomber.tnt] at @s run function zombie:skill/remains/bomber/tnt/tick0

execute if entity @s[type=block_display,tag=skill.soulflame.0] at @s run function zombie:skill/nether/warped/soul_flame/tick0

execute if entity @s[type=marker,tag=skill.crimsonguardianzombie.laser] at @s run function zombie:skill/nether/crimson/crimson_guardian_zombie/tick0

execute if entity @s[type=marker,tag=skill.warpedguardianzombie.laser] at @s run function zombie:skill/nether/warped/warped_guardian_zombie/tick0

execute if entity @s[type=marker,tag=skill.fireskeleton] at @s run function zombie:skill/nether/crimson/fire_skeleton/tick0

execute if entity @s[type=marker,tag=skill.warpedskeleton] at @s run function zombie:skill/nether/warped/warped_skeleton/tick0

execute if entity @s[type=marker,tag=skill.ashskeleton] at @s run function zombie:skill/nether/ashes/ash_skeleton/tick0

execute if entity @s[type=block_display,tag=skill.ashwizard] at @s run function zombie:skill/nether/ashes/ash_wizard/tick0

execute if entity @s[type=marker,tag=skill.meteor.0] at @s run function zombie:skill/nether/ashes/meteor/tick0

execute if entity @s[type=marker,tag=skill.spiritskeleton] at @s run function zombie:skill/nether/spirit/spirit_skeleton/tick0

execute if entity @s[type=marker,tag=skill.spiritghast.fireball] at @s run function zombie:skill/nether/spirit/ghast/tick1

execute if entity @s[type=marker,tag=skill.guardian] at @s run function zombie:skill/nether/guardian/tick0
execute if entity @s[type=item_display,tag=skill.crimsonguardian.shockwave] at @s run function zombie:skill/nether/guardian/crimson/0/skill/shockwave/tick0
execute if entity @s[type=armor_stand,tag=skill.crimsonguardian.suspense.death] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/tick0
execute if entity @s[type=block_display,tag=skill.crimsonguardian.missile] at @s run function zombie:skill/nether/guardian/crimson/0/skill/missile/tick0
execute if entity @s[type=marker,tag=skill.crimsonguardian.laser] at @s run function zombie:skill/nether/guardian/crimson/0/skill/laser/tick0
execute if entity @s[type=marker,tag=skill.warpedguardian.laser] at @s run function zombie:skill/nether/guardian/warped/0/skill/laser/tick0
execute if entity @s[type=marker,tag=skill.crimsonguardian.shield] at @s run function zombie:skill/nether/guardian/crimson/0/skill/shield/tick
execute if entity @s[type=armor_stand,tag=skill.crimsonguardian.suspense.1] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/suspense/tick
execute if entity @s[type=armor_stand,tag=skill.crimsonguardian.meltdown] at @s run function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/tick
execute if entity @s[type=item_display,tag=skill.warpedguardian.attract] at @s run function zombie:skill/nether/guardian/warped/0/skill/attract/tick0
execute if entity @s[type=marker,tag=skill.warpedguardian.eclipse] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/tick0
execute if entity @s[type=item_display,tag=skill.warpedguardian.eclipse.rotation] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/rotation
execute if entity @s[type=armor_stand,tag=skill.warpedguardian.eclipse.death] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/tick1
execute if entity @s[type=marker,tag=skill.warpedguardian.eclipse.flame] at @s run function zombie:skill/nether/guardian/warped/0/skill/eclipse/flame0
execute if entity @s[type=marker,tag=skill.warpedguardian.labyrinth.spawn.0] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/tick0
execute if entity @s[type=armor_stand,tag=skill.warpedguardian.labyrinth.1] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/tick2
execute if entity @s[type=marker,tag=skill.warpedguardian.labyrinth.impact] at @s run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/tick3
execute if entity @s[type=marker,tag=skill.warpedguardian.shield] at @s run function zombie:skill/nether/guardian/warped/0/skill/shield/tick
execute if entity @s[type=armor_stand,tag=skill.twilightguardian] at @s run function zombie:skill/nether/guardian/warped/0/skill/twilight/tick
execute if entity @s[type=armor_stand,tag=skill.guardian.eye] at @s run function zombie:skill/nether/guardian/floor/eye/tick
execute if entity @s[type=marker,tag=skill.guardian.floor.lava.particle] at @s run function zombie:skill/nether/guardian/floor/lava/particle/tick0

execute if entity @s[type=marker,tag=skill.nuclearcreeper.explosion.marker] at @s run function zombie:skill/creeper/nuclear/explosion/tick0
execute if entity @s[type=marker,tag=skill.nuclearcreeper.explosion.player] at @s run function zombie:skill/creeper/nuclear/explosion/tick1

execute if entity @s[type=marker,tag=skill.lasrgiant] at @s run function zombie:skill/giant/lasr/tick0

execute if entity @s[type=marker,tag=skill.diamondgiant.sword] at @s run function zombie:skill/giant/diamond/tick0

execute if entity @s[type=armor_stand,tag=skill.creation.sample.weapon] at @s run function zombie:skill/creation/sample/tick0

execute if entity @s[type=item_display,tag=skill.creation.defend.weapon] at @s run function zombie:skill/creation/defend/tick0
execute if entity @s[type=slime,tag=skill.creation.defend.weapon] at @s run function zombie:skill/creation/defend/tick1

execute if entity @s[type=item_display,tag=skill.creation.elude.weapon] at @s run function zombie:skill/creation/elude/tick0
execute if entity @s[type=slime,tag=skill.creation.elude.weapon] at @s run function zombie:skill/creation/elude/tick0
execute if entity @s[type=item,tag=skill.creation.elude.weapon] at @s run function zombie:skill/creation/elude/tick1

execute if entity @s[type=marker,tag=skill.creation.collapse.laser] at @s run function zombie:skill/creation/collapse/tick0

execute if entity @s[type=marker,tag=skill.creation.rampart.shield] at @s run function zombie:skill/creation/rampart/tick1

execute if entity @s[type=marker,tag=skill.nuclearbomb] at @s run function zombie:skill/creeper/nuclearbomb/tick
execute if entity @s[type=marker,tag=skill.nuclearbomb.safezone] at @s run function zombie:skill/creeper/nuclearbomb/tick0
execute if entity @s[type=marker,tag=skill.nuclearbomb.impact.marker] at @s run function zombie:skill/creeper/nuclearbomb/impact/tick

execute if entity @s[type=marker,tag=skill.observereye] at @s run function zombie:skill/machine/observereye/tick
execute if entity @s[type=marker,tag=skill.observereye.target] at @s run function zombie:skill/machine/observereye/tick1

execute if entity @s[type=armor_stand,tag=skill.rainbowzombie.rocketlauncher.missile] at @s run function zombie:skill/rainbow/rocketlauncher/tick0

execute if entity @s[type=marker,tag=skill.creation.electrification.beam] at @s run function zombie:skill/creation/electrification/tick0

execute if entity @s[type=armor_stand,tag=skill.creation.calamity.weapon] at @s run function zombie:skill/creation/calamity/tick0

execute if entity @s[type=item_display,tag=skill.creation.benediction.weapon] at @s run function zombie:skill/creation/benediction/tick0
execute if entity @s[type=slime,tag=skill.creation.benediction.weapon] at @s run function zombie:skill/creation/benediction/tick1

execute if entity @s[type=item_display,tag=skill.creation.avert.weapon] at @s run function zombie:skill/creation/avert/tick0
execute if entity @s[type=slime,tag=skill.creation.avert.weapon] at @s run function zombie:skill/creation/avert/tick0
execute if entity @s[type=item,tag=skill.creation.avert.weapon] at @s run function zombie:skill/creation/avert/tick1

execute if entity @s[type=marker,tag=skill.lamda.jumpimpact] at @s run function zombie:skill/machine/lamda/spawn/jump/impact/tick
execute if entity @s[type=marker,tag=skill.lamda.hitground.impact] at @s run function zombie:skill/machine/lamda/skill/hit_ground/impact/tick
execute if entity @s[type=item_display,tag=skill.lamda.bullet] at @s run function zombie:skill/machine/lamda/skill/shoot/bullet/tick
execute if entity @s[type=marker,tag=skill.lamda.laser.marker0] at @s run function zombie:skill/machine/lamda/skill/laser/0/tick
execute if entity @s[type=block_display,tag=skill.lamda.laser.1] at @s run function zombie:skill/machine/lamda/skill/laser/1/tick
execute if entity @s[type=marker,tag=skill.lamda.laser.2] at @s run function zombie:skill/machine/lamda/skill/laser/2/tick

execute if entity @s[type=armor_stand,tag=skill.firelord.fire] at @s run function zombie:skill/nether/firelord/fire/tick

execute if entity @s[type=marker,tag=skill.firelord.travel] at @s run function zombie:skill/nether/firelord/travel/tick

execute if entity @s[type=marker,tag=firelord.spawn.wait] at @s run function zombie:skill/nether/firelord/travel/wait

execute if entity @s[type=marker,tag=skill.firelord.beam] at @s run function zombie:skill/nether/firelord/beam/tick

execute if entity @s[type=block_display,tag=skill.firelord.travel_flame] at @s run function zombie:skill/nether/firelord/travel/flame_tick


execute if entity @s[type=item_display,tag=firelord.p2.laser_rune] at @s run function zombie:skill/nether/firelord/p2/laser_rune_tick

execute if entity @s[type=marker,tag=firelord.beam.delay] at @s run function zombie:skill/nether/firelord/beam/delay

execute if entity @s[type=marker,tag=firelord.eclipse.trigger] at @s run function zombie:skill/nether/firelord/p3/eclipse/trigger
execute if entity @s[type=marker,tag=firelord.eclipse.ball] at @s run function zombie:skill/nether/firelord/p3/eclipse/ball_tick

execute if entity @s[type=marker,tag=firelord.p3.meteor.controller] at @s run function zombie:skill/nether/firelord/p3/meteor/controller
execute if entity @s[type=item_display,tag=firelord.p3.meteor.mark] at @s run function zombie:skill/nether/firelord/p3/meteor/mark_tick
execute if entity @s[type=block_display,tag=firelord.p3.meteor.rock] at @s run function zombie:skill/nether/firelord/p3/meteor/rock_tick

execute if entity @s[type=marker,tag=firelord.p4.meteor.clock] at @s run function zombie:skill/nether/firelord/p4/meteor/clock
execute if entity @s[type=marker,tag=firelord.p4.meteor.wave] at @s run function zombie:skill/nether/firelord/p4/meteor/wave

execute if entity @s[type=marker,tag=firelord.p4.legion.clock] at @s run function zombie:skill/nether/firelord/p4/legion/clock

execute if entity @s[type=marker,tag=firelord.p4.legion.soul.delay] at @s run function zombie:skill/nether/firelord/p4/legion/soul_tick
