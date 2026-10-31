#say end

function zombie:skill/nether/guardian/crimson/3/guardian/blaze/clear

execute as @n[type=marker,tag=skill.guardian.floor.platform.marker,limit=1,sort=random] at @s positioned ~ ~2 ~ run function map:powerup/summon/maxammo

function zombie:skill/nether/guardian/crimson/4/init
