function weapon:range/gun/detect/hit2
execute if entity @s[tag=gethit] run function weapon:range/gun/gun/resonance/skill/hit_confirm
tag @s remove gethit
tag @s remove gethit1
tag @s remove gethit2
