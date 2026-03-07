-- ========================================================
-- 🌐 L-HUB UNIVERSAL SCRIPT LOADER
-- ========================================================

local placeId = game.PlaceId
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
if placeId == 104256444615949 then
    notify("L-HUB | BORNEO", "Game Ditemukan! Loading script Borneo...")
    
    -- Link Borneo Fishing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/Borneo-Fishing/main/BorneoFishing.lua"))()

-- ========================================================
-- 🐟 2. FISHZAR PULAU NELAYAN [FREE]
-- ========================================================
elseif placeId == 121442629947656 then
    notify("L-HUB | FISHZAR", "Game Ditemukan! Loading script Fishzar...")
    
    -- Link Fishzar Pulau Nelayan
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-FISHZAR-Pulau-Nelayan/main/LHub_Fishzar.lua"))()

-- ========================================================
-- 🔱 3. SPEAR FISHING [FREE]
-- ========================================================
elseif placeId == 101953168527257 then
    notify("L-HUB | SPEAR", "Game Ditemukan! Loading script Spear Fishing...")
    
    -- Link Spear Fishing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-Spear-Fishing/refs/heads/main/LHub_SpearFishing.lua"))()

-- ========================================================
-- 💎 4. MEMANCING CUY [PREMIUM]
-- ========================================================
elseif placeId == 89596967204087 then
    notify("L-HUB | PREMIUM", "Memancing Cuy Ditemukan! Loading script...")
    
    -- Link Memancing Cuy Premium
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-Hub-Script-MancingCuy-/main/Premium.lua"))()

-- ========================================================
-- 🦈 5. TITAN FISHING [FREE]
-- ========================================================
elseif placeId == 101918341695535 then
    notify("L-HUB | TITAN", "Game Ditemukan! Loading script Titan Fishing...")
    
    -- Link Titan Fishing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momo77s/L-HUB-Titan-Fishing/refs/heads/main/TitanFishing.lua"))()

-- ========================================================
-- ❌ GAME TIDAK DIKENAL
-- ========================================================
else
    notify("❌ L-HUB ERROR", "Game tidak didukung! (ID: " .. tostring(placeId) .. ")")
    warn("L-Hub Error: Game dengan PlaceId " .. tostring(placeId) .. " belum ada di database.")
end
