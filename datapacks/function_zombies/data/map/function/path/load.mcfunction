
scoreboard objectives add path dummy
scoreboard objectives add path.summon dummy
scoreboard objectives add path.in_window dummy
scoreboard objectives add path.tp_binding dummy
scoreboard objectives add path.tp_order dummy
scoreboard objectives add path.timer dummy
scoreboard objectives add path.delay dummy
scoreboard objectives add path.way_point dummy
scoreboard objectives add path.way_point.near dummy
scoreboard objectives add path.way_point.near0 dummy
scoreboard objectives add path.way_point.target dummy
scoreboard objectives add path.way_point.target0 dummy
scoreboard objectives add path.way_point.order dummy
scoreboard objectives add path.way_point.order0 dummy
scoreboard objectives add path.way_point.order1 dummy
scoreboard objectives add path.way_point.show_near dummy
 scoreboard players set point path.way_point.show_near -1

team add mob
team modify mob collisionRule pushOtherTeams
team modify mob friendlyFire false