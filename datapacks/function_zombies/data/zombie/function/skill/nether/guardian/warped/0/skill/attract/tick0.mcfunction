scoreboard players remove @s zombie.nether.guardian.shockwave 2

execute unless score @s zombie.nether.guardian.shockwave0 = @s zombie.nether.guardian.shockwave0 run scoreboard players set @s zombie.nether.guardian.shockwave0 2
execute unless score @s zombie.nether.guardian.shockwave1 = @s zombie.nether.guardian.shockwave1 run scoreboard players set @s zombie.nether.guardian.shockwave1 0

execute if score @s zombie.nether.guardian.shockwave matches 142 run scoreboard players set @s zombie.nether.guardian.shockwave0 160
execute if score @s zombie.nether.guardian.shockwave matches ..142 run scoreboard players remove @s zombie.nether.guardian.shockwave0 2
execute if score @s zombie.nether.guardian.shockwave matches 158 run scoreboard players set @s zombie.nether.guardian.shockwave1 160
execute if score @s zombie.nether.guardian.shockwave matches ..158 run scoreboard players remove @s zombie.nether.guardian.shockwave1 2

execute store result storage zombie crimsonguardian.circle.r float 1 run scoreboard players get @s zombie.nether.guardian.shockwave
execute store result storage zombie crimsonguardian.circle.r0 float -0.5 run scoreboard players get @s zombie.nether.guardian.shockwave
execute store result storage zombie crimsonguardian.circle.r1 float 1 run scoreboard players get @s zombie.nether.guardian.shockwave0
execute store result storage zombie crimsonguardian.circle.r2 float 1 run scoreboard players get @s zombie.nether.guardian.shockwave1

scoreboard players operation cooldown zombie.nether.guardian.shockwave = @s zombie.nether.guardian.shockwave
scoreboard players operation cooldown zombie.nether.guardian.shockwave %= 10 number

function zombie:skill/nether/guardian/warped/0/skill/attract/range with storage zombie crimsonguardian.circle

data remove storage zombie crimsonguardian
scoreboard players reset cooldown zombie.nether.guardian.shockwave

execute if score @s zombie.nether.guardian.shockwave matches ..0 run function zombie:skill/nether/guardian/warped/0/skill/attract/shockwaveend
execute if score @s zombie.nether.guardian.shockwave matches ..0 run kill @s
