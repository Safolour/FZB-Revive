# 玩家执行：伤害吸收增加 #ashes_add，按接收者当前 max_health 封顶；溢出折半后存入玩家对应枪型的计分板
# 玩家的 AbsorptionAmount 不能直接改：先给 50 级伤害吸收效果（金血直接到 200、上限 200），
#   再加一个 max_absorption 负修饰符把上限压到目标值，玩家这一 tick 更新属性时金血被夹到目标值，下一 tick 去掉修饰符
#   （同 player_stat:health/absorption 的做法；不能复用它的 health.absorption_decay 标签：玩家每 tick 先跑武器再跑生命，
#    同一 tick 里就会被 restore 去掉，夹不下来，所以这里用自己的修饰符和下一 tick 的 gametime）
# 倒地的不给
execute if score @s stat.player matches 2.. run return fail
execute store result score #ashes_cur weapon.state run data get entity @s AbsorptionAmount 100
# 同一 tick 里受伤/衰减已经把上限压下去时，以上限为准
execute store result score #ashes_m weapon.state run attribute @s max_absorption get 100
scoreboard players operation #ashes_cur weapon.state < #ashes_m weapon.state
execute store result score #ashes_cap weapon.state run attribute @s max_health get 100
scoreboard players operation #ashes_t weapon.state = #ashes_cur weapon.state
scoreboard players operation #ashes_t weapon.state += #ashes_add weapon.state

# 超过接收者当前生命上限的金血存进其背包里的灰烬枪；若有同型号枪则优先存入同型号
scoreboard players operation #ashes_over weapon.state = #ashes_t weapon.state
scoreboard players operation #ashes_over weapon.state -= #ashes_cap weapon.state
execute if score #ashes_over weapon.state matches 1.. if score #ashes_kind weapon.state matches 1 if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_regular
execute if score #ashes_over weapon.state matches 1.. if score #ashes_kind weapon.state matches 1 unless items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_ultimate
execute if score #ashes_over weapon.state matches 1.. if score #ashes_kind weapon.state matches 2 if items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_ultimate
execute if score #ashes_over weapon.state matches 1.. if score #ashes_kind weapon.state matches 2 unless items entity @s container.* *[custom_data~{tag:["ultimateashesflamethrower"]}] if items entity @s container.* *[custom_data~{tag:["ashesflamethrower"]}] run function weapon:range/gun/gun/ashesflamethrower/absorb/store_regular

scoreboard players operation #ashes_t weapon.state < #ashes_cap weapon.state
execute if score #ashes_t weapon.state = #ashes_cur weapon.state run return fail
scoreboard players operation #ashes_target weapon.state = #ashes_t weapon.state
function weapon:range/gun/gun/ashesflamethrower/absorb/apply
# 录像：队友身上有 cat.hiss 音量 0.5、音调 0
execute unless entity @s[tag=ashes_giver] run playsound entity.cat.hiss record @a ~ ~ ~ 0.5 0 0
