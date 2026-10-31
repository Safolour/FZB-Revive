
summon magma_cube ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","firezb","skill.magmaslime"],attributes:[{id:"attack_damage",base:4}],data:{name:[{translate:zb.zombie.name.remains.magmaslime,color:dark_red}]},Invulnerable:1b,Size:0}

scoreboard players set @n[type=magma_cube,tag=chosen] zombie.max_health 20000

scoreboard players set @n[type=magma_cube,tag=chosen] zombie.health 2000
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.speed 100
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.armor 0

scoreboard players set @n[type=magma_cube,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.knockresistance 0

tag @n[type=magma_cube,tag=chosen] remove chosen
