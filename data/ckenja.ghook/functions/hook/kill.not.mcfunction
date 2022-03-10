#> ckenja.ghook:hook/kill.not
#
#
#
# @within function ckenja.ghook:hook/_

execute at @s run function ckenja.ghook.smart_motion:core/entity_tick
execute if score @s ckj.gh.sm.Speed matches 0 run function ckenja.ghook:hook/stop
execute if score @s ckj.gh.sm.Speed matches 1.. run particle cloud ~ ~ ~
execute at @s run particle witch ~ ~ ~