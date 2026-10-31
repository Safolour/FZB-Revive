

#
 scoreboard players operation @s[scores={element.cohere.fire=1..,element.fade_timer.fire=0}] element.cohere.fire -= @s element.fade_count.fire
 scoreboard players operation @s[scores={element.cohere.water=1..,element.fade_timer.water=0}] element.cohere.water -= @s element.fade_count.water
 scoreboard players operation @s[scores={element.cohere.ice=1..,element.fade_timer.ice=0}] element.cohere.ice -= @s element.fade_count.ice
 scoreboard players operation @s[scores={element.cohere.electricity=1..,element.fade_timer.electricity=0}] element.cohere.electricity -= @s element.fade_count.electricity
 scoreboard players operation @s[scores={element.cohere.nature=1..,element.fade_timer.nature=0}] element.cohere.nature -= @s element.fade_count.nature
 scoreboard players operation @s[scores={element.cohere.wind=1..,element.fade_timer.wind=0}] element.cohere.wind -= @s element.fade_count.wind

 scoreboard players operation @s[scores={element.cohere.fire=1..,element.fade_timer.fire=0}] element.fade_timer.fire = @s element.fade_speed.fire
 scoreboard players operation @s[scores={element.cohere.water=1..,element.fade_timer.water=0}] element.fade_timer.water = @s element.fade_speed.water
 scoreboard players operation @s[scores={element.cohere.ice=1..,element.fade_timer.ice=0}] element.fade_timer.ice = @s element.fade_speed.ice
 scoreboard players operation @s[scores={element.cohere.electricity=1..,element.fade_timer.electricity=0}] element.fade_timer.electricity = @s element.fade_speed.electricity
 scoreboard players operation @s[scores={element.cohere.nature=1..,element.fade_timer.nature=0}] element.fade_timer.nature = @s element.fade_speed.nature
 scoreboard players operation @s[scores={element.cohere.wind=1..,element.fade_timer.wind=0}] element.fade_timer.wind = @s element.fade_speed.wind

#
 scoreboard players remove @s[scores={element.fade_timer.fire=1..}] element.fade_timer.fire 1
 scoreboard players remove @s[scores={element.fade_timer.water=1..}] element.fade_timer.water 1
 scoreboard players remove @s[scores={element.fade_timer.ice=1..}] element.fade_timer.ice 1
 scoreboard players remove @s[scores={element.fade_timer.electricity=1..}] element.fade_timer.electricity 1
 scoreboard players remove @s[scores={element.fade_timer.nature=1..}] element.fade_timer.nature 1
 scoreboard players remove @s[scores={element.fade_timer.wind=1..}] element.fade_timer.wind 1