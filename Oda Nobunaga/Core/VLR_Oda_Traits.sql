--=============================================
-- Oda / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,								Kind)
 VALUES ('TRAIT_LEADER_VLR_ODA_UA',			'KIND_TRAIT'),
		('TRAIT_LEADER_UNIT_VLR_ODA_UU',	'KIND_TRAIT');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,							Name,										Description)
VALUES	('TRAIT_LEADER_VLR_ODA_UA',			'LOC_TRAIT_LEADER_VLR_ODA_UA_NAME',			'LOC_TRAIT_LEADER_VLR_ODA_UA_DESCRIPTION'),
		('TRAIT_LEADER_UNIT_VLR_ODA_UU',	'LOC_TRAIT_LEADER_UNIT_VLR_ODA_UU_NAME',	'LOC_TRAIT_LEADER_UNIT_VLR_ODA_UU_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_VLR_ODA',					'TRAIT_LEADER_VLR_ODA_UA'),
		('LEADER_VLR_ODA',					'TRAIT_LEADER_UNIT_VLR_ODA_UU');

-----------------------------------------------			
-- TraitModifiers		
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_VLR_ODA_UA',			'VLR_ODA_UA_KABUKIWALLS_'||BuildingType
FROM Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
--  Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,											OwnerRequirementSetId,		SubjectRequirementSetId)
SELECT	'VLR_ODA_UA_KABUKIWALLS_'||BuildingType,	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	NULL,						NULL
FROM Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT	'VLR_ODA_UA_KABUKIWALLS_'||BuildingType,	'BuildingType',		BuildingType
FROM Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT	'VLR_ODA_UA_KABUKIWALLS_'||BuildingType,	'YieldType',		'YIELD_CULTURE'
FROM Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');

INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
SELECT	'VLR_ODA_UA_KABUKIWALLS_'||BuildingType,	'Amount',			1
FROM Buildings WHERE BuildingType IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT');