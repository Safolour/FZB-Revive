# 枪命中、伤害（含护甲、倍率、暴击）算完、扣血之前调用：调整 damage0 weapon.state
# 中和子弹：火焰、灰烬火焰、灵魂火焰发射器和四季（夏）及其终极强化，只对普通/精英敌人，boss 不吃
# boss 只有：r20 终极紊乱僵尸（skill.ultimatechaoszombie）、r30 绯红/诡异守卫者（skill.guardian；诡异守卫者召出的日蚀/迷宫这些生成物不算 boss，照样吃）、
#   r40 火焰领主、r70 造物-泰坦/造物-起源（这三个还没做，做的时候给它们加 boss 标签）；其他带 bossbar 的都算精英
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10005 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10028 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10045 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10046 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10060 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10069 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10073 run function map:perk/neutralization_bullet
execute if entity @s[tag=!boss,tag=!skill.ultimatechaoszombie,tag=!skill.guardian] if entity @p[scores={weapon.use=1..,perk.neutralization_bullet=1}] if score gun weapon.use matches 10074 run function map:perk/neutralization_bullet
