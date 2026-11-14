# Explicitly close and restore the current-price door, e.g. after a boss event.
execute unless function map:door/portal_lab/core/restore_blocks run return fail
data modify storage map:r40 core_door_active set value 1b
function map:door/portal_lab/core/reactivate
