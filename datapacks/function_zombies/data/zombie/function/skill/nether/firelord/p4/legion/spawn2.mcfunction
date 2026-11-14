execute unless entity @e[type=marker,tag=firelord.p4.legion.clock,tag=firelord.p4.legion.second_first] run scoreboard players set @e[type=marker,tag=firelord.p4.legion.clock] zombie.skill_timer 0
tag @e[type=marker,tag=firelord.p4.legion.clock] add firelord.p4.legion.second_first
function zombie:zombie/nether/spirit/monhan_follower/0
item replace entity @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] weapon.mainhand with iron_sword
item replace entity @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU0MDcwMTFlZTcyYTU2YjVhN2VjMDhlYTNiMTM4NzBmYmZiYmUxOGQ5NTAyNjdhMTEzNjNiZjJmYjFjM2I2MiJ9fX0="}]}]
item replace entity @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] armor.chest with leather_chestplate[dyed_color=11908533]
item replace entity @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] armor.legs with leather_leggings[dyed_color=7777719]
item replace entity @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] armor.feet with leather_boots[dyed_color=480104]
tag @e[type=zombie,tag=skill.monhanfollower,distance=..1,sort=nearest,limit=1,tag=!firelord.p4.legion.mob2] add firelord.p4.legion.mob2
function zombie:skill/nether/firelord/p4/legion/land
kill @s
