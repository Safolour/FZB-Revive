
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
playsound entity.player.hurt_on_fire record @a ~ ~ ~ 1 0
particle flame ~ ~1 ~ 0 0 0 0.1 10 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle dust{color:[1,0.5,0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]

function zombie:skill/nether/guardian/floor/platform/break0