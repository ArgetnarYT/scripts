--Библия
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("fly toggle", "RJTheme4")
                                 --Имя Гуи      --Тема

local Tab = Window:NewTab("Fly") --Название раздела
local Section = Tab:NewSection("flyToggle") --Название Секции 

               --название тоггла   --описание
Section:NewToggle("Toggle FLy", "Turn on Fly", function(state)  --сам Toggle
    if state then  
		Notification:Notify(        
    {Title = "Script", Description = "Fly ON"},    --функция кастом сообщения
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
                
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/FLY.lua"))() --мой скрипт флай 
Fly(true)  --вкл флай

else
	Notification:Notify(
    {Title = "Script", Description = "Fly OFF"},       --функция кастом сообщения
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
                
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/FLY.lua"))()   --мой скрипт флай
Fly(false)   --выкл флай

    end  --конец
end)   --конец



--сделал Brinen
--При поттдрежке Argetnar KeyHub https://discord.gg/DaKyeHFx8d
