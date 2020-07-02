--=============================================
-- Owo Gunpowder Switcheroo by SailorCat
--=============================================
ExposedMembers.GameEvents = GameEvents

local tSailorPromotions = {}
for row in GameInfo.UnitPromotions() do
table.insert(tSailorPromotions, row.Index)
end

pSailorXPTransplant = 0;
local sailorSwitcherooTech		= GameInfo.Technologies["TECH_GUNPOWDER"].Index
local sailorSwitcherooSamurai	= GameInfo.Units["UNIT_JAPANESE_SAMURAI"].Index
local sailorSwitcherooGunner	= GameInfo.Units["UNIT_VLR_ODA_UU"].Index

function Sailor_Oda_Switcheroo (pIterUnit, pPlayerUnits)
						--//// Promotion transplant bucket...
						local transplantXP = pIterUnit:GetExperience()
						print(transplantXP)
						local tTransplants = {}
						local iNumberofPromos = 0
						for k, iPromo in ipairs(tSailorPromotions) do
							if pIterUnit:GetExperience():HasPromotion(iPromo) then
								table.insert(tTransplants, iPromo)
								print(iPromo)
								iNumberofPromos = iNumberofPromos + 1
							end
						end

						--//// Experience transplant bucket...
						local samuraiAlive = true;
						GameEvents.Sailor_Oda_Gunpowder.Call(pIterUnit, pPlayerUnits, pUnit, samuraiAlive)
						--[[
						--//// Unit replacement...
						local iUnitX, iUnitY = pIterUnit:GetX(), pIterUnit:GetY()
						pPlayerUnits:Destroy(pIterUnit)
						samuraiAlive = false;
						local pUnit = pPlayerUnits:Create(sailorSwitcherooGunner, iUnitX, iUnitY)
						local pUnitXP = pUnit:GetExperience()
						print(pUnit)

						--//// Promotion transplant surgery...
						for k, pPromo in ipairs(tTransplants) do
							pUnitXP:SetPromotion(pPromo)
						end
						print("XP pre: ", pSailorXPTransplant)
						--//// Experience transplant surgery...
						GameEvents.Sailor_Oda_Gunpowder.Call(pIterUnit, pPlayerUnits, pUnit, samuraiAlive)]]--
end

function Sailor_Oda_Gunpowder (player, eTech)
	local bOdaLeader = false
	local pPlayerConfig = PlayerConfigurations[player]
	local sLeader = pPlayerConfig:GetLeaderTypeName()
	if sLeader == 'LEADER_VLR_ODA' then
		bOdaLeader = true
	end

	if bOdaLeader == true then
		if eTech == sailorSwitcherooTech then
			local pPlayer = Players[player]
			local pPlayerUnits = pPlayer:GetUnits()
			for i, pIterUnit in pPlayerUnits:Members() do
				if pIterUnit then	
					local pUnitType = pIterUnit:GetType()
					if pUnitType == sailorSwitcherooSamurai then
						Sailor_Oda_Switcheroo(pIterUnit, pPlayerUnits)
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
else
    print ("///// Oda not detected.")
end