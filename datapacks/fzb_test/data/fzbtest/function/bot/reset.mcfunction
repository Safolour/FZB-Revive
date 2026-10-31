# 以假人身份执行：恢复 PL 开局背包、给足金钱、补满弹药、回满血
function inventory:inventory/lab_start
scoreboard players set @s gold 1000000
function weapon:allammo
function bs.health:add/health {points:1000}
