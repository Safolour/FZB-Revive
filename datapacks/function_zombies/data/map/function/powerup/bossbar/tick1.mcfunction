data modify storage powerup render.name set from storage powerup bossbar.name
data modify storage powerup render.bar set value "powerup"
function map:powerup/presentation/bar_name with storage powerup render
data remove storage powerup render
