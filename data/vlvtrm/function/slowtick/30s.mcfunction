schedule function vlvtrm:slowtick/30s 30s

#Area limited wandering
execute as @n[type=item_display,tag=vlvtrm.spawn] at @s run tp @a[tag=tasobot.corr,distance=192..] @s

#Training Dummy
execute as @a[tag=vlvtrm.dummy] run attribute @s minecraft:max_health base set 1024
effect give @a[tag=vlvtrm.dummy] minecraft:saturation 10 10 true
effect give @a[tag=vlvtrm.dummy] minecraft:instant_health 1 9 true
execute as @a[tag=!vlvtrm.dummy,tag=vlvtrm.alter] run attribute @s minecraft:max_health base reset

#Attrib
attribute @p[tag=vlvtrm.master] movement_speed modifier add fast 0.25 add_multiplied_total
attribute @p[tag=vlvtrm.master] luck base set 2
attribute @p[tag=vlvtrm.master] scale base set 0.8

execute as @a[team=angels] run attribute @s attack_damage modifier add gorilla 0.25 add_multiplied_total
execute as @a[team=angels] run attribute @s scale base set 0.9
execute as @a[team=angels] run attribute @s step_height base set 2.25