schedule function vlvtrm:slowtick/10s 10s

#Taso respawn in case of dying
player tasobot spawn
gamemode adventure tasobot

#Attrib
attribute WorldArcana movement_speed modifier add fast 0.25 add_multiplied_total
attribute WorldArcana luck modifier add lucky 2 add_value
attribute WorldArcana scale modifier add petite -0.1 add_value

execute as @a[tag=tasobot] run attribute @s attack_damage modifier add gorilla 0.25 add_multiplied_total
execute as @a[tag=tasobot] run attribute @s scale modifier add petite -0.1 add_value