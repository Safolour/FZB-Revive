scoreboard players add @s zombie.nether.guardian.shockwave 1
execute if score @s zombie.nether.guardian.shockwave matches 11.. run scoreboard players add @s zombie.nether.guardian.shockwave0 1
execute if score @s zombie.nether.guardian.shockwave matches 25.. run scoreboard players add @s zombie.nether.guardian.shockwave1 1

execute store result storage zombie crimsonguardian.circle.r float 0.5 run scoreboard players get @s zombie.nether.guardian.shockwave
execute store result storage zombie crimsonguardian.circle.r0 float -0.25 run scoreboard players get @s zombie.nether.guardian.shockwave
execute store result storage zombie crimsonguardian.circle.r1 float 0.5 run scoreboard players get @s zombie.nether.guardian.shockwave0
execute store result storage zombie crimsonguardian.circle.r2 float 0.5 run scoreboard players get @s zombie.nether.guardian.shockwave1

scoreboard players operation cooldown zombie.nether.guardian.shockwave = @s zombie.nether.guardian.shockwave
scoreboard players operation cooldown zombie.nether.guardian.shockwave %= 10 number

function zombie:skill/nether/guardian/crimson/0/skill/shockwave/range with storage zombie crimsonguardian.circle

data remove storage zombie crimsonguardian
scoreboard players reset cooldown zombie.nether.guardian.shockwave

execute if score @s zombie.nether.guardian.shockwave matches 200.. run kill @s
