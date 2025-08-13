tag @s add tasobot.combat

#Target locking
puppet @s actions run minecraft:swap_slot 0
execute anchored eyes run rotate @s facing entity @n[type=#monsters]
execute if entity @n[type=#monsters,distance=..3] run puppet @s actions run minecraft:sprint false
execute if entity @n[type=#monsters,distance=4..] run puppet @s actions run minecraft:sprint true

#Flying
execute if entity @n[type=#flying] run player_ability @s fly true
execute unless entity @n[type=#flying] run player_ability @s fly false
execute at @s if entity @n[type=#flying,distance=3..] run motion @s[predicate=vlvtrm:flying] forward 1