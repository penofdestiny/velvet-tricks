schedule function vlvtrm:slowtick/30s 30s

#Area limited wandering
execute as @n[type=item_display,tag=vlvtrm.spawn] at @s run tp @a[tag=tasobot.corr,distance=96..] @s

#Training Dummy
attribute ButterflyI minecraft:max_health base set 1024
effect give ButterflyI minecraft:saturation infinite 0 true
effect give ButterflyI minecraft:instant_health 1 9 true

#Attrib
attribute @p[tag=vlvtrm.master] movement_speed modifier add fast 0.25 add_multiplied_total
attribute @p[tag=vlvtrm.master] luck base set 2
attribute @p[tag=vlvtrm.master] scale base set 0.9

execute as @a[tag=tasobot] run attribute @s attack_damage modifier add gorilla 0.25 add_multiplied_total
execute as @a[tag=tasobot] run attribute @s scale base set 0.9
execute as @a[tag=tasobot] run attribute @s step_height base set 2.25