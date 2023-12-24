#> ckenja.ghook:feature/reel/_
#
#
#
# @within function ckenja.ghook:player/tick

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/reel/void_kill

execute on vehicle run function ckenja.ghook:feature/reel/kill_display

#慣性をMotion代入
scoreboard players operation $x delta.api.launch = @s ckenja.ghook.x
scoreboard players operation $y delta.api.launch = @s ckenja.ghook.y
scoreboard players operation $z delta.api.launch = @s ckenja.ghook.z
function delta:api/launch_xyz

#アイテムの見た目変更
data modify storage player_item_tuner: condition.if set value {tag:{ctc:{id:"ghook",from:"ckenja.ghook:"}}}
data modify storage player_item_tuner: result.merge set value {tag:{CustomModelData:126000}}
function #player_item_tuner:merge/inventory

scoreboard players set #flag.have_hook ckenja.ghook 0

playsound minecraft:block.ender_chest.close master @s ~ ~ ~ 0.25 2
playsound minecraft:block.iron_trapdoor.open master @s ~ ~ ~ 1 1.33
playsound minecraft:entity.fishing_bobber.retrieve master @s ~ ~ ~ 1 0.67
