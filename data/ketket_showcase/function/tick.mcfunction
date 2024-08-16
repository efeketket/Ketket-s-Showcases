execute as @e[tag=showcaseplace,type=player] at @s run function ketket_showcase:detection
execute as @e[tag=showcaseplace,type=player] at @s run tag @s remove showcaseplace
execute as @e[nbt={SelectedItem:{components: {"minecraft:custom_name": '{"color":"yellow","italic":false,"text":"Showcase"}', "minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWU4Y2M5YWQ3YTg4NmFjZTRiZjQ5MTA1MmQwODQyMzYwMmU1N2NkNDA5MmY1ZjM1ZWMwY2FhODVkOWQyNGJkIn19fQ=="}], id: [I; -2147039857, -724415339, -1171732274, 248536439]}}, count: 1, id: "minecraft:player_head"}},type=player] at @s run tag @s add showcaseplace

#set
execute as @e[type=minecraft:item_frame,tag=showcase] at @s run function ketket_showcase:place

#removing
execute as @e[type=armor_stand,tag=showcase] at @s if block ~ ~2 ~ air run summon marker ~ ~1 ~ {Tags:["showcase1"]}
execute as @e[type=armor_stand,tag=showcase] at @s if block ~ ~2 ~ air run kill @s 
execute as @e[type=marker,tag=showcase1] at @s run function ketket_showcase:removing

#interaction
execute as @e[type=interaction,tag=showcaseinteraction] at @s on target if score @s Sneaking_sc matches 0 run function ketket_showcase:interaction/placeitem

#visiblenameswitch_sc
execute as @e[type=interaction,tag=showcaseinteraction,scores={visiblenameswitch_sc=0},tag=!displayinf] at @s run function ketket_showcase:interaction/nameswitch

#type changer
execute as @e[type=interaction,tag=showcaseinteraction] at @s on target if score @s Sneaking_sc matches 1 run function ketket_showcase:interaction/typechanger

#dispnameshow check
execute as @e[type=interaction,tag=showcaseinteraction] at @s on target run execute if score @e[type=interaction,tag=showcase,limit=1,sort=nearest] visiblenameswitch_sc matches 1 run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomNameVisible set value 0b
execute as @e[type=interaction,tag=showcaseinteraction] at @s on target run execute if score @e[type=interaction,tag=showcase,limit=1,sort=nearest] visiblenameswitch_sc matches 2 run data modify entity @e[type=armor_stand,sort=nearest,limit=1] CustomNameVisible set value 1b
execute as @e[type=interaction,tag=showcaseinteraction,scores={infinitevisiblename_sc=2}] at @s run scoreboard players set @s infinitevisiblename_sc 0
execute as @e[type=interaction,scores={visiblenameswitch_sc=2}] at @s run scoreboard players set @s visiblenameswitch_sc 0


execute as @e[type=interaction,tag=showcaseinteraction] run data remove entity @s interaction
execute as @e[type=interaction,tag=showcaseinteraction] at @s on attacker run execute run setblock ~ ~1 ~ minecraft:air
execute as @e[type=interaction,tag=showcaseinteraction] run data remove entity @s attack

scoreboard players set @a[scores={Sneaking_sc=1..}] Sneaking_sc 0