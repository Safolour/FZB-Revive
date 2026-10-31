
summon slime ~ ~128 ~ {Tags:["chosen2","interaction","precedence","interaction2"],NoAI:1b,attributes:[{id:max_health,base:1024},{base:0,id:burning_time}],Health:1024,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Silent:1b}
scoreboard players operation @n[type=slime,tag=interaction,tag=chosen2] uuid = @s uuid
team join collision @n[type=slime,tag=interaction,tag=chosen2]
attribute @n[type=slime,tag=chosen2] scale base set 8
tag @n[type=slime,tag=chosen2] remove chosen2