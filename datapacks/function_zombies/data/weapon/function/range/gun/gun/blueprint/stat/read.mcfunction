# 玩家执行：storage weapon bp.sync（一把蓝图的 stat）→ 玩家 weapon.bp_*；没解锁的属性存的是 -2147483648
execute store result score @s weapon.bp_damage run data get storage weapon bp.sync.damage
execute store result score @s weapon.bp_ammo run data get storage weapon bp.sync.ammo
execute store result score @s weapon.bp_clip_ammo run data get storage weapon bp.sync.clip_ammo
execute store result score @s weapon.bp_rate run data get storage weapon bp.sync.rate
execute store result score @s weapon.bp_reload run data get storage weapon bp.sync.reload
execute store result score @s weapon.bp_range run data get storage weapon bp.sync.range
execute store result score @s weapon.bp_punch run data get storage weapon bp.sync.punch
execute store result score @s weapon.bp_gold run data get storage weapon bp.sync.gold
execute store result score @s weapon.bp_gold_crit run data get storage weapon bp.sync.gold_crit
execute store result score @s weapon.bp_spread_x run data get storage weapon bp.sync.spread_x
execute store result score @s weapon.bp_spread_y run data get storage weapon bp.sync.spread_y
execute store result score @s weapon.bp_offset_x run data get storage weapon bp.sync.offset_x
execute store result score @s weapon.bp_offset_y run data get storage weapon bp.sync.offset_y
execute store result score @s weapon.bp_bullet run data get storage weapon bp.sync.bullet
execute store result score @s weapon.bp_extrashot run data get storage weapon bp.sync.extrashot
execute store result score @s weapon.bp_extrashot_time run data get storage weapon bp.sync.extrashot_time
execute store result score @s weapon.bp_id run data get storage weapon bp.sync.id
execute if score @s weapon.bp_bullet matches ..0 run scoreboard players set @s weapon.bp_bullet 1
execute if score @s weapon.bp_extrashot matches ..-1 run scoreboard players set @s weapon.bp_extrashot 0
execute if score @s weapon.bp_extrashot_time matches ..0 run scoreboard players set @s weapon.bp_extrashot_time 1
execute if score @s weapon.bp_spread_x matches ..-1 run scoreboard players set @s weapon.bp_spread_x 0
execute if score @s weapon.bp_spread_y matches ..-1 run scoreboard players set @s weapon.bp_spread_y 0
execute if score @s weapon.bp_offset_x matches ..-1 run scoreboard players set @s weapon.bp_offset_x 0
execute if score @s weapon.bp_offset_y matches ..-1 run scoreboard players set @s weapon.bp_offset_y 0
data remove storage weapon bp.sync
function weapon:range/gun/gun/blueprint/stat/apply
# 射速变了：按快速射击增益重算 rate0（同 map:perk/quick_fire）
function map:perk/quick_fire0 {gun:blueprint}
