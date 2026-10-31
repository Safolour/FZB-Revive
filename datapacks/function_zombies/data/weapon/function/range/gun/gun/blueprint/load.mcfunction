
scoreboard objectives add weapon.gun_blueprint dummy
scoreboard players set uuid weapon.gun_blueprint 10048
scoreboard players set damage weapon.gun_blueprint 30
scoreboard players set ammo weapon.gun_blueprint 450
scoreboard players set clip_ammo weapon.gun_blueprint 50
scoreboard players set rate weapon.gun_blueprint 11
scoreboard players set reload weapon.gun_blueprint 20
scoreboard players set range weapon.gun_blueprint 24
scoreboard players set gold weapon.gun_blueprint 9
scoreboard players set gold_crit weapon.gun_blueprint 11
scoreboard players set punch weapon.gun_blueprint 100
scoreboard players set extrashot weapon.gun_blueprint 2
scoreboard players set extrashot_time weapon.gun_blueprint 2

# 上面这些全局数值每 tick 由 stat/apply 从玩家手上那把蓝图（weapon.bp_*）抄过来，这里只是默认值
scoreboard players set bullet weapon.gun_blueprint 1
scoreboard players set spread_x weapon.gun_blueprint 0
scoreboard players set spread_y weapon.gun_blueprint 0
scoreboard players set offset_x weapon.gun_blueprint 0
scoreboard players set offset_y weapon.gun_blueprint 0

scoreboard objectives add weapon.gun_blueprint_ammo dummy
scoreboard objectives add weapon.gun_blueprint_clip_ammo dummy
scoreboard objectives add weapon.gun_blueprint_rate dummy
scoreboard objectives add weapon.gun_blueprint_rate0 dummy
scoreboard objectives add weapon.gun_blueprint_reload dummy
scoreboard objectives add weapon.gun_blueprint_slot dummy

scoreboard players set @a weapon.gun_blueprint_ammo 0
scoreboard players set #bp_1000 weapon.state 1000

# 玩家身上：当前那把蓝图的属性（物品 custom_data.stat 读进来的）
scoreboard objectives add weapon.bp_damage dummy
scoreboard objectives add weapon.bp_ammo dummy
scoreboard objectives add weapon.bp_clip_ammo dummy
scoreboard objectives add weapon.bp_rate dummy
scoreboard objectives add weapon.bp_reload dummy
scoreboard objectives add weapon.bp_range dummy
scoreboard objectives add weapon.bp_punch dummy
scoreboard objectives add weapon.bp_gold dummy
scoreboard objectives add weapon.bp_gold_crit dummy
scoreboard objectives add weapon.bp_spread_x dummy
scoreboard objectives add weapon.bp_spread_y dummy
scoreboard objectives add weapon.bp_offset_x dummy
scoreboard objectives add weapon.bp_offset_y dummy
scoreboard objectives add weapon.bp_bullet dummy
scoreboard objectives add weapon.bp_extrashot dummy
scoreboard objectives add weapon.bp_extrashot_time dummy
scoreboard objectives add weapon.bp_id dummy
# 百分比 → 颜色（lore 里 [x%] 的颜色），音效池
data modify storage weapon bp_colors set value ["#FF0000","#FF0500","#FF0A00","#FF0F00","#FF1400","#FF1900","#FF1E00","#FF2300","#FF2800","#FF2D00","#FF3300","#FF3800","#FF3D00","#FF4200","#FF4700","#FF4C00","#FF5100","#FF5600","#FF5B00","#FF6000","#FF6600","#FF6B00","#FF7000","#FF7500","#FF7A00","#FF7F00","#FF8400","#FF8900","#FF8E00","#FF9300","#FF9900","#FF9E00","#FFA300","#FFA800","#FFAD00","#FFB200","#FFB700","#FFBC00","#FFC100","#FFC600","#FFCC00","#FFD100","#FFD600","#FFDB00","#FFE000","#FFE500","#FFEA00","#FFEF00","#FFF400","#FFF900","#FFFF00","#F4FF00","#EAFF00","#E0FF00","#D6FF00","#CCFF00","#C1FF00","#B7FF00","#ADFF00","#A3FF00","#99FF00","#8EFF00","#84FF00","#7AFF00","#70FF00","#66FF00","#5BFF00","#51FF00","#47FF00","#3DFF00","#33FF00","#28FF00","#1EFF00","#14FF00","#0AFF00","#00FF00","#00FF0A","#00FF14","#00FF1E","#00FF28","#00FF33","#00FF3D","#00FF47","#00FF51","#00FF5B","#00FF66","#00FF70","#00FF7A","#00FF84","#00FF8E","#00FF99","#00FFA3","#00FFAD","#00FFB7","#00FFC1","#00FFCC","#00FFD6","#00FFE0","#00FFEA","#00FFF4","#00FFFF"]
data modify storage weapon bp_sounds set value ["block.note_block.xylophone","block.iron.break","block.bone_block.break","block.cherry_leaves.break","block.chain.break","block.trial_spawner.close_shutter","block.trial_spawner.eject_item"]
