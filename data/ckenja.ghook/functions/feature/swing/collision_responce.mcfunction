#> ckenja.ghook:feature/swing/collision_responce
#
#
#
# @within function ckenja.ghook:feature/swing/collision_detection


#looking_at_functionで各点がどの面に衝突しうるか調べる

#その面と移動ベクトルの交点を求める

#もっとも近い交点に位置を変更する

#本来の移動距離と実際の移動距離の差から衝突時間を求める

#衝突向きのベクトルを消したうえで力を再計算する。
execute as @a[tag=ckenja.ghook.feature.swing.player,distance=..120] on vehicle run tp @s ~ ~0.6 ~
