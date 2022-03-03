#> ckenja.ghook:feature/reel
#
#
#
# @within function ckenja.ghook:player/**

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook,distance=..120] if score #temp.id ckenja.ghook = @s ckenja.ghook run kill @s
#アイテムをニンジン棒に戻す
item replace entity @s weapon.mainhand with carrot_on_a_stick{Unbreakable:true,ctc:{id:"ghook",from:"ckenja.ghook:"},CustomModelData:1260000} 1
#慣性をMotion代入
execute if score #flag.hooked ckenja.ghook matches 1 as @e[type=pig,tag=ckenja.ghook.pig,distance=..6] if score #temp.id ckenja.ghook = @s ckenja.ghook run function ckenja.ghook:feature/reel.pig
