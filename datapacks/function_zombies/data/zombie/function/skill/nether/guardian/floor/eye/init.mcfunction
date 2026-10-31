kill @e[type=armor_stand,tag=skill.guardian.eye]

summon armor_stand 300 102 150 {Tags:["mob.skill","skill.guardian.eye"],Invisible:1b,Marker:1b,equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFhZDllMjYxZWVhMTkxZGMxNmYwZTIxZGFhYjE0Zjg3ZDExMTU3ZDc5OWRjMTY4YzQxMzY0OTU5ZDFiYSJ9fX0="}]}}}}}

execute as @e[type=armor_stand,tag=skill.guardian.eye] at @s positioned ~ ~1.8 ~ run function zombie:skill/nether/guardian/floor/eye/init0

summon lightning_bolt 300 110 120
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.guardianeye"}],color:"#8a4250"}
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.guardian.eye.tellraw.0"}
