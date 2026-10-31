
execute if score portal_open round matches 1 if score round game.state matches ..9 run function map:round/trigger/close/0
execute unless score portal_open round matches 1 if score round game.state matches 10.. run function map:round/trigger/open