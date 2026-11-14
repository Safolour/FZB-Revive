# A new blueprint is always unupgraded, independent of any shop's scratch state.
$data modify storage weapon bp.request set value {slot:$(slot),ultimate:0}
function weapon:range/gun/gun/blueprint/get_item with storage weapon bp.request
data remove storage weapon bp.request
