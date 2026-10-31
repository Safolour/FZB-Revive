
scoreboard players set @s element.item.fire 0
scoreboard players set @s element.item.water 0
scoreboard players set @s element.item.ice 0
scoreboard players set @s element.item.electricity 0
scoreboard players set @s element.item.nature 0
scoreboard players set @s element.item.wind 0
 function elemental_effect:element_score/item/perk/perk
 scoreboard players operation @s element.item.fire += @s element.item.perk.fire
 scoreboard players operation @s element.item.water += @s element.item.perk.water
 scoreboard players operation @s element.item.ice += @s element.item.perk.ice
 scoreboard players operation @s element.item.electricity += @s element.item.perk.electricity
 scoreboard players operation @s element.item.nature += @s element.item.perk.nature
 scoreboard players operation @s element.item.wind += @s element.item.perk.wind

 