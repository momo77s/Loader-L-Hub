-- ========================================================
-- 🌐 L-HUB UNIVERSAL SCRIPT LOADER (FIX OBFUSCATE)
-- ========================================================

local placeId = tostring(game.PlaceId)
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
-- 🎣 5. CATCH THAT FISH (MAINTENANCE / BLOCKED)
-- ========================================================
elseif placeId == "83240747149686" then
    -- Notifikasi Blokir/Update
    notify("🛠️ L-HUB | MAINTENANCE", "Script sedang diperbarui! Mohon tunggu versi terbaru.")
    warn("L-Hub: Catch That Fish script is currently locked for maintenance.")
    -- loadstring dihapus agar GUI tidak muncul

-- ========================================================
-- 🦈 6. TITAN FISHING [DISCONTINUED]
-- ========================================================
elseif placeId == "115893378298440" then
    notify("⚠️ L-HUB | DISCONTINUED", "Maaf, Script Titan Fishing sudah tidak dilanjutkan.")

-- ========================================================
-- ❌ GAME TIDAK DIKENAL
-- ========================================================
else
    notify("❌ L-HUB ERROR", "Game tidak didukung! (ID: " .. placeId .. ")")
end
