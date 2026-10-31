# Empty bar at start, full at the end. Preserve ammo count, model and lore.
scoreboard players set @s inventory 2
item replace block 1 -60 1 container.26 from entity @s weapon.mainhand
scoreboard players set #res_dur weapon.state 100
scoreboard players operation #res_dur weapon.state -= @s weapon.res_age
scoreboard players operation #res_dur weapon.state *= #100 weapon.gun_resonance
execute store result block 1 -60 1 Items[{Slot:26b}].components."minecraft:damage" int 1 run scoreboard players get #res_dur weapon.state
item replace entity @s weapon.mainhand from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
scoreboard players set @s inventory 1
