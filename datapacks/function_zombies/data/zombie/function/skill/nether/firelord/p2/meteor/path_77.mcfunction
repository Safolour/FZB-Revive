summon block_display 306.8000 106.8400 146.9000 {Tags:["firelord.p2.meteor","firelord.p2.meteor.new","firelord.p2.meteor.path77","firelord.p2.meteor.main"],block_state:{Name:"minecraft:magma_block"},brightness:{block:15,sky:15},interpolation_duration:1,transformation:{translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.uuid = @s zombie.uuid
scoreboard players set @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.skill_timer 0
scoreboard players set @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.skill.damage 0
tag @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] remove firelord.p2.meteor.new
summon block_display 306.8000 107.3900 146.9000 {Tags:["firelord.p2.meteor","firelord.p2.meteor.new","firelord.p2.meteor.path77"],block_state:{Name:"minecraft:magma_block"},brightness:{block:15,sky:15},interpolation_duration:1,transformation:{translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.uuid = @s zombie.uuid
scoreboard players set @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.skill_timer 0
scoreboard players set @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] zombie.skill.damage 4
tag @e[type=block_display,tag=firelord.p2.meteor.new,sort=nearest,limit=1] remove firelord.p2.meteor.new
