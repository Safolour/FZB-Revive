
function system:game_stat/read/0

gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
#gamerule sendCommandFeedback false

function bs.load:load
function animated_java:load
function large_number:load
function player_motion:internal/technical/load
scoreboard objectives add system.quitgame minecraft.custom:minecraft.leave_game

scoreboard objectives add system.stat dummy
scoreboard objectives add system.room dummy

scoreboard objectives add number dummy

scoreboard objectives add particle trigger
scoreboard objectives add particle0 dummy
scoreboard objectives add quit trigger

scoreboard objectives add nightvision trigger
scoreboard objectives add nightvision0 dummy


scoreboard objectives add uuid dummy

scoreboard objectives add uuid0 dummy
scoreboard objectives add uuid1 dummy
scoreboard objectives add uuid2 dummy
scoreboard objectives add uuid3 dummy

scoreboard players set tick system.stat 1

scoreboard objectives add precedence dummy

scoreboard objectives add system.freeze custom:total_world_time
scoreboard objectives add system.freeze0 custom:play_time
scoreboard objectives add system.actionbar dummy

scoreboard objectives add player_count dummy

scoreboard objectives add time dummy
scoreboard objectives add base64 dummy

scoreboard objectives add system.online dummy
#转换表
data modify storage base64 root.table.character set value {',':'','00101100':'','"':'','slim':''}
data modify storage base64 root.table.base64.binary set value {'A':'000000','B':'000001','C':'000010','D':'000011','E':'000100','F':'000101','G':'000110','H':'000111','I':'001000','J':'001001','K':'001010','L':'001011','M':'001100','N':'001101','O':'001110','P':'001111','Q':'010000','R':'010001','S':'010010','T':'010011','U':'010100','V':'010101','W':'010110','X':'010111','Y':'011000','Z':'011001','a':'011010','b':'011011','c':'011100','d':'011101','e':'011110','f':'011111','g':'100000','h':'100001','i':'100010','j':'100011','k':'100100','l':'100101','m':'100110','n':'100111','o':'101000','p':'101001','q':'101010','r':'101011','s':'101100','t':'101101','u':'101110','v':'101111','w':'110000','x':'110001','y':'110010','z':'110011','0':'110100','1':'110101','2':'110110','3':'110111','4':'111000','5':'111001','6':'111010','7':'111011','8':'111100','9':'111101','+':'111110','/':'111111'}
data modify storage base64 root.table.ascii.binary0 set value {'00100000':' ','00100001':'!','00100010':'"','00100011':'#','00100100':'$','00100101':'%','00100110':'&','00100111':'\'','00101000':'(','00101001':')','00101010':'*','00101011':'+','00101100':',','00101101':'-','00101110':'.','00101111':'/','00110000':'0','00110001':'1','00110010':'2','00110011':'3','00110100':'4','00110101':'5','00110110':'6','00110111':'7','00111000':'8','00111001':'9','00111010':':','00111011':';','00111100':'<','00111101':'=','00111110':'>','00111111':'?','01000000':'@','01000001':'A','01000010':'B','01000011':'C','01000100':'D','01000101':'E','01000110':'F','01000111':'G','01001000':"H",'01001001':'I','01001010':'J','01001011':'K','01001100':'L','01001101':'M','01001110':'N','01001111':'O','01010000':'P','01010001':'Q','01010010':'R','01010011':'S','01010100':'T','01010101':'U','01010110':'V','01010111':'W','01011000':'X','01011001':'Y','01011010':'Z','01011011':'[','01011100':'\\','01011101':']','01011110':'^','01011111':'_','01100000':'`','01100001':'a','01100010':'b','01100011':'c','01100100':'d','01100101':'e','01100110':'f','01100111':'g','01101000':'h','01101001':'i','01101010':'j','01101011':'k','01101100':'l','01101101':'m','01101110':'n','01101111':'o','01110000':'p','01110001':'q','01110010':'r','01110011':'s','01110100':'t','01110101':'u','01110110':'v','01110111':'w','01111000':'x','01111001':'y','01111010':'z','01111011':'{','01111100':'|','01111101':'}','01111110':'~'}
data modify storage base64 root.table.ascii.binary0.'00100000' set value ''
execute as @a run function system:_get_time
function system:number
function interaction:load
function map:load
function weapon:load
function inventory:load
function zombie:load
function player_stat:load
function decoration:load
function mainlobby:load

execute as @a run function system:joingame_0
execute store result score online player_count run execute if entity @a
execute store result score in_game player_count run execute if entity @a[scores={system.room=3..}]
scoreboard players operation in_game0 player_count = in_game player_count
scoreboard players operation online0 player_count = online player_count

team add collision
team modify collision seeFriendlyInvisibles false
team modify collision collisionRule never

forceload add 300 160

execute as @a at @s run attribute @s attack_speed base set 1024

function mainlobby:setting_text
setblock 9 -58 830 air
execute if score tick system.stat matches 1 run return run setblock 9 -58 830 lever[powered=true,face=wall,facing=south]
setblock 9 -58 830 lever[powered=false,face=wall,facing=south]
