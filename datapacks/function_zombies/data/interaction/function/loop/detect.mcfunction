
tag @e[tag=gethit1] remove gethit1
tag @e[tag=gethit2] remove gethit2

execute positioned ~-0.1875 ~-1 ~-0.1875 run tag @e[type=interaction,dx=0,dy=0,dz=0,tag=interactable] add gethit1
execute positioned ~-0.8125 ~ ~-0.8125 run tag @e[type=interaction,dx=0,dy=0,dz=0,tag=interactable] add gethit2

