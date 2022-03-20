#> ckenja.ghook:feature/shot/init
#
#
#
# @within function ckenja.ghook:feature/shot/_

data modify entity @s Leash.UUID set from storage ckenja.ghook.__temp__: player.data.RootVehicle.Attach
scoreboard players operation @s ckenja.ghook = #temp.id ckenja.ghook
tag @s remove ckenja.ghook.hook.init
#250単位で十分だろう
scoreboard players set #measure ckenja.ghook -250
function ckenja.ghook:feature/shot/loop
