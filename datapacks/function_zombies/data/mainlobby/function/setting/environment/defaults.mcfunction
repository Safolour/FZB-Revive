# Fill missing role state only. Never refill health, absorption, ammo or cooldowns.
function system:uuid
execute unless score @s uuid0 = @s uuid0 store result score @s uuid0 run data get entity @s UUID[0]
execute unless score @s uuid1 = @s uuid1 store result score @s uuid1 run data get entity @s UUID[1]
execute unless score @s uuid2 = @s uuid2 store result score @s uuid2 run data get entity @s UUID[2]
execute unless score @s uuid3 = @s uuid3 store result score @s uuid3 run data get entity @s UUID[3]
scoreboard players set @s stat.player 1
execute unless score @s inventory = @s inventory run scoreboard players set @s inventory 1
execute unless score @s inventory.lock = @s inventory.lock run scoreboard players set @s inventory.lock 1
execute unless score @s inventory.armor matches 0..12 run scoreboard players set @s inventory.armor 0
execute unless score @s stat.max_health = @s stat.max_health run scoreboard players set @s perk.extra_health 0
execute unless score @s stat.max_health = @s stat.max_health run scoreboard players operation @s stat.max_health = default perk.extra_health
execute unless score @s stat.max_health = @s stat.max_health run scoreboard players set @s stat.max_health 20
execute store result score @s health.health run data get entity @s Health 10
execute store result score @s health.absorption run data get entity @s AbsorptionAmount 100
execute unless score @s health.regeneration_timer = @s health.regeneration_timer run scoreboard players set @s health.regeneration_timer -1
execute unless score @s health.invincible_timer = @s health.invincible_timer run scoreboard players set @s health.invincible_timer -1
execute unless score @s health.damage_skill = @s health.damage_skill run scoreboard players set @s health.damage_skill 0
execute unless score @s health.damage_skill_cooldown = @s health.damage_skill_cooldown run scoreboard players set @s health.damage_skill_cooldown 0
execute unless score @s health.damage_resisted = @s health.damage_resisted run scoreboard players set @s health.damage_resisted 0
execute unless score @s stat.damageresisted_extra = @s stat.damageresisted_extra run scoreboard players set @s stat.damageresisted_extra 0
execute unless score @s weapon.gun_damage_extra = @s weapon.gun_damage_extra run scoreboard players set @s weapon.gun_damage_extra 0
execute unless score @s weapon.use = @s weapon.use run scoreboard players set @s weapon.use 0
execute unless score @s weapon.melee.block = @s weapon.melee.block run scoreboard players set @s weapon.melee.block 0
execute unless score @s interaction.left_click = @s interaction.left_click run scoreboard players set @s interaction.left_click 0
execute unless score @s interaction.right_click = @s interaction.right_click run scoreboard players set @s interaction.right_click 0
execute unless score @s stat.burn_timer = @s stat.burn_timer run scoreboard players set @s stat.burn_timer -1
execute unless score @s stat.burn_duration = @s stat.burn_duration run scoreboard players set @s stat.burn_duration -1
execute unless score @s weapon.range.skill.lightningrod_timer = @s weapon.range.skill.lightningrod_timer run scoreboard players set @s weapon.range.skill.lightningrod_timer -1
execute unless score @s weapon.range.skill.lightningrod_timer0 = @s weapon.range.skill.lightningrod_timer0 run scoreboard players set @s weapon.range.skill.lightningrod_timer0 1
execute unless score @s weapon.range.skill.heal_timer = @s weapon.range.skill.heal_timer run scoreboard players set @s weapon.range.skill.heal_timer -1
execute unless score @s weapon.range.skill.heal_timer0 = @s weapon.range.skill.heal_timer0 run scoreboard players set @s weapon.range.skill.heal_timer0 1
execute unless score @s weapon.range.skill.gyrokineticwand_timer = @s weapon.range.skill.gyrokineticwand_timer run scoreboard players set @s weapon.range.skill.gyrokineticwand_timer -1
execute unless score @s weapon.range.skill.gyrokineticwand_timer0 = @s weapon.range.skill.gyrokineticwand_timer0 run scoreboard players set @s weapon.range.skill.gyrokineticwand_timer0 1
execute unless score @s weapon.range.skill.echo_timer = @s weapon.range.skill.echo_timer run scoreboard players set @s weapon.range.skill.echo_timer -1
execute unless score @s perk.fast_revive = @s perk.fast_revive run scoreboard players set @s perk.fast_revive 0
execute unless score @s perk.quick_fire = @s perk.quick_fire run scoreboard players set @s perk.quick_fire 0
execute unless score @s perk.extra_health = @s perk.extra_health run scoreboard players set @s perk.extra_health 0
execute unless score @s perk.fast_regeneration = @s perk.fast_regeneration run scoreboard players set @s perk.fast_regeneration 0
execute unless score @s perk.no_knockback = @s perk.no_knockback run scoreboard players set @s perk.no_knockback 0
execute unless score @s perk.speed = @s perk.speed run scoreboard players set @s perk.speed 0
execute unless score @s perk.frozen_bullet = @s perk.frozen_bullet run scoreboard players set @s perk.frozen_bullet 0
execute unless score @s perk.gold_thrower = @s perk.gold_thrower run scoreboard players set @s perk.gold_thrower 0
execute unless score @s perk.double_bullet = @s perk.double_bullet run scoreboard players set @s perk.double_bullet 0
execute unless score @s perk.gravity_bullet = @s perk.gravity_bullet run scoreboard players set @s perk.gravity_bullet 0
execute unless score @s perk.flame_bullet = @s perk.flame_bullet run scoreboard players set @s perk.flame_bullet 0
execute unless score @s perk.ashes_bullet = @s perk.ashes_bullet run scoreboard players set @s perk.ashes_bullet 0
execute unless score @s perk.neutralization_bullet = @s perk.neutralization_bullet run scoreboard players set @s perk.neutralization_bullet 0
execute unless score @s perk.lightning_bullet = @s perk.lightning_bullet run scoreboard players set @s perk.lightning_bullet 0
execute unless score @s perk.selfexplosion = @s perk.selfexplosion run scoreboard players set @s perk.selfexplosion 0
execute unless score @s perk.absorptionconversion = @s perk.absorptionconversion run scoreboard players set @s perk.absorptionconversion 0
execute unless score @s perk.magnetic_bullet = @s perk.magnetic_bullet run scoreboard players set @s perk.magnetic_bullet 0
