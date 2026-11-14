# The renderer uses the bundled signed skin and never logs in or fetches a player.
execute in minecraft:overworld run kill @e[type=armor_stand,tag=setting.gear_npc]
execute unless score #wanted setting.npc matches 0 run function mainlobby:setting/npc/spawn
