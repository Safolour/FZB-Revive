$execute if score #price monhan matches ..999 run data modify storage monhan say.a set value "$(s)"
$execute if score #price monhan matches 1000..999999 run data modify storage monhan say.a set value "$(p1),$(p0)"
$execute if score #price monhan matches 1000000.. run data modify storage monhan say.a set value "$(p2),$(p1),$(p0)"
