serpent = dofile("./lib/serpent.lua")
https = require("ssl.https")
http = require("socket.http")
JSON = dofile("./lib/JSON.lua")
local database = dofile("./lib/redis.lua").connect("127.0.0.1", 6379)
print([[


      ________         __         ______   __        ________        __    __ 
      /        |       /  |       /      \ /  |      /        |      /  |  /  |
      $$$$$$$$/_______ $$ |____  /$$$$$$  |$$ |   __ $$$$$$$$/       $$ |  $$ |
         $$ | /       |$$      \ $$ |__$$ |$$ |  /  |$$ |__          $$  \/$$/ 
         $$ |/$$$$$$$/ $$$$$$$  |$$    $$ |$$ |_/$$/ $$    |          $$  $$<  
         $$ |$$      \ $$ |  $$ |$$$$$$$$ |$$   $$<  $$$$$/            $$$$  \ 
         $$ | $$$$$$  |$$ |  $$ |$$ |  $$ |$$$$$$  \ $$ |_____        $$ /$$  |
         $$ |/     $$/ $$ |  $$ |$$ |  $$ |$$ | $$  |$$       |      $$ |  $$ |
         $$/ $$$$$$$/  $$/   $$/ $$/   $$/ $$/   $$/ $$$$$$$$/       $$/   $$/ 
      
]])
Server_TFT9T = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a')
local AutoFiles_TFT9T = function() 
local Create_Info = function(Token,Sudo,UserName)  
local TFT9T_Info_Sudo = io.open("sudo.lua", 'w')
TFT9T_Info_Sudo:write([[
token = "]]..Token..[["

Sudo = ]]..Sudo..[[  

UserName = "]]..UserName..[["
]])
TFT9T_Info_Sudo:close()
end  
if not database:get(Server_TFT9T.."Token_TFT9T") then
print("\27[1;34m⇠ ياهلا ومرحبا بالشيخ ارسل توكن بوتك يالمحزم :\27[m")
local token = io.read()
if token ~= '' then
local url , res = https.request('https://api.telegram.org/bot'..token..'/getMe')
if res ~= 200 then
io.write('\n\27[1;31m»» اعذرني يالحبيب ترا التوكن غلط \n\27[0;39;49m')
else
io.write('\n\27[1;31m»» The Token Is Saved\n\27[0;39;49m')
database:set(Server_TFT9T.."Token_TFT9T",token)
end 
else
io.write('\n\27[1;31mThe Tokem was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
if not database:get(Server_TFT9T.."UserName_TFT9T") then
print("\27[1;34m\n»» Send Your UserName Sudo : \27[m")
local UserName = io.read():gsub('@','')
if UserName ~= '' then
local Get_Info = http.request("http://TFT9T.ml/info/?user="..UserName)
if Get_Info:match('Is_Spam') then
io.write('\n\27[1;31m⇠ شعندك تكرر؟ تم حظر سيرفرك لمده 5 دقائق هاذا عقاب لك \nهاذا عقاب لك واوريك المره الجايه\n\27[0;39;49m')
return false
end
local Json = JSON:decode(Get_Info)
if Json.Info == false then
io.write('\n\27[1;31m»» اعذرني.. يوزرك غلط \n\27[0;39;49m')
os.execute('lua start.lua')
else
if Json.Info == 'Channel' then
io.write('\n\27[1;31mهطف انت؟ ترا اليوزر بقناه خلك ذكي \n\27[0;39;49m')
os.execute('lua start.lua')
else
io.write('\n\27[1;31m»» The UserNamr Is Saved\n\27[0;39;49m')
database:set(Server_TFT9T.."UserName_TFT9T",Json.Info.Username)
database:set(Server_TFT9T.."Id_TFT9T",Json.Info.Id)
end
end
else
io.write('\n\27[1;31mThe UserName was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
local function Files_TFT9T_Info()
Create_Info(database:get(Server_TFT9T.."Token_TFT9T"),database:get(Server_TFT9T.."Id_TFT9T"),database:get(Server_TFT9T.."UserName_TFT9T"))   
local RunTFT9T = io.open("TFT9T", 'w')
RunTFT9T:write([[
#!/usr/bin/env bash
cd $HOME/TFT9Tx
token="]]..database:get(Server_TFT9T.."Token_TFT9T")..[["
rm -fr TFT9T.lua
wget "https://raw.githubusercontent.com/TFT9T/TFT9T/master/TFT9T.lua"
while(true) do
rm -fr ../.telegram-cli
./tg -s ./TFT9T.lua -p PROFILE --bot=$token
done
]])
RunTFT9T:close()
local RunTs = io.open("ts", 'w')
RunTs:write([[
#!/usr/bin/env bash
cd $HOME/TFT9Tx
while(true) do
rm -fr ../.telegram-cli
screen -S TFT9T -X kill
screen -S TFT9T ./TFT9T
done
]])
RunTs:close()
end
Files_TFT9T_Info()
database:del(Server_TFT9T.."Token_TFT9T");database:del(Server_TFT9T.."Id_TFT9T");database:del(Server_TFT9T.."UserName_TFT9T")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
end 
local function Load_File()  
local f = io.open("./sudo.lua", "r")  
if not f then   
AutoFiles_TFT9T()  
var = true
else   
f:close()  
database:del(Server_TFT9T.."Token_TFT9T");database:del(Server_TFT9T.."Id_TFT9T");database:del(Server_TFT9T.."UserName_TFT9T")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
var = false
end  
return var
end
Load_File()
