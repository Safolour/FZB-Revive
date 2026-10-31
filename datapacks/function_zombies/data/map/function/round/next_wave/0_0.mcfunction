
$execute if data storage round powerup.maxammo[{round:$(round),wave:$(wave)}] run scoreboard players set maxammo round 1
$execute if data storage round powerup.instakill[{round:$(round),wave:$(wave)}] run scoreboard players set instakill round 1
$execute if data storage round powerup.doublegold[{round:$(round),wave:$(wave)}] run scoreboard players set doublegold round 1
$execute if data storage round powerup.triplegold[{round:$(round),wave:$(wave)}] run scoreboard players set triplegold round 1
$execute if data storage round powerup.bonusgold[{round:$(round),wave:$(wave)}] run scoreboard players set bonusgold round 1
$execute if data storage round powerup.shoppingspree[{round:$(round),wave:$(wave)}] run scoreboard players set shoppingspree round 1
$execute if data storage round powerup.carpenter[{round:$(round),wave:$(wave)}] run scoreboard players set carpenter round 1
$execute if data storage round powerup.purification[{round:$(round),wave:$(wave)}] run scoreboard players set purification round 1

$scoreboard players set wave round $(wave)
execute unless score wave round matches 1 run return fail

execute store result score random round run random value 0..10
scoreboard players operation random round += round game.state
execute unless score round game.state matches 5..15 run scoreboard players set random round 0
execute if score random round matches 15.. run scoreboard players set bonusgold round 1
scoreboard players set random round 0

execute if score round game.state matches 1..40 store result score random round run random value 1..3
execute if score random round matches 1 run scoreboard players set doublegold round 1
scoreboard players set random round 0

execute if score round game.state matches 41.. store result score random round run random value 1..3
execute if score random round matches 1 run scoreboard players set triplegold round 1
scoreboard players set random round 0

execute store result score random round run random value 1..10
execute if score random round matches 1 run scoreboard players set carpenter round 1
scoreboard players set random round 0

execute if score bonusgold_spawn round matches 1 run scoreboard players set bonusgold round 0
execute if score bonusgold round matches 1 run scoreboard players set bonusgold_spawn round 1