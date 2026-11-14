scoreboard players operation #gold_loss weapon.state = gold weapon.state
scoreboard players operation #gold_loss weapon.state *= -1 number
scoreboard players operation @s gold -= #gold_loss weapon.state
scoreboard players operation #gold_loss weapon.state *= -1 number
tellraw @s [{translate:zb.item.gold0,with:[{"score":{"name":"#gold_loss","objective":"weapon.state"},"color":"gold"}]}]
