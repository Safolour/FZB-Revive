
tag @s[tag=mob,tag=firezb] add nogold
execute at @s run playsound entity.zombie.attack_iron_door ambient @a
execute at @s run particle block{block_state:gold_block} ~ ~1 ~ 0.1 0.1 0.1 0 10 force @a[scores={particle=0}]
