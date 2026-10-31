
summon creeper ~ ~ ~ {Tags:["chosen","mob","deathanimation","skill.creeper"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.creeper,color:dark_green}]},NoAI:1b,Invulnerable:1b}

scoreboard players add @e[type=skeleton,tag=skill.creeper] zombie.creeper.match 1
scoreboard players add @e[type=creeper,tag=skill.creeper] zombie.creeper.match 1

tag @n[type=creeper,tag=chosen] remove chosen
