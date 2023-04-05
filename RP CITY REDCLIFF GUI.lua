local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

if game.GameId == 3204175584 then
    OrionLib:MakeNotification({
        Name = "Your in!",
        Content = "Argetnar KeyHub v128",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArgetnarYT/scripts/main/RCRP.lua"))()
else
    OrionLib:MakeNotification({
        Name = "Warning!",
        Content = "Invalid game",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    setclipboard("https://www.roblox.com/games/8369888266")
end



