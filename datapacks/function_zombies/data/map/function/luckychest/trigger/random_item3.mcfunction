
execute unless score item0 luckychest.item = item luckychest.item \
        unless score item0 luckychest.item = item0 luckychest.item run return fail
execute if score item1 luckychest.item = item0 luckychest.item run scoreboard players add item1 luckychest.item 1

scoreboard players operation item luckychest.item = item1 luckychest.item

