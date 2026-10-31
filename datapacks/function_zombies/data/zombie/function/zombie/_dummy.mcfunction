
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion"],attributes:[{id:"attack_damage",base:1},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.dummy.zombie,color:white}]}}


##attributes
#attack_damage 攻击伤害
#burning_time 0-1024 着火时间
#fall_damage_multiplier 0-100 默认1 摔落伤害乘数
#safe_fall_distance -1024-1024 默认3 安全摔落高度
#gravity -1-1 默认0.08 重力
#jump_strength 0-32 默认0.42 跳跃力度
#step_height 0-10 默认0.6 最大行走高度
#scale 0.0625-16 默认1 尺寸

##equipment
#{head:{},chest:{},legs:{},feet:{},mainhand:{},offhand:{}}
#皮革盔甲颜色 id:leather_helmet,count:1,components:{dyed_color:0}
#取消默认伤害 id:diamond_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}
#自定义材质头 id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"1"}]}}
#附魔 =enchantments:{knockback:1}
#显示附魔光效 enchantment_glint_override:false
#盔甲纹饰 trim:{material:"diamond",pattern:"eye"}

##data
#data:{name:[{translate:zb.zombie.name.<名>,color:<颜色>}]} 击倒玩家时显示名称

##标签
#mob 执行tick
#hitable 可以被命中
#floating 浮空类型敌人（极光额外伤害；与是否暂时离地无关）
#window_break 可以破坏窗户
#zombieleft 计入僵尸计数器
#deathanimation 死亡时播放动画
#nogold 无法获得金钱
#skill.<怪名> 执行怪的技能tick
#bossbar 带血条 需要计分板分数(bossbar_number bossbar_speed_stay bossbar_speed_fade)
#portalmotion 在传送门中生成怪的motion 需要计分板分数(portalmotion_min portalmotion_max)
#deathmessage 死亡时发送击杀消息
#cannotinstakill 不能被瞬杀
#babyzombie 小僵尸
#cantslow 不能被减速
#giantzombie 巨人僵尸

#crimson 自带绯红属性的怪
#warped 自带迷离属性的怪
#ashes 自带灰烬属性的怪
#spirit 自带心灵属性的怪

#creeperdamage 会受到苦力怕的爆炸伤害
#creepermotion 会被苦力怕击退


##计分板
#health:血量*10 speed:移动速度*0.01 armor:抵挡(armor)%伤害[0-100]
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 25
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

#critical_extra:造成暴击时受到(critical_extra)伤害 zombie.knockresistance:免疫(knockresistance)%击退[0-100]
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

#bossbar_number:血条长度 bossbar_speed_stay:灰条(stay)t后开始减少 bossbar_speed_fade:每(fade)t减少1灰条
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 15
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_fade 5

#portalmotion_min portalmotion_max:在传送门中生成怪的motion 随机值min..max
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

#最大血量 需要计算百分比血量时写
#scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

tag @n[type=zombie,tag=chosen] remove chosen
