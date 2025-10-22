#Flying
#execute if entity @p[tag=tasobot.following,predicate=vlvtrm:flying,gamemode=!spectator] run player_ability @s fly true
#execute if entity @p[tag=tasobot.following,predicate=!vlvtrm:flying,gamemode=!spectator] run player_ability @s fly false

#Movement
rotate @s[predicate=!vlvtrm:moving] facing entity @p[tag=tasobot.following,gamemode=!spectator]
#execute if entity @p[tag=tasobot.following,distance=..2,gamemode=!spectator] run motion @s[predicate=vlvtrm:flying] set 0 0 0
#execute if entity @p[tag=tasobot.following,distance=3..,gamemode=!spectator] run motion @s[predicate=vlvtrm:flying] forward 1
execute if entity @p[tag=tasobot.following,distance=..3,gamemode=!spectator] run puppet @s actions run minecraft:sprint false
execute if entity @p[tag=tasobot.following,distance=4..,gamemode=!spectator] run puppet @s actions run minecraft:sprint true