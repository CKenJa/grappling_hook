execute store success score #tmp_2 ckenja.ghook run execute if entity @s[distance=..2]
execute if score #tmp_2 ckenja.ghook matches 1 run function ckenja.ghook:measure/2
execute if score #tmp_2 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/2