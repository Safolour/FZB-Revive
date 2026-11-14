$execute as @e[nbt={UUID:$(target)},tag=mob,tag=hitable,tag=!paradox.captive,scores={zombie.health=1..},limit=1] at @s run function weapon:range/gun/gun/paradox/erosion/hit
kill @s
