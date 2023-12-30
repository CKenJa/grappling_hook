#> ckenja.ghook:feature/swing/collision_responce/get_intersection
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/_

scoreboard players operation #start_ray.x ckenja.ghook = #marker.pos.x ckenja.ghook
scoreboard players operation #start_ray.y ckenja.ghook = #marker.pos.y ckenja.ghook
scoreboard players operation #start_ray.z ckenja.ghook = #marker.pos.z ckenja.ghook
scoreboard players operation #start_ray.x ckenja.ghook += #feature.swing.relative.x ckenja.ghook
scoreboard players operation #start_ray.y ckenja.ghook += #feature.swing.relative.y ckenja.ghook
scoreboard players operation #start_ray.z ckenja.ghook += #feature.swing.relative.z ckenja.ghook
scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 0
data modify storage ckenja.looking_at_function: in.function set value "ckenja.ghook:feature/swing/collision_responce/looking_at_function"
data modify storage ckenja.looking_at_function:_ steps set value 3
function ckenja.looking_at_function:run
execute if score #feature.swing.success_get_intersection ckenja.ghook matches 1 run function ckenja.ghook:feature/swing/collision_responce/calc_range
