#> ckenja.ghook:feature/swing/collision_responce/looking_at_function2
#
#
#
# @within function ckenja.ghook:feature/swing/collision_responce/looking_at_function

data modify storage ckenja.ghook.__temp__: swing.collision_responce.direction set from storage ckenja.looking_at_function:_ directionList[-1].value
scoreboard players set #feature.swing.success_get_intersection ckenja.ghook 1

execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"-X"} align x positioned ~1.001 ~ ~ if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_x
execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"+X"} align x positioned ~-0.001 ~ ~ if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_x
execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"-Z"} align z positioned ~ ~ ~1.001 if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_z
execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"+Z"} align z positioned ~ ~ ~-0.001 if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_z
execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"-Y"} align y positioned ~ ~1.001 ~ if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_y
execute if data storage ckenja.ghook.__temp__: swing.collision_responce{direction:"+Y"} align y positioned ~ ~-0.001 ~ if block ~ ~ ~ #ckenja.ghook:no_collision run function ckenja.ghook:feature/swing/collision_responce/intersection_with_y

#say k-t-d
#tellraw @a {"score": {"name": "#feature.swing.k", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#feature.swing.t", "objective": "ckenja.ghook"}}
#tellraw @a {"nbt": "swing.collision_responce.direction", "storage": "ckenja.ghook.__temp__:"}
#say pos
#tellraw @a {"score": {"name": "#start_ray.x", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#start_ray.y", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#start_ray.z", "objective": "ckenja.ghook"}}
#say vec
#tellraw @a {"score": {"name": "#moving_vector.x", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#moving_vector.y", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#moving_vector.z", "objective": "ckenja.ghook"}}
#say intersection
#tellraw @a {"score": {"name": "#feature.swing.intersection.x", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#feature.swing.intersection.y", "objective": "ckenja.ghook"}}
#tellraw @a {"score": {"name": "#feature.swing.intersection.z", "objective": "ckenja.ghook"}}
