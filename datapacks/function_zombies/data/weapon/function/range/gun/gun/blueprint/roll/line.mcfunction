# 输入 #bp_r（1..100）、storage weapon bp.line.{n,v}（lore 编号、显示值）→ 追加一行 lore，累计百分比
scoreboard players operation #bp_pct weapon.state = #bp_r weapon.state
scoreboard players operation #bp_sum weapon.state += #bp_pct weapon.state
scoreboard players add #bp_cnt weapon.state 1
execute store result storage weapon bp.line.p int 1 run scoreboard players get #bp_pct weapon.state
function weapon:range/gun/gun/blueprint/roll/line0 with storage weapon bp.line
function weapon:range/gun/gun/blueprint/roll/line1 with storage weapon bp.line
