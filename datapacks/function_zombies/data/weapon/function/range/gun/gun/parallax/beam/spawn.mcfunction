execute anchored eyes positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["gun","parallax_beam","parallax_new"],item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"custom:parallax"}},transformation:{scale:[1f,1f,0f],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
scoreboard players operation @e[tag=parallax_new,limit=1] weapon.gun_uuid = @s uuid
tag @e[tag=parallax_new] remove parallax_new
