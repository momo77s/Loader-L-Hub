-- ========================================================

-- 🌐 L-HUB UNIVERSAL SCRIPT LOADER (FIX OBFUSCATE)

-- ========================================================



-- Kita ubah PlaceId jadi teks biar aman dari error Obfuscator

local placeId = tostring(game.PlaceId)

local CoreGui = game:GetService("CoreGui")

local StarterGui = game:GetService("StarterGui")



-- Fungsi Notifikasi

local function notify(title, text)

    pcall(function()

        StarterGui:SetCore("SendNotification", {

            Title = title,

            Text = text,

            Duration = 5

        })

    end)

end



notify("L-HUB LOADER", "Mengecek game... Mohon tunggu!")

task.wait(1.5)



-- ========================================================

-- 🌴 1. BORNEO FISHING [FREE]

-- ========================================================

if placeId == "104256444615949" then

    notify("L-HUB | BORNEO", "Game Ditemukan! Loading script Borneo...")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/Borneo-Fishing/main/BorneoFishing.lua"))()



-- ========================================================

-- 🐟 2. FISHZAR PULAU NELAYAN [FREE]

-- ========================================================

elseif placeId == "121442629947656" then

    notify("L-HUB | FISHZAR", "Game Ditemukan! Loading script Fishzar...")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-FISHZAR-Pulau-Nelayan/main/LHub_Fishzar.lua"))()



-- ========================================================

-- 🔱 3. SPEAR FISHING [FREE]

-- ========================================================

elseif placeId == "101953168527257" then

    notify("L-HUB | SPEAR", "Game Ditemukan! Loading script Spear Fishing...")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-Spear-Fishing/refs/heads/main/LHub_SpearFishing.lua"))()



-- ========================================================

-- 💎 4. MEMANCING CUY [PREMIUM]

-- ========================================================

elseif placeId == "89596967204087" then

    notify("L-HUB | PREMIUM", "Memancing Cuy Ditemukan! Loading script...")

    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-Hub-Script-MancingCuy-/main/Premium.lua"))()



-- ========================================================

-- 🎣 5. CATCH THAT FISH(DEBUGGING IKAN ITU) [NEW]

-- ========================================================

elseif placeId == "83240747149686" then

    notify("L-HUB | DEBUGGING", "Game Ditemukan! Loading script Catch That Fish...")

    -- Link diubah ke Raw agar loadstring berfungsi

    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-Catch-A-Fish-Debugging-Ikan-Itu-/main/LHub_CatchThatFish_(DebuggingIkanItu).lua"))()



-- ========================================================

-- 🦈 6. TITAN FISHING [DISCONTINUED]

-- ========================================================

elseif placeId == "115893378298440" then

    notify("⚠️ L-HUB | DISCONTINUED", "Maaf, Script Titan Fishing sudah tidak dilanjutkan.")

    warn("L-Hub: Titan Fishing script is currently discontinued.")



-- ========================================================

-- ❌ GAME TIDAK DIKENAL

-- ========================================================

else

    notify("❌ L-HUB ERROR", "Game tidak didukung! (ID: " .. placeId .. ")")

    warn("L-Hub Error: Game dengan PlaceId " .. placeId .. " belum ada di database.")

end
