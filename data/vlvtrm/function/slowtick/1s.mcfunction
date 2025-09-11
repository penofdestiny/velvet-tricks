schedule function vlvtrm:slowtick/1s 1s

#Slow motion
execute if items entity @p[tag=vlvtrm.master] weapon.* minecraft:clock[minecraft:item_name="PK Timeslow"] run tick rate 2
execute unless items entity @p[tag=vlvtrm.master] weapon.* minecraft:clock[minecraft:item_name="PK Timeslow"] run tick rate 20

#Talaria
execute as @p[tag=vlvtrm.master] at @s if items entity @s armor.feet minecraft:leather_boots[minecraft:item_name="Talaria"] run execute as @a[distance=..32,tag=!tasobot.pvp] run attribute @s movement_speed modifier add hermes 0.33 add_multiplied_total
execute as @p[tag=vlvtrm.master] at @s if items entity @s armor.feet minecraft:leather_boots[minecraft:item_name="Talaria"] run execute as @a[distance=32..,tag=!tasobot.pvp] run attribute @s movement_speed modifier remove hermes
execute as @p[tag=vlvtrm.master] at @s unless items entity @s armor.feet minecraft:leather_boots[minecraft:item_name="Talaria"] run execute as @a run attribute @s movement_speed modifier remove hermes