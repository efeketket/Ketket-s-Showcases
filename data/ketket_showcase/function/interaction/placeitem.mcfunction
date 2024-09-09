data modify entity @e[type=minecraft:item_display,tag=showcase,limit=1,sort=nearest] item set from entity @s SelectedItem 
advancement grant @s only ketket_showcase:sc_adv_2
execute if data entity @s SelectedItem{id:"minecraft:dragon_head"} run advancement grant @s only ketket_showcase:sc_adv_3
execute if data entity @s SelectedItem{id:"minecraft:emerald"} run advancement grant @s only ketket_showcase:sc_adv_4
execute if data entity @s SelectedItem{id:"minecraft:emerald_block"} run advancement grant @s only ketket_showcase:sc_adv_4
execute if data entity @s SelectedItem{id:"minecraft:dragon_egg"} run advancement grant @s only ketket_showcase:sc_adv_5
execute if data entity @s SelectedItem run playsound minecraft:entity.item_frame.add_item block @s ~ ~ ~ 10 2
execute unless data entity @s SelectedItem run data modify entity @e[type=minecraft:item_display,limit=1,sort=nearest] item set value air
execute unless data entity @s SelectedItem run playsound minecraft:entity.item_frame.remove_item block @s ~ ~ ~ 10 1
execute unless data entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomName set value '{"text":"Showcase"}'
execute unless data entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name run scoreboard players set @e[type=interaction,sort=nearest,tag=showcase,limit=1] visiblenameswitch_sc 1
execute unless data entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name run data modify entity @e[type=armor_stand,tag=showcase,limit=1] CustomNameVisible set value 0b
execute if data entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name run data modify entity @e[type=minecraft:armor_stand,tag=showcase,limit=1,sort=nearest] CustomName set from entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name
execute if data entity @s[scores={Sneaking_sc=0}] SelectedItem.tag.display.Name run scoreboard players set @e[type=interaction,sort=nearest,tag=showcase,limit=1] visiblenameswitch_sc 2
execute if data entity @s SelectedItem run scoreboard players set @e[type=minecraft:interaction,limit=1,sort=nearest] sc_powered 1
execute as @e[scores={sc_powered=1},sort=nearest,limit=1,type=interaction] at @s run setblock ~ ~1 ~ minecraft:oak_button[powered=true,face=floor]
execute unless data entity @s SelectedItem run scoreboard players set @e[type=minecraft:interaction,limit=1,sort=nearest] sc_powered 0
execute as @e[scores={sc_powered=0},sort=nearest,limit=1,type=interaction] at @s run setblock ~ ~1 ~ minecraft:oak_button[powered=false,face=floor]