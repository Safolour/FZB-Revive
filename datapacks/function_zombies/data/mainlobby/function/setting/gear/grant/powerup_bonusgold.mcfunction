# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
clear @s *[custom_data~{tag:["setting_gear"]}]
execute unless score @s system.room matches 2 run return fail
function mainlobby:setting/powerup/grant {powerup:bonusgold}
data remove storage mainlobby:setting_gear grant
