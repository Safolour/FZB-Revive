
tag @s[tag=gethit1] remove gethit1
tag @s[tag=gethit2] remove gethit2

execute if score gun weapon.use matches 30001 run return run tag @s[tag=hitable,distance=..5] add gethit
execute if entity @s[type=marker,tag=skill.creation.rampart.shield,distance=..5] run return run tag @s add gethit
#+3px -3px y -7
execute positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1
execute positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2

#+5px -5px
execute positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1
execute positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2

#+3px -3px
execute positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1
execute positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2

#+3px -3px
execute positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1
execute positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2

tag @s[tag=gethit1,tag=gethit2] add gethit