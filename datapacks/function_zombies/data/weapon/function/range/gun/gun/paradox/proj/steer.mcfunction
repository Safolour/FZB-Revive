function weapon:range/gun/gun/paradox/proj/unit_u
scoreboard players set #target_ok weapon.pd_hit 0
execute if data entity @s data.target run function weapon:range/gun/gun/paradox/proj/face_target with entity @s data
execute unless score #target_ok weapon.pd_hit matches 1 run function weapon:range/gun/gun/paradox/proj/aim_fallback
function weapon:range/gun/gun/paradox/proj/unit_v
# Great-circle steering: u*cos(3.333 degrees) + normalized(v-dot(u,v)u)*sin(3.333 degrees).
# This caps the actual 3D turn, including simultaneous yaw and pitch changes.
scoreboard players operation #dot weapon.pd_hit = #ux weapon.pd_hit
scoreboard players operation #dot weapon.pd_hit *= #vx weapon.pd_hit
scoreboard players operation #part weapon.pd_hit = #uy weapon.pd_hit
scoreboard players operation #part weapon.pd_hit *= #vy weapon.pd_hit
scoreboard players operation #dot weapon.pd_hit += #part weapon.pd_hit
scoreboard players operation #part weapon.pd_hit = #uz weapon.pd_hit
scoreboard players operation #part weapon.pd_hit *= #vz weapon.pd_hit
scoreboard players operation #dot weapon.pd_hit += #part weapon.pd_hit
scoreboard players operation #dot weapon.pd_hit /= #10000 weapon.pd_hit
execute if score #dot weapon.pd_hit matches 9983.. run return 0

scoreboard players operation #wx weapon.pd_hit = #ux weapon.pd_hit
scoreboard players operation #wx weapon.pd_hit *= #dot weapon.pd_hit
scoreboard players operation #wx weapon.pd_hit /= #10000 weapon.pd_hit
scoreboard players operation #part weapon.pd_hit = #vx weapon.pd_hit
scoreboard players operation #part weapon.pd_hit -= #wx weapon.pd_hit
scoreboard players operation #wx weapon.pd_hit = #part weapon.pd_hit

scoreboard players operation #wy weapon.pd_hit = #uy weapon.pd_hit
scoreboard players operation #wy weapon.pd_hit *= #dot weapon.pd_hit
scoreboard players operation #wy weapon.pd_hit /= #10000 weapon.pd_hit
scoreboard players operation #part weapon.pd_hit = #vy weapon.pd_hit
scoreboard players operation #part weapon.pd_hit -= #wy weapon.pd_hit
scoreboard players operation #wy weapon.pd_hit = #part weapon.pd_hit

scoreboard players operation #wz weapon.pd_hit = #uz weapon.pd_hit
scoreboard players operation #wz weapon.pd_hit *= #dot weapon.pd_hit
scoreboard players operation #wz weapon.pd_hit /= #10000 weapon.pd_hit
scoreboard players operation #part weapon.pd_hit = #vz weapon.pd_hit
scoreboard players operation #part weapon.pd_hit -= #wz weapon.pd_hit
scoreboard players operation #wz weapon.pd_hit = #part weapon.pd_hit

function weapon:range/gun/gun/paradox/proj/norm_w
execute if score output.sqrt int matches 0 run scoreboard players set #wx weapon.pd_hit 10000
execute if score output.sqrt int matches 0 run function weapon:range/gun/gun/paradox/proj/norm_w

scoreboard players operation #wx weapon.pd_hit *= #10000 weapon.pd_hit
scoreboard players operation #wx weapon.pd_hit /= output.sqrt int
scoreboard players operation #wx weapon.pd_hit *= #581 weapon.pd_hit
scoreboard players operation #outx weapon.pd_hit = #ux weapon.pd_hit
scoreboard players operation #outx weapon.pd_hit *= #9983 weapon.pd_hit
scoreboard players operation #outx weapon.pd_hit += #wx weapon.pd_hit
scoreboard players operation #outx weapon.pd_hit /= #10000 weapon.pd_hit
execute store result storage weapon paradox.vector.x double 0.0001 run scoreboard players get #outx weapon.pd_hit

scoreboard players operation #wy weapon.pd_hit *= #10000 weapon.pd_hit
scoreboard players operation #wy weapon.pd_hit /= output.sqrt int
scoreboard players operation #wy weapon.pd_hit *= #581 weapon.pd_hit
scoreboard players operation #outy weapon.pd_hit = #uy weapon.pd_hit
scoreboard players operation #outy weapon.pd_hit *= #9983 weapon.pd_hit
scoreboard players operation #outy weapon.pd_hit += #wy weapon.pd_hit
scoreboard players operation #outy weapon.pd_hit /= #10000 weapon.pd_hit
execute store result storage weapon paradox.vector.y double 0.0001 run scoreboard players get #outy weapon.pd_hit

scoreboard players operation #wz weapon.pd_hit *= #10000 weapon.pd_hit
scoreboard players operation #wz weapon.pd_hit /= output.sqrt int
scoreboard players operation #wz weapon.pd_hit *= #581 weapon.pd_hit
scoreboard players operation #outz weapon.pd_hit = #uz weapon.pd_hit
scoreboard players operation #outz weapon.pd_hit *= #9983 weapon.pd_hit
scoreboard players operation #outz weapon.pd_hit += #wz weapon.pd_hit
scoreboard players operation #outz weapon.pd_hit /= #10000 weapon.pd_hit
execute store result storage weapon paradox.vector.z double 0.0001 run scoreboard players get #outz weapon.pd_hit

function weapon:range/gun/gun/paradox/proj/rotate_vector with storage weapon paradox.vector
