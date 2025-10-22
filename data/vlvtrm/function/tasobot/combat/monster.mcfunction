tag @s add tasobot.combat

#Target locking
puppet @s actions run minecraft:swap_slot 0
execute at @s anchored eyes run rotate @s facing entity @n[type=#hostile]

#Flying
#execute at @s unless entity @n[type=#flying,distance=..32] run player_ability @s[predicate=vlvtrm:flying] fly false
#execute at @s if entity @n[type=#flying,distance=..32] run player_ability @s[predicate=!vlvtrm:flying] fly true
#execute at @s if entity @n[type=#flying,distance=3..] run motion @s[predicate=vlvtrm:flying] forward 1