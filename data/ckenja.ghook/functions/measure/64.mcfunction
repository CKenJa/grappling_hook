execute store success score #tmp_32 ckenja.ghook run execute if entity @s[distance=..32]
execute if score #tmp_32 ckenja.ghook matches 1 run function ckenja.ghook:measure/32
execute if score #tmp_32 ckenja.ghook matches 0 run function ckenja.ghook:measure/sum/32