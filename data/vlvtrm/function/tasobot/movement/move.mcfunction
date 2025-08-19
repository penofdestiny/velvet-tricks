schedule function vlvtrm:tasobot/movement/move 1s

#To the enemy
execute as @a[tag=tasobot.combat,tag=!tasobot.pvp] at @s if entity @n[type=#monsters,distance=..24] run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @n[type=#monsters] true
execute as @a[tag=tasobot.pvp] at @s if entity @p[tag=!tasobot,tag=!tasobot.ignore] run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @p[tag=!tasobot,tag=!tasobot.ignore] true

#To party member
execute as @a[tag=!tasobot.combat,tag=tasobot.party] at @s if entity @p[tag=tasobot.following,distance=3..] run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @p[tag=tasobot.following]
execute as @a[tag=!tasobot.combat,tag=tasobot.party1] at @s if entity @p[tag=tasobot.party,distance=3..] run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @p[tag=tasobot.party]
execute as @a[tag=!tasobot.combat,tag=tasobot.party2] at @s if entity @p[tag=tasobot.party1,distance=3..] run puppet @s[predicate=!vlvtrm:flying] actions run minecraft:move_to entity @p[tag=tasobot.party1]