# Convert old window planks at the six repair positions when a game starts.
$execute positioned ~ ~1 ~ if block ^-1 ^ ^ pale_oak_slab run setblock ^-1 ^ ^ $(1)
$execute positioned ~ ~1 ~ if block ^ ^ ^ pale_oak_slab run setblock ^ ^ ^ $(2)
$execute positioned ~ ~1 ~ if block ^1 ^ ^ pale_oak_slab run setblock ^1 ^ ^ $(3)
$execute positioned ~ ~1 ~ if block ^-1 ^1 ^ pale_oak_slab run setblock ^-1 ^1 ^ $(4)
$execute positioned ~ ~1 ~ if block ^ ^1 ^ pale_oak_slab run setblock ^ ^1 ^ $(5)
$execute positioned ~ ~1 ~ if block ^1 ^1 ^ pale_oak_slab run setblock ^1 ^1 ^ $(6)
