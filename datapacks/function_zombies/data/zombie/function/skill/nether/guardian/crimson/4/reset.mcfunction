#schedule clear zombie:skill/nether/guardian/crimson/2/plan/init
schedule clear zombie:skill/nether/guardian/crimson/4/plan/init

execute as @n[type=guardian,tag=skill.crimsonguardian] run function zombie:skill/nether/guardian/crimson/0/skill/move/end
function zombie:skill/nether/guardian/crimson/0/spawn/clear
kill @e[type=item_display,tag=skill.crimsonguardian.shockwave]
function zombie:skill/nether/guardian/crimson/0/skill/suspense/clearall
function zombie:skill/nether/guardian/crimson/0/skill/missile/clearall
kill @e[type=marker,tag=skill.warpedguardian.shield]
function zombie:skill/nether/guardian/crimson/0/plan/end

execute as @n[type=guardian,tag=skill.warpedguardian] run function zombie:skill/nether/guardian/warped/0/skill/move/end
function zombie:skill/nether/guardian/warped/0/spawn/clear
kill @e[type=item_display,tag=skill.warpedguardian.attract]
function zombie:skill/nether/guardian/warped/0/skill/eclipse/clear
function zombie:skill/nether/guardian/warped/0/skill/labyrinth/clear
kill @e[type=marker,tag=skill.warpedguardian.shield]
function zombie:skill/nether/guardian/warped/0/skill/twilight/clearall
function zombie:skill/nether/guardian/warped/0/plan/end

