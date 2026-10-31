#say meltdown end

function zombie:skill/nether/guardian/crimson/1/guardian/meltdown/clear



execute if score stat zombie.nether.guardian matches 2 run schedule function zombie:skill/nether/guardian/warped/0/init 5s
execute if score stat zombie.nether.guardian matches 4 run schedule function zombie:skill/nether/guardian/warped/1/end 5s
