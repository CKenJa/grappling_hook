#ブロックに当たると消えるエンティティを召喚
summon armor_stand ~ ~ ~ {Tags:[ckenja.ghook.SmartMotion,Break],Small:1b}
scoreboard players set @e[tag=ckenja.ghook.SmartMotion,distance=0] ckj.gh.sm.Speed 30
execute as @e[tag=ckenja.ghook.SmartMotion,distance=0] run function ckenja.ghook.smart_motion:core/tp
