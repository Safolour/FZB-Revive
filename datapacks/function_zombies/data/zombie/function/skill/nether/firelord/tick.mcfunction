execute if entity @s[tag=firelord.p5] run return 0
execute if entity @s[tag=firelord.eclipse.wait] run return 0
execute if entity @s[tag=firelord.sunflare.pending] run function zombie:skill/nether/firelord/sunflare/pending
execute if entity @s[tag=firelord.sunflare.active] run function zombie:skill/nether/firelord/sunflare/tick
execute if entity @s[tag=firelord.p3] run function zombie:skill/nether/firelord/p3/eclipse/ghast_tick
execute unless entity @s[tag=skill.firelord.shield.used] unless entity @s[tag=firelord.p3] run function zombie:skill/nether/firelord/circle/clock
execute if entity @s[tag=firelord.p3] run function zombie:skill/nether/firelord/circle/clock
execute if entity @s[tag=firelord.sunflare.active] run return 0
execute if entity @s[tag=firelord.eclipse.charge] run return run function zombie:skill/nether/firelord/p3/eclipse/charge
execute if entity @s[tag=skill.firelord.shield] run return run function zombie:skill/nether/firelord/shield/tick
execute if entity @s[tag=firelord.traveling] run return 0
execute if entity @s[tag=firelord.fire.pending] run return run function zombie:skill/nether/firelord/fire/pending_tick
execute if entity @s[tag=firelord.charging] run return run function zombie:skill/nether/firelord/charge/tick
execute if entity @s[tag=fl.charge.wait] run return run function zombie:skill/nether/firelord/charge/wait
scoreboard players add @s zombie.skill_timer 1
execute if entity @s[tag=firelord.combo.first] run return run function zombie:skill/nether/firelord/fire/combo_tick
execute if entity @s[tag=firelord.combo.second] run return run function zombie:skill/nether/firelord/fire/combo_tick
execute if entity @s[tag=firelord.combo.third] run return run function zombie:skill/nether/firelord/fire/combo_tick
execute if entity @s[tag=fl.choose.after_travel] if score @s zombie.skill_timer matches 30.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] run return run function zombie:skill/nether/firelord/fire/choose_after_travel
execute if entity @s[tag=fl.choose.other] if score @s zombie.skill_timer matches 30.. if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] run return run function zombie:skill/nether/firelord/fire/choose_other
execute unless entity @s[tag=firelord.circle.active] unless entity @s[tag=fl.choose.after_travel] unless entity @s[tag=fl.choose.other] if score @s zombie.skill_timer matches 180.. run function zombie:zombie/nether/firelord/spawn_north
