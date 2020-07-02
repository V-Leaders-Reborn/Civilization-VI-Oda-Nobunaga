GameEvents = ExposedMembers.GameEvents

function Sailor_Oda_Switcheroo (pIterUnit, pPlayerUnits, pUnit, samuraiAlive)
	print("Passed successfully.")
	UnitManager.RequestOperation(pIterUnit, UnitOperationTypes.UPGRADE)
	--[[
	if samuraiAlive == true then
		local pUnitTPXP = pIterUnit:GetExperience()
		pSailorXPTransplant = pUnitTPXP:GetExperiencePoints()
		print("XP: ", pSailorXPTransplant)
	end
	if samuraiAlive == false then
		local pUnitXP = pUnit:GetExperience()
		pUnitXP:ChangeExperience(pSailorXPTransplant)
		print("XP Passed")
	end--]]
end

GameEvents.Sailor_Oda_Gunpowder.Add(Sailor_Oda_Switcheroo)