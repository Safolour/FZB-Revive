# 性能基准：以假人身份开一枪手枪（只走子弹发射与弹道部分，不扣弹药）
scoreboard players operation @s weapon.use = uuid weapon.gun_pistol
function weapon:range/gun/gun/pistol/summon0
scoreboard players set @s weapon.use 0
