#> ckenja.ghook:player/main
#
#
#@within function ckenja.ghook:player/ride

#クリック検知
execute if entity @s[tag=ckenja.ghook.player.using_item] run function ckenja.ghook:player/using/now

#二回クリックし終わったら、フック収納して慣性をMotion代入(./player.using.exit.second
execute if entity @s[tag=ckenja.ghook.player.using_item.before] run function ckenja.ghook:player/using/before

data modify storage ckenja.ghook.__temp__: player.data.Motion set from entity @s Motion
data modify storage ckenja.ghook.__temp__: player.data.Rotation set from entity @s Rotation
execute if score #flag.hooked ckenja.ghook matches 1 run function ckenja.ghook:feature/move/_
execute unless score #flag.hooked ckenja.ghook matches 1 as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score @s ckenja.ghook = #temp.id ckenja.ghook positioned as @s run function ckenja.ghook:feature/walk
