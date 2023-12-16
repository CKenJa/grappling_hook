#> ckenja.ghook:feature/swing/intertia.get
#
#
#
# @within function ckenja.ghook:feature/swing/_

scoreboard players operation #intertia.x ckenja.ghook = @s ckenja.ghook.x
scoreboard players operation #intertia.y ckenja.ghook = @s ckenja.ghook.y
scoreboard players operation #intertia.z ckenja.ghook = @s ckenja.ghook.z
#空気抵抗
scoreboard players operation #intertia.x ckenja.ghook *= #98 ckenja.ghook
scoreboard players operation #intertia.y ckenja.ghook *= #98 ckenja.ghook
scoreboard players operation #intertia.z ckenja.ghook *= #98 ckenja.ghook
scoreboard players operation #intertia.x ckenja.ghook /= #100 ckenja.ghook
scoreboard players operation #intertia.y ckenja.ghook /= #100 ckenja.ghook
scoreboard players operation #intertia.z ckenja.ghook /= #100 ckenja.ghook
