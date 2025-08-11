schedule function vlvtrm:slowtick/1s 1s

#Slow motion
execute if items entity @p[tag=vlvtrm.master] weapon.* minecraft:clock[minecraft:item_name="PK Timeslow"] run tick rate 2
execute unless items entity @p[tag=vlvtrm.master] weapon.* minecraft:clock[minecraft:item_name="PK Timeslow"] run tick rate 20