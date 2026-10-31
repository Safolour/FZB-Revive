
$data modify entity @s CustomName set value [{text:"§7["},{text:"§c$(1)§r"},{text:"§7$(2)§r"},{text:"§8$(0)§r"},{text:"§7]"}]
data remove storage zombie root


#tellraw @a [{"score":{"name":"@s","objective":"zombie.bossbar_number"}},{text:";"},{"score":{"name":"@s","objective":"zombie.bossbar_number0"}},{text:";"},{"score":{"name":"@s","objective":"zombie.bossbar_number1"}}]