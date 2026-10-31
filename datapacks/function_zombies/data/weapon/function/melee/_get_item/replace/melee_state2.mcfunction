
$execute unless score affect_enemy_last weapon.state = affect_enemy weapon.state run data modify storage weapon root.affect_enemy set value "§8$(affect_enemy_last) ➜ §a$(affect_enemy)§r"
$execute unless score cooldown0_last weapon.state = cooldown0 weapon.state run data modify storage weapon root.cooldown set value "§8$(cooldown0_last).$(cooldown1_last) ➜ §a$(cooldown0).$(cooldown1)s§r"
$execute unless score cooldown1_last weapon.state = cooldown1 weapon.state run data modify storage weapon root.cooldown set value "§8$(cooldown0_last).$(cooldown1_last) ➜ §a$(cooldown0).$(cooldown1)s§r"