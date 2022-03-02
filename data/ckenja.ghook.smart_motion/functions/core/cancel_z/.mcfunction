#ブロック判定キャンセル Z
execute unless entity @s[y_rotation=90..270] run function ckenja.ghook.smart_motion:core/cancel_z/south/
execute if entity @s[y_rotation=90..270] run function ckenja.ghook.smart_motion:core/cancel_z/north/
