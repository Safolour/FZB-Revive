# 玩家 weapon.bp_* → 全局 X weapon.gun_blueprint（枪械模板和 slot/* 都读全局的）
scoreboard players operation damage weapon.gun_blueprint = @s weapon.bp_damage
scoreboard players operation ammo weapon.gun_blueprint = @s weapon.bp_ammo
scoreboard players operation clip_ammo weapon.gun_blueprint = @s weapon.bp_clip_ammo
scoreboard players operation rate weapon.gun_blueprint = @s weapon.bp_rate
scoreboard players operation reload weapon.gun_blueprint = @s weapon.bp_reload
scoreboard players operation range weapon.gun_blueprint = @s weapon.bp_range
scoreboard players operation punch weapon.gun_blueprint = @s weapon.bp_punch
scoreboard players operation gold weapon.gun_blueprint = @s weapon.bp_gold
scoreboard players operation gold_crit weapon.gun_blueprint = @s weapon.bp_gold_crit
scoreboard players operation spread_x weapon.gun_blueprint = @s weapon.bp_spread_x
scoreboard players operation spread_y weapon.gun_blueprint = @s weapon.bp_spread_y
scoreboard players operation offset_x weapon.gun_blueprint = @s weapon.bp_offset_x
scoreboard players operation offset_y weapon.gun_blueprint = @s weapon.bp_offset_y
scoreboard players operation bullet weapon.gun_blueprint = @s weapon.bp_bullet
scoreboard players operation extrashot weapon.gun_blueprint = @s weapon.bp_extrashot
scoreboard players operation extrashot_time weapon.gun_blueprint = @s weapon.bp_extrashot_time
