# 击退转换（no_knockback）：拿到/失去时由 inventory_check 调用
# 自身免疫击退（knockback_resistance +1）；武器击退 ×1.5 在 weapon:range/gun/damage/punch、player_stat:attack/punch
attribute @s knockback_resistance modifier remove map:no_knockback
execute if items entity @s container.* *[custom_data~{tag:["no_knockback"]}] run attribute @s knockback_resistance modifier add map:no_knockback 1 add_value
