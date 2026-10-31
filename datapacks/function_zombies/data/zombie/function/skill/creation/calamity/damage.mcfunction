
particle dust{color:[1,0,0],scale:1} ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force @a[scores={particle=0}]
particle block{block_state:redstone_block} ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force @a[scores={particle=0}]
playsound entity.player.hurt record @a ~ ~ ~ 1.5 0

execute store result storage zombie skill.damage double 0.1 run scoreboard players get creation.calamity.weapon zombie.skill.damage
function zombie:skill/damage with storage zombie skill
data modify storage revive root.down.target0 set value [{translate:zb.zombie.name.using,with:[{translate:zb.zombie.name.creation.calamity},{translate:zb.zombie.name.diamondsword,color:aqua}]}]
