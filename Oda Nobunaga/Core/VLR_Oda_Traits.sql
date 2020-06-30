--=============================================
-- Oda / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,								Kind)
 VALUES ('TRAIT_LEADER_VLR_ODA_UA',			'KIND_TRAIT'),
		('TRAIT_LEADER_UNIT_VLR_ODA_UU',	'KIND_TRAIT'),
		('SAILOR_ODA_UNIT_UPGRADE_MODIFIER',	'KIND_MODIFIER');

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
VALUES	('TRAIT_LEADER_VLR_ODA_UA',			'VLR_ODA_UA_POWDERMAGES'),
		('TRAIT_LEADER_VLR_ODA_UA',			'VLR_ODA_UA_CONQUEREDCOINKABUKI');

INSERT INTO DynamicModifiers
		(ModifierType,							CollectionType,				EffectType)
VALUES	('SAILOR_ODA_UNIT_UPGRADE_MODIFIER',	'COLLECTION_PLAYER_UNITS',	'EFFECT_ADJUST_UNIT_UPGRADE_GOODY_HUT');

-----------------------------------------------
--  Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,											OwnerRequirementSetId,				SubjectRequirementSetId)
VALUES	('VLR_ODA_UA_CONQUEREDCOINKABUKI',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	'VLR_ODA_CONQUERED_REQUIREMENT',	'VLR_ODA_HUBTHEATER_REQUIREMENT'),
		('VLR_ODA_UA_POWDERMAGES',			'SAILOR_ODA_UNIT_UPGRADE_MODIFIER',						'VLR_ODA_GUNPOWDER_REQUIREMENT',	'VLR_ODA_SAMURAI_REQUIREMENT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)
VALUES	('VLR_ODA_UA_CONQUEREDCOINKABUKI',	'Amount',		100),
		('VLR_ODA_UA_POWDERMAGES',			'Amount',		1);

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('VLR_ODA_CONQUERED_REQUIREMENT',		'REQUIREMENTSET_TEST_ALL'),
		('VLR_ODA_HUBTHEATER_REQUIREMENT',		'REQUIREMENTSET_TEST_ANY'),
		('VLR_ODA_GUNPOWDER_REQUIREMENT',		'REQUIREMENTSET_TEST_ALL'),
		('VLR_ODA_SAMURAI_REQUIREMENT',			'REQUIREMENTSET_TEST_ALL');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES  ('VLR_ODA_CONQUERED_REQUIREMENT',		'CITY_IS_NOT_ORIGINAL_OWNER_REQUIREMENTS'),
		('VLR_ODA_HUBTHEATER_REQUIREMENT',		'REQUIRES_DISTRICT_IS_THEATER'),
		('VLR_ODA_HUBTHEATER_REQUIREMENT',		'REQUIRES_DISTRICT_IS_COMMERCIAL_HUB'),
		('VLR_ODA_CONQUERED_REQUIREMENT',		'VLR_ODA_REQUIRES_HOME_CONTINENT'),
		('VLR_ODA_GUNPOWDER_REQUIREMENT',		'VLR_ODA_REQUIRES_GUNPOWDER'),
		('VLR_ODA_SAMURAI_REQUIREMENT',			'VLR_ODA_REQUIRES_SAMURAI');

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('VLR_ODA_REQUIRES_HOME_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'),
		('VLR_ODA_REQUIRES_GUNPOWDER',			'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('VLR_ODA_REQUIRES_SAMURAI',			'REQUIREMENT_UNIT_TYPE_MATCHES');

----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,					Value)
VALUES	('VLR_ODA_REQUIRES_GUNPOWDER',			'TechnologyType',		'TECH_GUNPOWDER'),
		('VLR_ODA_REQUIRES_SAMURAI',			'UnitType',				'UNIT_JAPANESE_SAMURAI');