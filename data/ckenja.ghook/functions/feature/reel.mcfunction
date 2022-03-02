#> ckenja.ghook:feature/reel
#
#
#
# @within function ckenja.ghook:player/**

#フック収納
execute as @e[type=bat,tag=ckenja.ghook.hook] if score #temp.id ckenja.ghook = @s ckenja.ghook run kill @s
#アイテムをニンジン棒に戻す
item replace entity @s weapon.mainhand with carrot_on_a_stick{Unbreakable:true,ctc:{id:"ghook",from:"ckenja.ghook:"},CustomModelData:1260000} 1