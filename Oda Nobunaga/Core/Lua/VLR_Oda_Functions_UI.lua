-- ToypurinaScripts
-- Author: SeelingCat
-- DateCreated: 6/9/2020 8:53:59 PM
--------------------------------------------------------------
GameEvents = ExposedMembers.GameEvents

--=============================================
-- Owo Gunpowder by SailorCat
--=============================================
local sailorGunnerTech	= GameInfo.Technologies["TECH_GUNPOWDER"].Index
local sailorGunnerUnit	= GameInfo.Units["UNIT_VLR_ODA_UU"].Index

function Sailor_Oda_Gunpowder (player, eTech)
	local bOdaLeader = false
	local pPlayerConfig = PlayerConfigurations[player]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if sLeader == 'LEADER_VLR_ODA' then
		bOdaLeader = true
	end

	if bOdaLeader == true then
		if eTech == sailorGunnerTech then
			local pPlayer = Players[player]
			local pPlayerCities = pPlayer:GetCities()
			for i, pIterCity in pPlayerCities:Members() do
				if pIterCity then
					if pIterCity:IsOriginalCapital() then
						print("IsOriginalCapital so create Gunner")
						local iCityX, iCityY = pIterCity:GetX(), pIterCity:GetY()

						GameEvents.SAILOR_ODA_SUMMON_GUN.Call(player, sailorGunnerUnit, iCityX, iCityY)
					end
				end
			end
		end
	end
end


--=============================================
-- Leader Present Detection by SeelingCat
--=============================================
local bOdaPresent = false

for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
    if bOdaPresent == false then
        local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        if sLeaderType == 'LEADER_VLR_ODA' then
			bOdaPresent = true
        end
    end
end
if bOdaPresent == true then
    print ("///// Oda detected. Loading VLR_Oda_Functions_UI Sailor_Oda_Gunpowder.")
	Events.ResearchCompleted.Add(Sailor_Oda_Gunpowder)
else
    print ("///// Oda not detected.")
end