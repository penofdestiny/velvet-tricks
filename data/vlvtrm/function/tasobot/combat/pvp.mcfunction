#Target locking
rotate @s facing entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore]

#Flying
execute if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=..24,predicate=vlvtrm:flying] run player_ability @s fly true
execute if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=..24,predicate=!vlvtrm:flying] run player_ability @s fly false
execute if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=24..] run player_ability @s fly true
execute if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,predicate=vlvtrm:flying,distance=4..24] run motion @s[predicate=vlvtrm:flying] forward 1.25
execute if entity @p[gamemode=survival,tag=!tasobot,tag=!tasobot.ignore,distance=24..] run motion @s[predicate=vlvtrm:flying] forward 1.5