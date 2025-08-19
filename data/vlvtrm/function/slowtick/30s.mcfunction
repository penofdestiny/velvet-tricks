schedule function vlvtrm:slowtick/30s 30s

#Area limited wandering or my server's gonna die...
execute as @n[type=item_display,tag=vlvtrm.spawn] at @s run tp @a[tag=tasobot.corr,distance=96..] @s

#Training Dummy
attribute ButterflyI minecraft:max_health base set 1024
effect give ButterflyI minecraft:saturation infinite 0 true
effect give ButterflyI minecraft:instant_health 1 9 true