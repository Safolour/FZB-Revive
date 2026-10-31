
$execute positioned ~ ~1 ~ if block ^ ^ ^ air run setblock ^ ^ ^ $(2)
$execute positioned ~ ~1 ~ if block ^1 ^ ^ air run setblock ^1 ^ ^ $(3)
$execute positioned ~ ~1 ~ if block ^-1 ^ ^ air run setblock ^-1 ^ ^ $(1)
$execute positioned ~ ~1 ~ if block ^ ^1 ^ air run setblock ^ ^1 ^ $(5)
$execute positioned ~ ~1 ~ if block ^1 ^1 ^ air run setblock ^1 ^1 ^ $(6)
$execute positioned ~ ~1 ~ if block ^-1 ^1 ^ air run setblock ^-1 ^1 ^ $(4)

scoreboard players set @s window.piece0 6