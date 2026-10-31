
scoreboard objectives remove waitlobby.stat
scoreboard objectives remove waitlobby.timer

scoreboard objectives remove waitlobby.book_trigger 

team remove waitlobby.player

function map:waitlobby/scoreboard/reset

schedule clear map:waitlobby/1s