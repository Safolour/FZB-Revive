scoreboard players remove @s weapon.gun_musicgun_ammo 1
scoreboard players remove @s weapon.gun_musicgun_clip_ammo 1
function weapon:range/gun/slot/count {gun:"musicgun"}
function weapon:range/gun/slot/xp_lv {gun:"musicgun"}
execute unless score @s weapon.gun_musicgun_rate0 = @s weapon.gun_musicgun_rate0 run scoreboard players operation @s weapon.gun_musicgun_rate0 = rate weapon.gun_musicgun
scoreboard players operation @s weapon.gun_musicgun_rate = @s weapon.gun_musicgun_rate0
scoreboard players operation @s weapon.use = uuid weapon.gun_musicgun
execute store result score random weapon.state run random value 1..5
execute if score random weapon.state matches 1 run playsound block.note_block.flute record @a ~ ~ ~ 1 1 0
execute if score random weapon.state matches 2 run playsound block.note_block.flute record @a ~ ~ ~ 1 1.25 0
execute if score random weapon.state matches 3 run playsound block.note_block.flute record @a ~ ~ ~ 1 1.5 0
execute if score random weapon.state matches 4 run playsound block.note_block.flute record @a ~ ~ ~ 1 1.75 0
execute if score random weapon.state matches 5 run playsound block.note_block.flute record @a ~ ~ ~ 1 2 0
function weapon:range/gun/gun/musicgun/summon0
scoreboard players set @s weapon.use 0

# BEGIN ECHO RECORD
execute unless score extrashot weapon.gun_musicgun matches 1.. run function weapon:range/skill/skill/echo/record {gun:"musicgun"}
# END ECHO RECORD
