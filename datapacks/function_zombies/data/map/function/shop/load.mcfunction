
scoreboard objectives add shop dummy
scoreboard objectives add shop.price dummy

 scoreboard players set pistol shop.price 500
 scoreboard players set rifle shop.price 500
 scoreboard players set shotgun shop.price 500
 # 马格南、冲锋枪 750：录像里墙上的价格
 scoreboard players set magnum shop.price 750
 scoreboard players set machinegun shop.price 750
 scoreboard players set refill shop.price 500

 scoreboard players set fast_revive shop.price 500
 scoreboard players set quick_fire shop.price 1000
 scoreboard players set speed shop.price 500
 scoreboard players set frozen_bullet shop.price 1000
 scoreboard players set extra_health shop.price 500
 scoreboard players set extra_health1 shop.price 1000
 scoreboard players set extra_health2 shop.price 2000
 scoreboard players set extra_health3 shop.price 5000
 scoreboard players set extra_health4 shop.price 10000
 scoreboard players set extra_health5 shop.price 20000
 scoreboard players set extra_health6 shop.price 50000
 scoreboard players set extra_health7 shop.price 100000
 scoreboard players set extra_health8 shop.price 100000
 scoreboard players set extra_health9 shop.price 100000
 # 售货机新增增益（价格照新版录像；灰烬子弹 7500 是 dixian13 给的价格，r41+ 要 10000 才能买的规则还没接）
 scoreboard players set gold_thrower shop.price 500
 scoreboard players set double_bullet shop.price 1500
 scoreboard players set fast_regeneration shop.price 1500
 scoreboard players set gravity_bullet shop.price 5000
 scoreboard players set flame_bullet shop.price 500
 scoreboard players set ashes_bullet shop.price 7500
 scoreboard players set neutralization_bullet shop.price 7500
 scoreboard players set lightning_bullet shop.price 7500
 scoreboard players set selfexplosion shop.price 1000
 scoreboard players set no_knockback shop.price 750
 scoreboard players set absorptionconversion shop.price 1500
 scoreboard players set magnetic_bullet shop.price 1500

 scoreboard players set ultimatemachine shop.price 1500
 
 scoreboard players set armor0 shop.price 0
 scoreboard players set armor1 shop.price 500
 scoreboard players set armor2 shop.price 1000
 scoreboard players set armor3 shop.price 2500
 scoreboard players set armor4 shop.price 5000
 scoreboard players set armor5 shop.price 10000
 scoreboard players set armor6 shop.price 25000
 scoreboard players set armor7 shop.price 50000
 # 合金套已删除：全套钻石（inventory.armor=7）就是满级，下一级价格 0 = 已拥有（9-11 也设 0，防止旧存档里的合金等级还能继续买）
 scoreboard players set armor8 shop.price 0
 scoreboard players set armor9 shop.price 0
 scoreboard players set armor10 shop.price 0
 scoreboard players set armor11 shop.price 0

scoreboard objectives add shop.uuid dummy
scoreboard objectives add shop.menu_uuid dummy
scoreboard objectives add shop.menu_page dummy
scoreboard objectives add shop.menu_item dummy
scoreboard objectives add shop.menu_tier dummy
scoreboard objectives add shop.actionbar dummy
scoreboard objectives add shop.ultimate dummy