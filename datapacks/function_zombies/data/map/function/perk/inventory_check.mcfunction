
execute if items entity @s[scores={perk.fast_revive=0}] container.* *[custom_data~{tag:["fast_revive"]}] run function map:perk/fast_revive
execute unless items entity @s[scores={perk.fast_revive=1}] container.* *[custom_data~{tag:["fast_revive"]}] run function map:perk/fast_revive

execute if items entity @s[scores={perk.quick_fire=0}] container.* *[custom_data~{tag:["quick_fire"]}] run function map:perk/quick_fire
execute unless items entity @s[scores={perk.quick_fire=1}] container.* *[custom_data~{tag:["quick_fire"]}] run function map:perk/quick_fire

execute if items entity @s[scores={perk.extra_health=0}] container.* *[custom_data~{tag:["extra_health"]}] run function map:perk/extra_health
execute unless items entity @s[scores={perk.extra_health=1}] container.* *[custom_data~{tag:["extra_health"]}] run function map:perk/extra_health

execute if items entity @s[scores={perk.fast_regeneration=0}] container.* *[custom_data~{tag:["fast_regeneration"]}] run function map:perk/fast_regeneration
execute unless items entity @s[scores={perk.fast_regeneration=1}] container.* *[custom_data~{tag:["fast_regeneration"]}] run function map:perk/fast_regeneration

execute if items entity @s[scores={perk.no_knockback=0}] container.* *[custom_data~{tag:["no_knockback"]}] run function map:perk/no_knockback
execute unless items entity @s[scores={perk.no_knockback=1}] container.* *[custom_data~{tag:["no_knockback"]}] run function map:perk/no_knockback




# 首次检查暂按“之前有双倍子弹”处理；若玩家已丢失该增益，也会立即压回基础备弹上限
execute unless score @s perk.double_bullet_prev matches -2147483648.. run scoreboard players set @s perk.double_bullet_prev 1
scoreboard players set @s perk.fast_revive 0
scoreboard players set @s perk.speed 0
scoreboard players set @s perk.quick_fire 0
scoreboard players set @s perk.frozen_bullet 0
scoreboard players set @s perk.extra_health 0
scoreboard players set @s perk.gold_thrower 0
scoreboard players set @s perk.double_bullet 0
scoreboard players set @s perk.fast_regeneration 0
scoreboard players set @s perk.gravity_bullet 0
scoreboard players set @s perk.flame_bullet 0
scoreboard players set @s perk.ashes_bullet 0
scoreboard players set @s perk.neutralization_bullet 0
scoreboard players set @s perk.lightning_bullet 0
scoreboard players set @s perk.selfexplosion 0
scoreboard players set @s perk.no_knockback 0
scoreboard players set @s perk.absorptionconversion 0
scoreboard players set @s perk.magnetic_bullet 0
execute if items entity @s container.* *[custom_data~{tag:["fast_revive"]}] run scoreboard players set @s perk.fast_revive 1
execute if items entity @s container.* *[custom_data~{tag:["speed"]}] run scoreboard players set @s perk.speed 1
execute if items entity @s container.* *[custom_data~{tag:["quick_fire"]}] run scoreboard players set @s perk.quick_fire 1
execute if items entity @s container.* *[custom_data~{tag:["frozen_bullet"]}] run scoreboard players set @s perk.frozen_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["extra_health"]}] run scoreboard players set @s perk.extra_health 1
execute if items entity @s container.* *[custom_data~{tag:["gold_thrower"]}] run scoreboard players set @s perk.gold_thrower 1
execute if items entity @s container.* *[custom_data~{tag:["double_bullet"]}] run scoreboard players set @s perk.double_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["fast_regeneration"]}] run scoreboard players set @s perk.fast_regeneration 1
execute if items entity @s container.* *[custom_data~{tag:["gravity_bullet"]}] run scoreboard players set @s perk.gravity_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["flame_bullet"]}] run scoreboard players set @s perk.flame_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["ashes_bullet"]}] run scoreboard players set @s perk.ashes_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["neutralization_bullet"]}] run scoreboard players set @s perk.neutralization_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["lightning_bullet"]}] run scoreboard players set @s perk.lightning_bullet 1
execute if items entity @s container.* *[custom_data~{tag:["selfexplosion"]}] run scoreboard players set @s perk.selfexplosion 1
execute if items entity @s container.* *[custom_data~{tag:["no_knockback"]}] run scoreboard players set @s perk.no_knockback 1
execute if items entity @s container.* *[custom_data~{tag:["absorptionconversion"]}] run scoreboard players set @s perk.absorptionconversion 1
execute if items entity @s container.* *[custom_data~{tag:["magnetic_bullet"]}] run scoreboard players set @s perk.magnetic_bullet 1
# 没有伤害吸收转化时加成清零（伤害、受伤计算里会读这两个分数）
scoreboard players set @s[scores={perk.absorptionconversion=0}] perk.absorption_damage 0
scoreboard players set @s[scores={perk.absorptionconversion=0}] perk.absorption_resist 0
scoreboard players set @s[scores={perk.absorptionconversion=0}] perk.absorption_mode 0
# 移除双倍子弹时，将各枪现存备弹压回基础上限；弹匣内子弹不受双倍 perk 影响
execute if score @s perk.double_bullet_prev matches 1 if score @s perk.double_bullet matches 0 run function map:perk/double_bullet/clamp_all
scoreboard players operation @s perk.double_bullet_prev = @s perk.double_bullet
