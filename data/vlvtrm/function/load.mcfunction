#This function will run on world loading or data pack loading

#Scoreboards
scoreboard objectives add tasobot.heatriser dummy
scoreboard objectives add tasobot.heal dummy
scoreboard objectives add tasobot.attack dummy
scoreboard objectives add vlvtrm.join minecraft.custom:minecraft.leave_game
scoreboard players add tasobot tasobot.attack 0
scoreboard players add tasobot tasobot.heatriser 0
scoreboard players add tasobot tasobot.heal 0


#General
player tasobot spawn
tellraw @p[tag=vlvtrm.master] "Custom Velvet Protocol initialized."