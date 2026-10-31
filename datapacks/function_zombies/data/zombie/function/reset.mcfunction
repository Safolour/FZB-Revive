# r30 守卫者：游戏结束（全灭、/hub）时原来不调用它的 reset，转阶段排着的 schedule（召唤烈焰人、诡异守卫者等）
# 在重置后照样执行，boss 会刷进下一局，等待大厅里也会被打。要在下面删计分板之前调用
function zombie:skill/nether/guardian/reset

scoreboard objectives remove zombie.health
scoreboard objectives remove zombie.health0
scoreboard objectives remove zombie.health1
scoreboard objectives remove zombie.max_health

scoreboard objectives remove zombie.knockresistance
scoreboard objectives remove zombie.knockresistance1

scoreboard objectives remove zombie.speed
scoreboard objectives remove zombie.speed0
scoreboard objectives remove zombie.speed1

scoreboard objectives remove zombie.motionx
scoreboard objectives remove zombie.motiony
scoreboard objectives remove zombie.motionz
scoreboard objectives remove zombie.motionx1
scoreboard objectives remove zombie.motiony1
scoreboard objectives remove zombie.motionz1
scoreboard objectives remove zombie.armor

scoreboard objectives remove zombie.uuid
scoreboard objectives remove zombie.uuid0

scoreboard objectives remove zombie.critical_extra

scoreboard objectives remove zombie.max_health

scoreboard objectives remove zombie.portalmotion_max
scoreboard objectives remove zombie.portalmotion_min

scoreboard objectives remove zombie.kill

function zombie:skill/reset
function zombie:bossbar/reset

data remove storage zombie skill
data remove storage zombie.skill.missile root
data remove storage zombie root

worldborder center 0 0
worldborder set 10000000
worldborder damage amount 0
worldborder warning distance 0
