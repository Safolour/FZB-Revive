# This target has a 100 HP percentage baseline and a refillable damage buffer.
# Consume pending score damage before the normal mob death / max-health clamp.
execute unless score @s zombie.health = @s zombie.health0 run function zombie:take_damage0
function zombie:take_damage
# Vanilla direct melee / environmental damage is applied inside take_damage.
execute unless score @s zombie.health = @s zombie.health0 run function zombie:take_damage0
# Normal slow/debuff timers still expire while the target stays immobile.
function zombie:speed

