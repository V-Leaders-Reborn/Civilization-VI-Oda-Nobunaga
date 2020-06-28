--=============================================
-- Oda / Defines
--=============================================
-----------------------------------------------
-- Types
-----------------------------------------------	
INSERT INTO Types	
		(Type,				Kind)
VALUES	('LEADER_VLR_ODA',	'KIND_LEADER');

-----------------------------------------------	
-- Leaders
-----------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,		Name,						Sex,		InheritFrom,		SceneLayers)
VALUES	('LEADER_VLR_ODA',	'LOC_LEADER_VLR_ODA_NAME',	'Male',		'LEADER_DEFAULT',	4);	

-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,		LeaderType,			CapitalName)
VALUES	('CIVILIZATION_JAPAN',	'LEADER_VLR_ODA',	'LOC_CITY_NAME_KYOTO');

-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,		Quote)
VALUES	('LEADER_VLR_ODA',	'LOC_PEDIA_LEADERS_PAGE_LEADER_VLR_ODA_QUOTE');	

-----------------------------------------------	
-- LoadingInfo
-----------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,		BackgroundImage, 				ForegroundImage,			PlayDawnOfManAudio)
VALUES	('LEADER_VLR_ODA',	'LEADER_VLR_ODA_BACKGROUND',	'LEADER_VLR_ODA_NEUTRAL',	0);	
