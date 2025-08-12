tag @s add tasobot.combat
player_ability @s fly false

#Target locking
puppet @s actions run minecraft:swap_slot 0
execute anchored eyes run rotate @s facing entity @n[type=#monsters]
execute if entity @n[type=#monsters,distance=..3] run puppet @s actions run minecraft:sprint false
execute if entity @n[type=#monsters,distance=4..] run puppet @s actions run minecraft:sprint true