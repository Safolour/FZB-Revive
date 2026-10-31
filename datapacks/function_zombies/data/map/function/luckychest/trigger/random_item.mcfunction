
function map:luckychest/trigger/tier
execute store result score count luckychest.item run data get storage luckychest item
#scoreboard players remove count luckychest.item 1
scoreboard players operation count0 luckychest.item = count luckychest.item
scoreboard players remove count0 luckychest.item 1
execute store result storage luckychest root.list.count int 1 run scoreboard players get count luckychest.item
execute store result storage luckychest root.list.count0 int 1 run scoreboard players get count0 luckychest.item
function map:luckychest/trigger/random_item0 with storage luckychest root.list

scoreboard players add sound luckychest.item 1
execute if score sound luckychest.item matches 1 run playsound block.note_block.pling record @a ~ ~ ~ 1 0.64
execute if score sound luckychest.item matches 2 run playsound block.note_block.pling record @a ~ ~ ~ 1 1.0
execute if score sound luckychest.item matches 3 run playsound block.note_block.pling record @a ~ ~ ~ 1 1.5
execute if score sound luckychest.item matches 4 run playsound block.note_block.pling record @a ~ ~ ~ 1 1.0
execute if score sound luckychest.item matches 4.. run scoreboard players set sound luckychest.item 0
data remove storage luckychest root