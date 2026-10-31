
scoreboard objectives add powerup dummy
scoreboard objectives add powerup.color dummy
scoreboard objectives add powerup.timer dummy
 scoreboard players set stay powerup.timer 1200
 scoreboard players set instakill powerup.timer 200
 scoreboard players set doublegold powerup.timer 600
 scoreboard players set triplegold powerup.timer 600
 scoreboard players set quadruplegold powerup.timer 600
 # 金钱丢失掉的多倍金钱在地上只留 10 秒
 scoreboard players set short powerup.timer 200
 scoreboard players set shoppingspree powerup.timer 400
scoreboard objectives add powerup.timer.instakill dummy
scoreboard objectives add powerup.timer.doublegold dummy
scoreboard objectives add powerup.timer.triplegold dummy
scoreboard objectives add powerup.timer.quadruplegold dummy
scoreboard objectives add powerup.timer.shoppingspree dummy
scoreboard objectives add powerup.gold dummy
 scoreboard players set bonusgold powerup.gold 500
 scoreboard players set carpenter powerup.gold 100

bossbar add powerup ""
bossbar set powerup players
bossbar set powerup color pink
bossbar set powerup max 100
bossbar set powerup value 100
bossbar set powerup style progress

data modify storage powerup bossbar.name set value [[],{text:""}]

