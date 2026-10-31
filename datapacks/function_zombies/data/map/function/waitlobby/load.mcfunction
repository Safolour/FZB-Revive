
scoreboard objectives add waitlobby.stat dummy
scoreboard objectives add waitlobby.timer dummy

scoreboard objectives add waitlobby.book_trigger trigger

team add waitlobby.player
team modify waitlobby.player color reset
team modify waitlobby.player collisionRule never
team modify waitlobby.player friendlyFire false

function map:waitlobby/scoreboard/load