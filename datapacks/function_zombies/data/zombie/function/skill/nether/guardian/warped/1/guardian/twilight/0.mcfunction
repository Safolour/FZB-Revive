execute store result score random zombie.random run random value 1..8

execute if score random zombie.random matches 1 run data modify storage zombie warpedguardiantwilightpos set value {x:290,y:85.7,z:131,m:-95,n:0,right:1}
execute if score random zombie.random matches 2 run data modify storage zombie warpedguardiantwilightpos set value {x:290,y:85.7,z:131,m:10,n:0,left:1}
execute if score random zombie.random matches 3 run data modify storage zombie warpedguardiantwilightpos set value {x:311,y:85.7,z:131,m:-10,n:0,right:1}
execute if score random zombie.random matches 4 run data modify storage zombie warpedguardiantwilightpos set value {x:311,y:85.7,z:131,m:95,n:0,left:1}
execute if score random zombie.random matches 5 run data modify storage zombie warpedguardiantwilightpos set value {x:290,y:85.7,z:171,m:170,n:0,right:1}
execute if score random zombie.random matches 6 run data modify storage zombie warpedguardiantwilightpos set value {x:290,y:85.7,z:171,m:-85,n:0,left:1}
execute if score random zombie.random matches 7 run data modify storage zombie warpedguardiantwilightpos set value {x:310,y:85.7,z:171,m:85,n:0,right:1}
execute if score random zombie.random matches 8 run data modify storage zombie warpedguardiantwilightpos set value {x:310,y:85.7,z:171,m:-170,n:0,left:1}

function zombie:skill/nether/guardian/warped/0/skill/twilight/spawn with storage zombie warpedguardiantwilightpos

data remove storage zombie warpedguardiantwilightpos
scoreboard players reset random zombie.random
