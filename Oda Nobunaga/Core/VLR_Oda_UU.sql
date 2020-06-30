--=============================================
-- LINCA / UU
--=============================================
-----------------------------------------------	
-- Tags
-----------------------------------------------	
INSERT INTO Tags
		(Tag,							Vocabulary)
VALUES	('CLASS_VLR_ODA_UU',			'ABILITY_CLASS');

-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,							Kind)
VALUES	('UNIT_VLR_ODA_UU',				'KIND_UNIT'),
		('ABILITY_VLR_ODA_UU',			'KIND_ABILITY');

-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
		(Type,							Tag)
VALUES	('UNIT_VLR_ODA_UU',				'CLASS_VLR_ODA_UU'),
		('ABILITY_VLR_ODA_UU',			'CLASS_VLR_ODA_UU');

INSERT INTO TypeTags
		(Type,							Tag)
SELECT	'UNIT_VLR_ODA_UU',				Tag
FROM TypeTags WHERE Type = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- Units
-----------------------------------------------
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		StrategicResource,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PrereqTech,
		Maintenance
		)
SELECT	'UNIT_VLR_ODA_UU', -- UnitType
		'LOC_UNIT_VLR_ODA_UU_NAME', -- Name
		'LOC_UNIT_VLR_ODA_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_UNIT_VLR_ODA_UU', -- TraitType
		BaseMoves,
		Cost,
		StrategicResource,
		PurchaseYield,
		AdvisorType,
		Combat,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PrereqTech,
		Maintenance
FROM	Units
WHERE	UnitType = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType)
VALUES	('UNIT_VLR_ODA_UU',		'UNIT_MUSKETMAN');

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
INSERT INTO UnitUpgrades
		(Unit,					UpgradeUnit)
SELECT 	'UNIT_VLR_ODA_UU',		UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
INSERT INTO UnitAiInfos
		(UnitType,				AiType)
SELECT	'UNIT_VLR_ODA_UU',		AiType
FROM UnitAiInfos WHERE UnitType = 'UNIT_MUSKETMAN';

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,							Description,							Inactive)
VALUES	('ABILITY_VLR_ODA_UU',		'LOC_ABILITY_VLR_ODA_UU_NAME',	'LOC_ABILITY_VLR_ODA_UU_DESCRIPTION',	0);

-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,			ModifierId)
VALUES	('ABILITY_VLR_ODA_UU',		'ABILITY_VLR_ODA_UU_MOD');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO	Modifiers
		(ModifierId,				ModifierType,								SubjectRequirementSetId)
VALUES	('ABILITY_VLR_ODA_UU_MOD',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',		'VLR_ODA_ERA_REQUIREMENTS');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO	ModifierArguments
		(ModifierId,				Name,		Value)
VALUES	('ABILITY_VLR_ODA_UU_MOD',	'Amount',	7);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,				Context,	Text)
VALUES	('ABILITY_VLR_ODA_UU_MOD',	'Preview',	'LOC_ABILITY_VLR_ODA_UU_MOD_PREVIEW_TEXT');

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('VLR_ODA_ERA_REQUIREMENTS',		'REQUIREMENTSET_TEST_ANY');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
SELECT	'VLR_ODA_ERA_REQUIREMENTS',			'VLR_ODA_REQUIRES_'||UnitType
FROM Units WHERE (PrereqTech IN (SELECT TechnologyType FROM Technologies WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL'))
OR PrereqCivic IN (SELECT CivicType FROM Civics WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL')))
AND Combat > 0;

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,						RequirementType)
SELECT	'VLR_ODA_REQUIRES_'||UnitType,		'REQUIREMENT_OPPONENT_UNIT_TYPE_MATCHES'
FROM Units WHERE (PrereqTech IN (SELECT TechnologyType FROM Technologies WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL'))
OR PrereqCivic IN (SELECT CivicType FROM Civics WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL')))
AND Combat > 0;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments 
		(RequirementId,						Name,			Value) 
SELECT	'VLR_ODA_REQUIRES_'||UnitType,		'UnitType',		UnitType
FROM Units WHERE (PrereqTech IN (SELECT TechnologyType FROM Technologies WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL'))
OR PrereqCivic IN (SELECT CivicType FROM Civics WHERE EraType IN ('ERA_ANCIENT', 'ERA_CLASSICAL', 'ERA_MEDIEVAL')))
AND Combat > 0;