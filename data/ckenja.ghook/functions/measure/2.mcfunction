execute store success score #tmp_1 ckenja.ghook run execute if entity @s[distance=..1]
execute if score #tmp_1 ckenja.ghook matches 1 run function ckenja.ghook:measure/1
execute if score #tmp_1 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/1