local localesRoot = "https://raw.githubusercontent.com/mehmetefeerkan/rainf-ac-locales/main/"
local localesChoice = RAINF_S.LocaleChoice
local localesAddress = localesRoot .. localesChoice .. "/" .. "main.lua"
Citizen.CreateThread(function()
    local data = nil
    local statc = nil
    PerformHttpRequest(localesAddress, function (errorCode, resultData, resultHeaders)
        data = resultData
        statc = errorCode
    end)
    Citizen.Wait(2000)
    if (statc < 201) and (statc ~= nil) then
        load(data)()
    else
        L = {}
        L.Main.NoLogBanWebhook = "LogBanWebhook config ayarı bulunamadı."
        L.Main.NoServerName = "ServerName config ayarı bulunamadı."
        L.Main.NoModelsLogWebhook = "ModelsLogWebhook config ayarı bulunamadı."
        L.Main.NoExplosionLogWebhook = "ExplosionLogWebhook config ayarı bulunamadı."
        L.Main.NoAntiVPN = "AntiVPN config ayarı bulunamadı."
        L.Main.NoAntiVPNDiscordLogs = "AntiVPNDiscordLogs config ayarı bulunamadı."
        L.Main.NoAntiBlips = "AntiBlips config ayarı bulunamadı."
        L.Main.NoAntiSpectate = "AntiSpectate config ayarı bulunamadı."
        L.Main.NoAntiResourceStart = "AntiResourceStart config ayarı bulunamadı."
        L.Main.NoAntiResourceStop = "AntiResourceStop config ayarı bulunamadı."
        L.Main.NoAntiResourceRestart = "AntiResourceRestart config ayarı bulunamadı."
        L.Main.NoResourceCount = "ResourceCount config ayarı bulunamadı."
        L.Main.NoAntiInjection = "AntiInjection config ayarı bulunamadı."
        L.Main.NoWeaponProtection = "WeaponProtection config ayarı bulunamadı."
        L.Main.NoTriggersProtection = "TriggersProtection config ayarı bulunamadı."
        L.Main.NoGiveWeaponsProtection = "GiveWeaponsProtection config ayarı bulunamadı."
        L.Main.NoExplosionProtection = "ExplosionProtection config ayarı bulunamadı."
        L.Main.NoAntiClearPedTask = "AntiClearPedTask config ayarı bulunamadı."
        L.Main.NoBanBlacklistedWeapon = "BanBlacklistedWeapon config ayarı bulunamadı."
        L.Main.NoBlacklistedCommands = "BlacklistedCommands config ayarı bulunamadı."
        L.Main.NoBlockedExplosions = "BlockedExplosions config ayarı bulunamadı."
        L.Main.NoBlacklistedWords = "BlacklistedWords config ayarı bulunamadı."
        L.Main.NoBlacklistedWeapons = "BlacklistedWeapons config ayarı bulunamadı."
        L.Main.NoBlacklistedModels = "BlacklistedModels config ayarı bulunamadı."
        L.Main.NoWhitelistedProps = "WhitelistedProps config ayarı bulunamadı."
        L.Main.NoBlacklistedEvents = "BlacklistedEvents config ayarı bulunamadı."
        L.Main.BanReason_Speedhack = "Hız hilesi - noclip? "
        L.Main.PlayerConnecting = "ID'li oyuncu bağlanıyor. "
        L.Main.UnBanned = "Oyuncunun banı kaldırıldı."
        L.Main.PlayerWasBanned = "Bir oyuncu banlandı."
        L.Main.NoBlacklistedEvents = "BlacklistedEvents config ayarı bulunamadı."
        L.Main.NoBlacklistedEvents = "BlacklistedEvents config ayarı bulunamadı."
        L.Main.TriedPedTaskCleaning = "BlacklistedEvents config ayarı bulunamadı."
        L.Main.TriedToSpawn = "Spawnlamaya çalıştı  :"
        L.Main.PreventedBlacklistProp = "Blacklist prop spawnlamaya çalıştı : "
        L.Main.PreventedThatTrigger = "Bu triggerın çalıştırılmasına engel oldum : "
        L.Main.CensoredThat = "Söylemeye çalıştı : "
        L.Main.DevelopedBy = "RAINF Gelistirici Ekibi tarafindan gelistirilmistir."
        L.Main.VerificationPassed = "Anticheat Lisansı Onaylandı."
        L.Main.Integrity = "RAINF-AC'ye ait tüm sistemler aktif - başlatma başarılı."
        L.Main.BanlistActive = "Global Banlist Aktif."
        L.Main.TriggerScan = "Trigger Kontrolü Gerçekleştiriliyor..."
        L.Main.ACWebsite = "🧧 https://ac.rainf.online"
        L.Main.NormalExplosionAttempt = "Karalistedeki bir patlamayı tetikledi. Tip : "
        L.Main.MassExplosionAttempt = "Bir sürü patlamayı tetikledi. Tip : "
        L.Main.GasPumpMishap = "Gaz pompası patlaması tetikledi. "
        L.Main.SilentExplosionAttempt = "Sessiz patlatma tetikledi. Tip : "
        L.Main.HiddenExplosionAttempt = "Görünmez patlatma tetikledi. Tip : "
        L.Main.WhatTheFuckExplosion = "Tried to spawn oneshot explosion - type : "
        L.Main.AttemptedWeaponGive = "Birine silah vermeyi denedi."
        L.Main.AttemptedWeaponRemove = "Silah kaldırmayı denedi."
        L.Main.AttemptedWeaponRemoveAll = "Birinden tüm silahları kaldırmayı denedi."

    end)
