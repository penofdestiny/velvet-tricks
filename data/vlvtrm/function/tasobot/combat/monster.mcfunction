tag @s add tasobot.combat
player_ability @s fly false

#Target locking
puppet @s actions run minecraft:swap_slot 0
execute at @s anchored eyes run rotate @s facing entity @n[type=#monsters]