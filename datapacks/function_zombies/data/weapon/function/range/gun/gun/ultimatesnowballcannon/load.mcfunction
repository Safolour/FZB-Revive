
scoreboard objectives add weapon.gun_ultimatesnowballcannon dummy
scoreboard players set uuid weapon.gun_ultimatesnowballcannon 10019
scoreboard players set damage weapon.gun_ultimatesnowballcannon 120
scoreboard players set ammo weapon.gun_ultimatesnowballcannon 160
scoreboard players set clip_ammo weapon.gun_ultimatesnowballcannon 8
scoreboard players set rate weapon.gun_ultimatesnowballcannon 30
scoreboard players set reload weapon.gun_ultimatesnowballcannon 40
scoreboard players set range weapon.gun_ultimatesnowballcannon 512
scoreboard players set gold weapon.gun_ultimatesnowballcannon 8
scoreboard players set gold_crit weapon.gun_ultimatesnowballcannon 10
scoreboard players set punch weapon.gun_ultimatesnowballcannon 250
# 雪块弹 bounce_max 次自动爆炸，爆炸放出 split 个小雪球（伤害 damage_small，金钱为雪块一半，寿命 small_life 刻、最多弹 small_bounce_max 次）
scoreboard players set bounce_max weapon.gun_ultimatesnowballcannon 8
scoreboard players set split weapon.gun_ultimatesnowballcannon 4
scoreboard players set damage_small weapon.gun_ultimatesnowballcannon 30
scoreboard players set small_life weapon.gun_ultimatesnowballcannon 80
scoreboard players set small_bounce_max weapon.gun_ultimatesnowballcannon 5

scoreboard objectives add weapon.gun_ultimatesnowballcannon_ammo dummy
scoreboard objectives add weapon.gun_ultimatesnowballcannon_clip_ammo dummy
scoreboard objectives add weapon.gun_ultimatesnowballcannon_rate dummy
scoreboard objectives add weapon.gun_ultimatesnowballcannon_rate0 dummy
scoreboard objectives add weapon.gun_ultimatesnowballcannon_reload dummy
scoreboard objectives add weapon.gun_ultimatesnowballcannon_slot dummy

scoreboard players set @a weapon.gun_ultimatesnowballcannon_ammo 0

scoreboard objectives add weapon.gun_ultimatesnowballcannon_time dummy
 scoreboard players set time weapon.gun_ultimatesnowballcannon_time 120
 scoreboard players set slow weapon.gun_ultimatesnowballcannon_time 65