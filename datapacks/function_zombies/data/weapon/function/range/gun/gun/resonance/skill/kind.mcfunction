$execute as @e[tag=hitable,tag=!res_skill_damaged,scores={zombie.health=1..},nbt={data:{name:$(name)}}] run function weapon:range/gun/gun/resonance/skill/name_exact
