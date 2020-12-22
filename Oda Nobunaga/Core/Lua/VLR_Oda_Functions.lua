-- Toypurina_Script_Pass
-- Author: SeelingCat
-- DateCreated: 6/10/2020 3:11:04 PM
--------------------------------------------------------------
ExposedMembers.GameEvents = GameEvents

function Sailor_Oda_Magic_Gun (player, sailorGunnerUnit, iCityX, iCityY)
	local pPlayer = Players[player]
	local pPlayerUnits = pPlayer:GetUnits()

	pPlayerUnits:Create(sailorGunnerUnit, iCityX, iCityY)
	print ("Spawned a Gunner unit!")
end

GameEvents.SAILOR_ODA_SUMMON_GUN.Add(Sailor_Oda_Magic_Gun)

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
		local pPlayer = Players[newPlayerID]
		local pPlayerCities = pPlayer:GetCities()
		local cappedCity = pPlayerCities:FindID(newCityID)
		--cappedCity:ChangeLoyalty(33)
		local iOwner = cappedCity:GetOwner() --attempt to index a number value
		for dx = (sailorOdaRadius * -1), sailorOdaRadius do
			for dy = (sailorOdaRadius * -1), sailorOdaRadius do
				local pPlotNearCity = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, sailorOdaRadius);
				if pPlotNearCity and (pPlotNearCity:GetOwner() == iOwner) then
					if pPlotNearCity:GetDistrictType() == GameInfo.Districts["DISTRICT_CITY_CENTER"].Index then
						print ("friendly city found in range")
						
						local pFriendlyCityInRange = Cities.GetCityInPlot(pPlotNearCity:GetX(), pPlotNearCity:GetY())
						if pFriendlyCityInRange ~= nil then
							pFriendlyCityInRange:ChangeLoyalty(33)
							if pPlayer:IsHuman() then
								Game.AddWorldViewText(iOwner, Locale.Lookup("Loyalty boosted!"), pPlotNearCity:GetX(), pPlotNearCity:GetY(), 0)
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
    print ("///// Oda detected. Loading VLR_Oda_Functions Sailor_Oda_Subjugation.")
	GameEvents.CityConquered.Add(Sailor_Oda_Subjugation)
else
    print ("///// Oda not detected.")
end