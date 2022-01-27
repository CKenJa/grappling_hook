execute store success score #tmp_0.5 ckenja.ghook run execute if entity @s[distance=..0.5]
execute if score #tmp_0.5 ckenja.ghook matches 1 run function ckenja.ghook:measure/0.5
execute if score #tmp_0.5 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/0.5