scoreboard players add @s fl.firewait 1
execute if score @s fl.firewait matches 4.. unless entity @s[tag=firelord.charging] unless entity @s[tag=fl.charge.wait] if entity @a[scores={stat.player=1},gamemode=adventure,distance=..32] run function zombie:skill/nether/firelord/fire/pending_release
