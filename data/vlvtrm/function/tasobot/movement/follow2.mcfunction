#Flying
#execute if entity @p[tag=tasobot.party1,predicate=vlvtrm:flying] run player_ability @s fly true
#execute if entity @p[tag=tasobot.party1,predicate=!vlvtrm:flying] run player_ability @s fly false

#Movement
rotate @s[predicate=!vlvtrm:moving] facing entity @p[tag=tasobot.party1]
#execute if entity @p[tag=tasobot.party1,distance=..2] run motion @s[predicate=vlvtrm:flying] set 0 0 0
#execute if entity @p[tag=tasobot.party1,distance=3..] run motion @s[predicate=vlvtrm:flying] forward 1
execute if entity @p[tag=tasobot.party1,distance=..3] run puppet @s actions run minecraft:sprint false
execute if entity @p[tag=tasobot.party1,distance=4..] run puppet @s actions run minecraft:sprint true