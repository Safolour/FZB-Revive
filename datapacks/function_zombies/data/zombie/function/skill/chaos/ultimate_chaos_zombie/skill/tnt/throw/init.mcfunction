scoreboard players set time zombie.skill.missile 25
execute at @e[type=marker,tag=skill.ultimatechaoszombie.tnt.position.end] positioned ~ ~1 ~ run function zombie:skill/missile/start

summon marker ~ ~1.5 ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.attack_tnt.throw","chosen"]}
execute as @e[type=marker,tag=chosen] run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/throw/item with storage zombie.skill.missile root.motion

kill @e[type=marker,tag=chosen]


particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0 2 force @a[scores={particle=0}]

playsound entity.snowball.throw record @a ~ ~ ~ 2 1
