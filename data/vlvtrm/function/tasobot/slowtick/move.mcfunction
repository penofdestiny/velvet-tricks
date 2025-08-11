schedule function vlvtrm:tasobot/slowtick/move 1s

#To the enemy
execute as @a[tag=tasobot.combat,tag=!tasobot.pvp] at @s if entity @n[type=#monsters,distance=..24] run puppet @s actions run minecraft:move_to entity @n[type=#monsters]
execute as @a[tag=tasobot.pvp] at @s run puppet @s actions run minecraft:move_to entity @p[tag=!tasobot,tag=!tasobot.ignore]

#To party member
execute as @a[tag=!tasobot.combat,tag=tasobot.party] at @s run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @n[tag=tasobot.following]
execute as @a[tag=!tasobot.combat,tag=tasobot.party1] at @s run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @n[tag=tasobot.party]
execute as @a[tag=!tasobot.combat,tag=tasobot.party2] at @s run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @n[tag=tasobot.party1]