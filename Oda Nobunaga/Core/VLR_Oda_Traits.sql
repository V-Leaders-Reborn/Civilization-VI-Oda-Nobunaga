--=============================================
-- Oda / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,								Kind)
 VALUES ('ABILITY_VLR_ODA_GUNPOWDER',		'KIND_ABILITY'),
		('TRAIT_LEADER_VLR_ODA_UA',			'KIND_TRAIT');

-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('ABILITY_VLR_ODA_GUNPOWDER',		'CLASS_SAMURAI');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,							Name,									Description)
VALUES	('TRAIT_LEADER_VLR_ODA_UA',			'LOC_TRAIT_LEADER_VLR_ODA_UA_NAME',		'LOC_TRAIT_LEADER_VLR_ODA_UA_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_VLR_ODA',					'TRAIT_LEADER_VLR_ODA_UA');

-----------------------------------------------			
-- TraitModifiers		
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_VLR_ODA_UA',			'VLR_ODA_UA_POWDERMAGES');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,									Description,									Inactive)
VALUES	('ABILITY_VLR_ODA_GUNPOWDER',		'LOC_ABILITY_VLR_ODA_GUNPOWDER_NAME',	'LOC_ABILITY_VLR_ODA_GUNPOWDER_DESCRIPTION',	1);

-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('ABILITY_VLR_ODA_GUNPOWDER',		'ABILITY_VLR_ODA_GUNPOWDERMOD');

-----------------------------------------------
--  Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,								OwnerRequirementSetId)
VALUES	('ABILITY_VLR_ODA_GUNPOWDERMOD',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		NULL),
		('VLR_ODA_UA_POWDERMAGES',			'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',		'VLR_ODA_GUNPOWDER_REQUIREMENT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)
VALUES	('ABILITY_VLR_ODA_GUNPOWDERMOD',	'Amount',		7);

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('VLR_ODA_GUNPOWDER_REQUIREMENT',		'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES  ('VLR_ODA_GUNPOWDER_REQUIREMENT',		'VLR_ODA_REQUIRES_GUNPOWDER');

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('VLR_ODA_REQUIRES_GUNPOWDER',			'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,					Value)
VALUES	('VLR_ODA_REQUIRES_GUNPOWDER',			'TechnologyType',		'TECH_GUNPOWDER');

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,							Context,	Text)
VALUES	('ABILITY_VLR_ODA_GUNPOWDERMOD',		'Preview',	'LOC_ABILITY_VLR_ODA_GUNPOWDERMOD_PREVIEW_TEXT');