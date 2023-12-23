scoreboard players operation #feature.swing.intersection.x ckenja.ghook -= #feature.swing.relative.x ckenja.ghook
scoreboard players operation #feature.swing.intersection.y ckenja.ghook -= #feature.swing.relative.y ckenja.ghook
scoreboard players operation #feature.swing.intersection.z ckenja.ghook -= #feature.swing.relative.z ckenja.ghook

#現在の座標との距離を求める
scoreboard players operation #feature.swing.temp.x ckenja.ghook = #feature.swing.intersection.x ckenja.ghook
scoreboard players operation #feature.swing.temp.x ckenja.ghook -= #player.pos.x ckenja.ghook
scoreboard players operation #feature.swing.temp.x ckenja.ghook *= #feature.swing.temp.x ckenja.ghook
scoreboard players operation #feature.swing.temp.x ckenja.ghook /= #10000 ckenja.ghook

scoreboard players operation #feature.swing.temp.y ckenja.ghook = #feature.swing.intersection.y ckenja.ghook
scoreboard players operation #feature.swing.temp.y ckenja.ghook -= #player.pos.y ckenja.ghook
scoreboard players operation #feature.swing.temp.y ckenja.ghook *= #feature.swing.temp.y ckenja.ghook
scoreboard players operation #feature.swing.temp.y ckenja.ghook /= #10000 ckenja.ghook

scoreboard players operation #feature.swing.temp.z ckenja.ghook = #feature.swing.intersection.z ckenja.ghook
scoreboard players operation #feature.swing.temp.z ckenja.ghook -= #player.pos.z ckenja.ghook
scoreboard players operation #feature.swing.temp.z ckenja.ghook *= #feature.swing.temp.z ckenja.ghook
scoreboard players operation #feature.swing.temp.z ckenja.ghook /= #10000 ckenja.ghook

scoreboard players operation #feature.swing.temp.range ckenja.ghook = #feature.swing.temp.x ckenja.ghook
scoreboard players operation #feature.swing.temp.range ckenja.ghook += #feature.swing.temp.y ckenja.ghook
scoreboard players operation #feature.swing.temp.range ckenja.ghook += #feature.swing.temp.z ckenja.ghook

#比較してより近かったら上書き
execute if score #feature.swing.temp.range ckenja.ghook < #feature.swing.nearest.range ckenja.ghook run function ckenja.ghook:feature/swing/collision_responce/update_nearest
