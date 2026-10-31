
scoreboard players enable @s waitlobby.book_trigger
execute unless score @s waitlobby.book_trigger matches 0 run function map:waitlobby/book_trigger



execute if items entity @s[scores={interaction.right_click=1..}] weapon *[custom_data~{tag:["waitlobby","quit"]}] run return run function map:waitlobby/quit
execute if score type map matches 3 unless entity @s[x=19,y=23,z=101,dx=25,dy=13,dz=27] run return run function map:waitlobby/quit
execute if score type map matches 4 unless entity @s[x=287,y=80,z=129,dx=27,dy=34,dz=44] run return run function map:waitlobby/quit
