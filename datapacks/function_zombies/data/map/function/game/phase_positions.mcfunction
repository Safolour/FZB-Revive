# Portal Lab's shop and vendor entities are always moved toward the active R70 arena.
execute if score #lab_phase map matches 1 as @e[tag=shop,tag=!door,x=280,y=80,z=120,dx=39,dy=40,dz=60] at @s run tp @s ~48 ~ ~
execute if score #lab_phase map matches 0 as @e[tag=shop,tag=!door,x=328,y=80,z=120,dx=39,dy=40,dz=60] at @s run tp @s ~-48 ~ ~
execute if score #lab_phase map matches 1 as @e[tag=area.lab.monhan,x=280,y=80,z=160,dx=39,dy=30,dz=20] at @s run tp @s ~48 ~ ~
execute if score #lab_phase map matches 0 as @e[tag=area.lab.monhan,x=328,y=80,z=160,dx=39,dy=30,dz=20] at @s run tp @s ~-48 ~ ~
execute if score #lab_phase map matches 1 as @e[type=item_display,tag=fzb_vending_decoration,x=280,y=80,z=140,dx=39,dy=30,dz=20] at @s run tp @s ~48 ~ ~
execute if score #lab_phase map matches 0 as @e[type=item_display,tag=fzb_vending_decoration,x=328,y=80,z=140,dx=39,dy=30,dz=20] at @s run tp @s ~-48 ~ ~
