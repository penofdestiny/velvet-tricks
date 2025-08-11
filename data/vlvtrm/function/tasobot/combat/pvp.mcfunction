tag @s add tasobot.combat

#Target locking
puppet @s actions run minecraft:swap_slot 0
rotate @s facing entity @p[tag=!tasobot,tag=!tasobot.ignore]
execute if entity @p[tag=!tasobot,tag=!tasobot.ignore,distance=..3] run puppet @s actions run minecraft:sprint false
execute if entity @p[tag=!tasobot,tag=!tasobot.ignore,distance=4..] run puppet @s actions run minecraft:sprint true