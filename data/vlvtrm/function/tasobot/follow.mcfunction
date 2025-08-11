execute as @s[distance=..16] run tag tasobot remove tasobot.looking
execute as tasobot run rotate @s facing entity @p[tag=!tasobot,distance=..16]
execute as @s[distance=..2] run player tasobot stop
execute as @s[distance=3..] run player tasobot move forward
execute as @s[distance=..3] run player tasobot unsprint
execute as @s[distance=5..] run player tasobot sprint