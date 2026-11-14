tag @s remove firelord.p4.pending
tag @s add firelord.p4
tag @s remove firelord.p3
tag @s remove firelord.p3.eclipse.next
tag @s remove firelord.eclipse.repeat
execute if entity @s[tag=firelord.eclipse.charge] run team join mob @s
execute if entity @s[tag=firelord.eclipse.charge] run data merge entity @s {Glowing:0b}
tag @s remove firelord.eclipse.charge
function zombie:skill/nether/firelord/shield/begin
