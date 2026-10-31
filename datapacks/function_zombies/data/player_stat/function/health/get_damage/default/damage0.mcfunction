
#$function bs.health:add/health {points:-$(damage)}
$damage @s $(damage0) generic_kill
scoreboard players set @s health.damage_resisted 0