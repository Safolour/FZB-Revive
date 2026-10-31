
scoreboard objectives add weapon.gun_snowballcannon dummy
scoreboard players set uuid weapon.gun_snowballcannon 10009
scoreboard players set damage weapon.gun_snowballcannon 90
scoreboard players set ammo weapon.gun_snowballcannon 128
scoreboard players set clip_ammo weapon.gun_snowballcannon 6
scoreboard players set rate weapon.gun_snowballcannon 40
scoreboard players set reload weapon.gun_snowballcannon 50
scoreboard players set range weapon.gun_snowballcannon 512
scoreboard players set gold weapon.gun_snowballcannon 8
scoreboard players set gold_crit weapon.gun_snowballcannon 10
scoreboard players set punch weapon.gun_snowballcannon 250
# 雪块弹 bounce_max 次自动爆炸，爆炸放出 split 个小雪球（伤害 damage_small，金钱为雪块一半，寿命 small_life 刻、最多弹 small_bounce_max 次）
scoreboard players set bounce_max weapon.gun_snowballcannon 8
scoreboard players set split weapon.gun_snowballcannon 3
scoreboard players set damage_small weapon.gun_snowballcannon 25
scoreboard players set small_life weapon.gun_snowballcannon 80
scoreboard players set small_bounce_max weapon.gun_snowballcannon 5

scoreboard objectives add weapon.gun_snowballcannon_ammo dummy
scoreboard objectives add weapon.gun_snowballcannon_clip_ammo dummy
scoreboard objectives add weapon.gun_snowballcannon_rate dummy
scoreboard objectives add weapon.gun_snowballcannon_rate0 dummy
scoreboard objectives add weapon.gun_snowballcannon_reload dummy
scoreboard objectives add weapon.gun_snowballcannon_slot dummy

scoreboard players set @a weapon.gun_snowballcannon_ammo 0

scoreboard objectives add weapon.gun_snowballcannon_time dummy
 scoreboard players set time weapon.gun_snowballcannon_time 100
 scoreboard players set slow weapon.gun_snowballcannon_time 75