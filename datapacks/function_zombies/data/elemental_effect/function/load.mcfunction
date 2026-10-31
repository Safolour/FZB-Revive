
#物品元素分数
 #分数
  scoreboard objectives add element.item.fire dummy
  scoreboard objectives add element.item.water dummy
  scoreboard objectives add element.item.ice dummy
  scoreboard objectives add element.item.electricity dummy
  scoreboard objectives add element.item.nature dummy
  scoreboard objectives add element.item.wind dummy
  scoreboard objectives add element.item.fire0 dummy
  scoreboard objectives add element.item.water0 dummy
  scoreboard objectives add element.item.ice0 dummy
  scoreboard objectives add element.item.electricity0 dummy
  scoreboard objectives add element.item.nature0 dummy
  scoreboard objectives add element.item.wind0 dummy
 #加成
  scoreboard objectives add element.item.perk.fire dummy
  scoreboard objectives add element.item.perk.water dummy
  scoreboard objectives add element.item.perk.ice dummy
  scoreboard objectives add element.item.perk.electricity dummy
  scoreboard objectives add element.item.perk.nature dummy
  scoreboard objectives add element.item.perk.wind dummy
#区域元素分数
 #分数
  scoreboard objectives add element.area.fire dummy
  scoreboard objectives add element.area.water dummy
  scoreboard objectives add element.area.ice dummy
  scoreboard objectives add element.area.electricity dummy
  scoreboard objectives add element.area.nature dummy
  scoreboard objectives add element.area.wind dummy
  scoreboard objectives add element.area.fire0 dummy
  scoreboard objectives add element.area.water0 dummy
  scoreboard objectives add element.area.ice0 dummy
  scoreboard objectives add element.area.electricity0 dummy
  scoreboard objectives add element.area.nature0 dummy
  scoreboard objectives add element.area.wind0 dummy

#元素消逝
 #计时器
  scoreboard objectives add element.fade_timer.fire dummy
  scoreboard objectives add element.fade_timer.water dummy
  scoreboard objectives add element.fade_timer.ice dummy
  scoreboard objectives add element.fade_timer.electricity dummy
  scoreboard objectives add element.fade_timer.nature dummy
  scoreboard objectives add element.fade_timer.wind dummy
 #自然消逝时间
  scoreboard objectives add element.fade_speed.fire dummy
  scoreboard objectives add element.fade_speed.water dummy
  scoreboard objectives add element.fade_speed.ice dummy
  scoreboard objectives add element.fade_speed.electricity dummy
  scoreboard objectives add element.fade_speed.nature dummy
  scoreboard objectives add element.fade_speed.wind dummy
  #
   scoreboard players set time element.fade_speed.fire 20
   scoreboard players set time element.fade_speed.water 20
   scoreboard players set time element.fade_speed.ice 40
   scoreboard players set time element.fade_speed.electricity 20
   scoreboard players set time element.fade_speed.nature 20
   scoreboard players set time element.fade_speed.wind 20
 #每次减少个数
  scoreboard objectives add element.fade_count.fire dummy
  scoreboard objectives add element.fade_count.water dummy
  scoreboard objectives add element.fade_count.ice dummy
  scoreboard objectives add element.fade_count.electricity dummy
  scoreboard objectives add element.fade_count.nature dummy
  scoreboard objectives add element.fade_count.wind dummy
  #
   scoreboard players set count element.fade_count.fire 1
   scoreboard players set count element.fade_count.water 1
   scoreboard players set count element.fade_count.ice 1
   scoreboard players set count element.fade_count.electricity 2
   scoreboard players set count element.fade_count.nature 1
   scoreboard players set count element.fade_count.wind 1
#元素反应
 #附着元素分数
  scoreboard objectives add element.cohere.fire dummy
  scoreboard objectives add element.cohere.water dummy
  scoreboard objectives add element.cohere.ice dummy
  scoreboard objectives add element.cohere.electricity dummy
  scoreboard objectives add element.cohere.nature dummy
  scoreboard objectives add element.cohere.wind dummy
  scoreboard objectives add element.cohere.fire0 dummy
  scoreboard objectives add element.cohere.water0 dummy
  scoreboard objectives add element.cohere.ice0 dummy
  scoreboard objectives add element.cohere.electricity0 dummy
  scoreboard objectives add element.cohere.nature0 dummy
  scoreboard objectives add element.cohere.wind0 dummy
  scoreboard players set max element.cohere.fire 50
  scoreboard players set max element.cohere.water 50
  scoreboard players set max element.cohere.ice 50
  scoreboard players set max element.cohere.electricity 50
  scoreboard players set max element.cohere.nature 50
  scoreboard players set max element.cohere.wind 50
#
#
#
#
#
