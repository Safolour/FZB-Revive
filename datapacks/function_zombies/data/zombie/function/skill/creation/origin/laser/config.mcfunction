# 基础35是19.2实损的条件匹配，仍为可核验配置。
scoreboard players set #origin.laser zombie.skill.damage 350
# 临时判伤长48格、步进.5格、半径1.2；不同于模型scale.x=100。
scoreboard players set #laser.steps origin.tool_cfg 96
# 用户描述缓慢/失明未确认时长：暂缓慢II3秒、失明I2秒。
scoreboard players set #laser.slow_seconds origin.tool_cfg 3
scoreboard players set #laser.blind_seconds origin.tool_cfg 2
scoreboard players add #next origin.fx_id 0
team add origin.laser.dark_red
team modify origin.laser.dark_red color dark_red
