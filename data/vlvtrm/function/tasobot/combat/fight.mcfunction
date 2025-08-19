schedule function vlvtrm:tasobot/combat/fight 0.5s

#Attack monsters
execute as @a[tag=tasobot.combat,tag=!tasobot.pvp,predicate=vlvtrm:rng/50p] at @s if entity @n[type=#monsters,distance=..4] run puppet @s actions run minecraft:attack once
execute as @a[tag=tasobot.combat,tag=!tasobot.pvp,predicate=vlvtrm:rng/25p] at @s if entity @n[type=#monsters,distance=..3] run motion @s forward -1

#Attack players
execute as @a[tag=tasobot.pvp,predicate=vlvtrm:rng/50p] at @s if entity @p[tag=!tasobot,tag=!tasobot.ignore,distance=..4] run puppet @s actions run minecraft:attack once
execute as @a[tag=tasobot.pvp,predicate=vlvtrm:rng/25p] at @s if entity @p[tag=!tasobot,tag=!tasobot.ignore,distance=..3] run motion @s forward -1