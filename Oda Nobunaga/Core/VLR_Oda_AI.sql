
--- AI
--- AiListTypes
INSERT INTO AiListTypes	
		(ListType)
VALUES	('VLR_Oda_Buildings'),
		('VLR_Oda_Civics'),
		('VLR_Oda_Districts'),
		('VLR_Oda_Techs'),
		('VLR_Oda_Units'),
		('VLR_Oda_PseudoYields');

--- AiLists
INSERT INTO AiLists	
		(ListType,					LeaderType,					System)
VALUES	('VLR_Oda_Buildings',		'TRAIT_LEADER_VLR_ODA_UA',	'Buildings'),
		('VLR_Oda_Civics',			'TRAIT_LEADER_VLR_ODA_UA',	'Civics'),
		('VLR_Oda_Districts',		'TRAIT_LEADER_VLR_ODA_UA',	'Districts'),
		('VLR_Oda_Techs',			'TRAIT_LEADER_VLR_ODA_UA',	'Technologies'),
		('VLR_Oda_Units',			'TRAIT_LEADER_VLR_ODA_UA',	'Units'),
		('VLR_Oda_PseudoYields',	'TRAIT_LEADER_VLR_ODA_UA',	'PseudoYields');
	
--- AiFavoredItems
INSERT INTO AiFavoredItems	
		(ListType,					Favored,	Value,		Item)
VALUES	('VLR_Oda_Buildings',		1,			1,			'BUILDING_WALLS'), 
		('VLR_Oda_Buildings',		1,			1,			'BUILDING_CASTLE'),
		('VLR_Oda_Buildings',		1,			1,			'BUILDING_STAR_FORT'), 
		('VLR_Oda_Buildings',		1,			1,			'BUILDING_ELECTRONICS_FACTORY'), 
		('VLR_Oda_Civics',			1,			0,			'CIVIC_NATIONALISM'),
		('VLR_Oda_Civics',			1,			0,			'CIVIC_MOBILIZATION'),
		('VLR_Oda_Civics',			1,			0,			'CIVIC_GUILDS'),
		('VLR_Oda_Districts',		1,			0,			'DISTRICT_THEATER'), 
		('VLR_Oda_Districts',		1,			0,			'DISTRICT_ENCAMPMENT'), 
		('VLR_Oda_Districts',		1,			0,			'DISTRICT_COMMERCIAL_HUB'), 
		('VLR_Oda_Techs',			1,			0,			'TECH_GUNPOWDER'),
		('VLR_Oda_Techs',			1,			0,			'TECH_MILITARY_TACTICS'),
		('VLR_Oda_Units',			1,			0,			'UNIT_JAPANESE_SAMURAI'),
		('VLR_Oda_Units',			1,			0,			'CLASS_VLR_ODA_UU');

-- Favored Religions
INSERT INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_VLR_ODA',			'RELIGION_SHINTO');
