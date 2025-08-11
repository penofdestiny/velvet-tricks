schedule function vlvtrm:slowtick/30s 30s

#Stop pathfinding to prevent CPU leak
execute as @a[tag=tasobot] run puppet @s actions run minecraft:interrupt_move_to

#Area limited wandering or my server's gonna die...
execute as @n[type=item_display,tag=vlvtrm.spawn] at @s run tp @a[tag=tasobot.corr,distance=96..] @s

#Training Dummy
attribute Alex minecraft:max_health base set 1024
effect give Alex minecraft:saturation infinite 0 true
effect give Alex minecraft:instant_health 1 9 true