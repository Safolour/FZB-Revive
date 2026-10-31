
# 没开过枪 / 没命中过时为 0（除以 0 会失败，结果会停在 命中×100）
scoreboard players set accuracy weapon.state 0
execute if score @s weapon.gun_shot matches 1.. run scoreboard players operation accuracy weapon.state = @s weapon.gun_hit
execute if score @s weapon.gun_shot matches 1.. run scoreboard players operation accuracy weapon.state *= 100 number
execute if score @s weapon.gun_shot matches 1.. run scoreboard players operation accuracy weapon.state /= @s weapon.gun_shot
scoreboard players operation @s weapon.gun_accuracy = accuracy weapon.state

scoreboard players set accuracy weapon.state 0
execute if score @s weapon.gun_hit matches 1.. run scoreboard players operation accuracy weapon.state = @s weapon.gun_headshot
execute if score @s weapon.gun_hit matches 1.. run scoreboard players operation accuracy weapon.state *= 100 number
execute if score @s weapon.gun_hit matches 1.. run scoreboard players operation accuracy weapon.state /= @s weapon.gun_hit
scoreboard players operation @s weapon.gun_headshot_accuracy = accuracy weapon.state

#tellraw @a [{score:{name:"@s",objective:weapon.gun_accuracy}},{text:";"},{score:{name:"@s",objective:weapon.gun_headshot_accuracy}}]