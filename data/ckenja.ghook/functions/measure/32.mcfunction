execute store success score #tmp_16 ckenja.ghook run execute if entity @s[distance=..16]
execute if score #tmp_16 ckenja.ghook matches 1 run function ckenja.ghook:measure/16
execute if score #tmp_16 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/16