summon item_display ~ ~ ~ {Tags:["firelord.p2.mark","firelord.p2.mark.new"],item:{id:"diamond",count:1,components:{"minecraft:item_model":"custom:shadow"}},transformation:{translation:[0f,0f,0f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players add #meteor_id zombie.uuid 1
scoreboard players operation @e[type=item_display,tag=firelord.p2.mark.new,sort=nearest,limit=1] zombie.uuid = #meteor_id zombie.uuid
scoreboard players set @e[type=item_display,tag=firelord.p2.mark.new,sort=nearest,limit=1] zombie.skill_timer 0
tag @e[type=item_display,tag=firelord.p2.mark.new,sort=nearest,limit=1] remove firelord.p2.mark.new
playsound entity.allay.ambient_without_item hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0
