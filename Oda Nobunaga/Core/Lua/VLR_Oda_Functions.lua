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
			local pPlayerUnits = pPlayer:GetUnits()
			for i, pIterCity in pPlayerCities:Members() do
				if pIterCity then	
					local pCityCap = pIterCity:IsOriginalCapital()
					local pCityOriginalOwner = pIterCity:GetOriginalOwner()
					print(pCityOriginalOwner)
					if pCityCap = true and pCityOriginalOwner ~= pPlayer then
						local iCityX, iCityY = pIterCity:GetX(), pIterCity:GetY()
						pPlayerUnits:Create(sailorGunnerUnit, iCityX, iCityY)
					end
				end
			end
		end
	end
end

--=============================================
-- Owo Subjugation by SailorCat
--=============================================
local sailorOdaRadius = 10

function Sailor_Oda_Subjugation (newPlayerID, oldPlayerID, newCityID, iCityX, iCityY)
	local bOdaLeader = false
	local pPlayerConfig = PlayerConfigurations[newPlayerID]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if sLeader == 'LEADER_VLR_ODA' then
		bOdaLeader = true
	end

	if bOdaLeader == true then
		newCityID:ChangeLoyalty(33)
		local iOwner = newCityID:GetOwner()
		for dx = (sailorOdaRadius * -1), sailorOdaRadius do
		for dy = (sailorOdaRadius * -1), sailorOdaRadius do
			local pPlotNearCity = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, sailorOdaRadius);
			if pPlotNearCity and (pPlotNearCity:GetOwner() == iOwner) then
				if pPlotNearCity:GetDistrictType() > -1 then
					local pPlotDistrictType = GameInfo.Districts[pPlotNearCity:GetDistrictType()].DistrictType
					if pPlotDistrictType == "DISTRICT_CITY_CENTER" then
						local iPlotX, iPlotY = pPlotNearCity:GetX(), pPlotNearCity:GetY()
						pBurstCity = Cities:GetCityInPlot(iPlotX, iPlotY)
						pBurstCity:ChangeLoyalty(33)
						if iOwner:IsHuman() then
							Game.AddWorldViewText(iOwner, Locale.Lookup("Loyalty boosted!"), iPlotX, iPlotY, 0)
						end
					end
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
    print ("///// Oda detected. Loading lua functions...")
	Events.ResearchCompleted.Add(Sailor_Oda_Gunpowder)
	Events.CityConquered.Add(Sailor_Oda_Subjugation)
else
    print ("///// Oda not detected.")
end