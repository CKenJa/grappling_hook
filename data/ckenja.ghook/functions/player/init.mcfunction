#> ckenja.ghook:player/id
#
#
#
# @within advancement ckenja.ghook:player.init

#> player-id
#@private
#declare score_holder #id

scoreboard players operation @s ckenja.ghook = #id ckenja.ghook
scoreboard players add #id ckenja.ghook 1
scoreboard players set @s ckenja.ghook.c 0
