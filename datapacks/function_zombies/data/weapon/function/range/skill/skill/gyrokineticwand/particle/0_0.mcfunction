
execute store result score random weapon.state run random value 1..100
execute if score random weapon.state matches 70..79 run summon falling_block ~ ~-0.75 ~ {Tags:["chosen"],Time:585,BlockState:{Name:blue_terracotta},CancelDrop:true,DropItem:false,Motion:[0.0d,0.25d,0.0d]}
execute if score random weapon.state matches 80..89 run summon falling_block ~ ~-0.75 ~ {Tags:["chosen"],Time:585,BlockState:{Name:purple_stained_glass},CancelDrop:true,DropItem:false,Motion:[0.0d,0.25d,0.0d]}
execute if score random weapon.state matches 90..100 run summon falling_block ~ ~-0.75 ~ {Tags:["chosen"],Time:585,BlockState:{Name:obsidian},CancelDrop:true,DropItem:false,Motion:[0.0d,0.25d,0.0d]}
execute as @n[type=falling_block,tag=chosen] at @s run function weapon:range/skill/skill/gyrokineticwand/particle/1