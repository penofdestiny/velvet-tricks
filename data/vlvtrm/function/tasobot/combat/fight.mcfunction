schedule function vlvtrm:tasobot/combat/fight 0.5s

#Attack monsters
execute as @a[tag=tasobot.combat,tag=!tasobot.pvp,predicate=vlvtrm:rng/50p] at @s if entity @n[type=#hostile,distance=..4] run puppet @s actions run minecraft:attack once
#execute as @a[tag=tasobot.combat,tag=!tasobot.pvp] at @s if entity @n[type=#hostile,distance=..2] run function vlvtrm:tasobot/combat/dodge

#Attack players
execute as @a[tag=tasobot.pvp,predicate=vlvtrm:rng/50p] at @s if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=..4] run puppet @s actions run minecraft:attack once
#execute as @a[tag=tasobot.pvp] at @s if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=..2] run function vlvtrm:tasobot/combat/dodge