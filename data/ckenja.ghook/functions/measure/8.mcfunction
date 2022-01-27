execute store success score #tmp_4 ckenja.ghook run execute if entity @s[distance=..4]
execute if score #tmp_4 ckenja.ghook matches 1 run function ckenja.ghook:measure/4
execute if score #tmp_4 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/4