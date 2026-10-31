
title @a reset
title @a times 0 100 0
$title @a[tag=!chosen] title [{"selector":"@s"},{translate:"zb.door.open.area",with:[{translate:"zb.door.open.$(side)"}]}]
$title @a[tag=chosen] title [{"selector":"@s"},{translate:"zb.door.open.area",with:[{translate:"zb.door.open.$(side)"}]}]
$function map:door/elemental_effect/open/$(side)