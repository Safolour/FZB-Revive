
tag @s[tag=gethit1_+x] remove gethit1_+x
tag @s[tag=gethit2_+x] remove gethit2_+x
tag @s[tag=gethit1_+y] remove gethit1_+y
tag @s[tag=gethit2_+y] remove gethit2_+y
tag @s[tag=gethit1_+z] remove gethit1_+z
tag @s[tag=gethit2_+z] remove gethit2_+z
tag @s[tag=gethit1_-x] remove gethit1_-x
tag @s[tag=gethit2_-x] remove gethit2_-x
tag @s[tag=gethit1_-y] remove gethit1_-y
tag @s[tag=gethit2_-y] remove gethit2_-y
tag @s[tag=gethit1_-z] remove gethit1_-z
tag @s[tag=gethit2_-z] remove gethit2_-z


execute if score gun weapon.use matches 30001 run return run tag @s[tag=hitable,distance=..5] add gethit
execute if entity @s[type=marker,tag=skill.creation.rampart.shield,distance=..5] run return run tag @s add gethit
#~0.5 ~ ~ +x
execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_+x
execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_+x

execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_+x
execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_+x

execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_+x
execute if score x weapon.state matches 0 positioned ~0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_+x

#execute positioned ~0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_+x
#execute positioned ~0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_+x

tag @s[tag=gethit1_+x,tag=gethit2_+x] add gethit_+x
#~-0.5 ~ ~ -x
execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_-x
execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_-x

execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_-x
execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_-x

execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_-x
execute if score x weapon.state matches 0 positioned ~-0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_-x

#execute positioned ~-0.5 ~ ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_-x
#execute positioned ~-0.5 ~ ~ positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_-x

tag @s[tag=gethit1_-x,tag=gethit2_-x] add gethit_-x
#~ ~0.5 ~ +y
execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_+y
execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_+y

execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_+y
execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_+y

execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_+y
execute if score y weapon.state matches 0 positioned ~ ~0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_+y

#execute positioned ~ ~0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_+y
#execute positioned ~ ~0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_+y

tag @s[tag=gethit1_+y,tag=gethit2_+y] add gethit_+y
#~ ~-0.5 ~ -y
execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_-y
execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_-y

execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_-y
execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_-y

execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_-y
execute if score y weapon.state matches 0 positioned ~ ~-0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_-y

#execute positioned ~ ~-0.5 ~ positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_-y
#execute positioned ~ ~-0.5 ~ positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_-y

tag @s[tag=gethit1_-y,tag=gethit2_-y] add gethit_-y
#~ ~ ~0.5 +z
execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_+z
execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_+z

execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_+z
execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_+z

execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_+z
execute if score z weapon.state matches 0 positioned ~ ~ ~0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_+z

#execute positioned ~ ~ ~0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_+z
#execute positioned ~ ~ ~0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_+z

tag @s[tag=gethit1_+z,tag=gethit2_+z] add gethit_+z
#~ ~ ~-0.5 -z
execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit1_-z
execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=-4,dz=0,tag=hitable,tag=giantzombie,scores={zombie.health=1..}] add gethit2_-z

execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.3125 ~-1 ~-0.3125 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit1_-z
execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.3125 ~ ~-0.6875 run tag @s[dx=0,dy=0,dz=0,tag=babyzombie,tag=hitable,scores={zombie.health=1..}] add gethit2_-z

execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit1_-z
execute if score z weapon.state matches 0 positioned ~ ~ ~-0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @s[dx=0,dy=0,dz=0,tag=hitable,scores={zombie.health=1..}] add gethit2_-z

#execute positioned ~ ~ ~-0.5 positioned ~-0.1875 ~-1 ~-0.1875 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit1_-z
#execute positioned ~ ~ ~-0.5 positioned ~-0.8125 ~ ~-0.8125 run tag @a[dx=0,dy=0,dz=0,tag=hitable,scores={weapon.use=0}] add gethit2_-z

tag @s[tag=gethit1_-z,tag=gethit2_-z] add gethit_-z


tag @s[tag=gethit2_+x] add gethit
tag @s[tag=gethit2_-x] add gethit
tag @s[tag=gethit2_+y] add gethit
tag @s[tag=gethit2_-y] add gethit
tag @s[tag=gethit2_+z] add gethit
tag @s[tag=gethit2_-z] add gethit