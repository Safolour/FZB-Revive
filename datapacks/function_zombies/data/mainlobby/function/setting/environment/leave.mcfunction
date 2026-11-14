execute unless score @s setting.env matches 1 run return 0
function mainlobby:setting/environment/context
function mainlobby:setting/environment/leave_session with storage mainlobby:setting_environment context
data remove storage mainlobby:setting_environment context
