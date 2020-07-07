--==========================================================================================================================
-- Oda / Config
--==========================================================================================================================
-----------------------------------------------		
-- Players Expansion
-----------------------------------------------
INSERT INTO Players	(
		Domain,
		CivilizationType,
		Portrait,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	('Players:Expansion1_Players', -- Domain
		'CIVILIZATION_JAPAN', -- CivilizationType
		'LEADER_VLR_ODA_SELECT', -- Portrait
		'LEADER_VLR_ODA_BACKGROUND', -- PortraitBackground
		'LEADER_VLR_ODA', -- LeaderType
		'LOC_LEADER_VLR_ODA_NAME', -- LeaderName
		'ICON_LEADER_VLR_ODA', -- LeaderIcon
		'LOC_TRAIT_LEADER_VLR_ODA_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_VLR_ODA_UA_XP_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_VLR_ODA', -- LeaderAbilityIcon
		'LOC_CIVILIZATION_JAPAN_NAME', -- CivilizationName
		'ICON_CIVILIZATION_JAPAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_NAME', --CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_DESCRIPTION', --CivilizationAbilityDescription
		'ICON_CIVILIZATION_JAPAN'); -- CivilizationAbilityIcon

-----------------------------------------------		
-- PlayerItems Expansion
-----------------------------------------------
INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'UNIT_JAPANESE_SAMURAI',
		'ICON_UNIT_JAPANESE_SAMURAI',
		'LOC_UNIT_JAPANESE_SAMURAI_NAME',
		'LOC_UNIT_JAPANESE_SAMURAI_DESCRIPTION',
		10);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'UNIT_VLR_ODA_UU',
		'ICON_UNIT_VLR_ODA_UU',
		'LOC_UNIT_VLR_ODA_UU_NAME',
		'LOC_UNIT_VLR_ODA_UU_DESCRIPTION',
		20);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion1_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'BUILDING_ELECTRONICS_FACTORY',
		'ICON_BUILDING_ELECTRONICS_FACTORY',
		'LOC_BUILDING_ELECTRONICS_FACTORY_NAME',
		'LOC_BUILDING_ELECTRONICS_FACTORY_DESCRIPTION',
		30);

-----------------------------------------------		
-- Players Expansion2
-----------------------------------------------
INSERT INTO Players	(
		Domain,
		CivilizationType,
		Portrait,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	('Players:Expansion2_Players', -- Domain
		'CIVILIZATION_JAPAN', -- CivilizationType
		'LEADER_VLR_ODA_SELECT', -- Portrait
		'LEADER_VLR_ODA_BACKGROUND', -- PortraitBackground
		'LEADER_VLR_ODA', -- LeaderType
		'LOC_LEADER_VLR_ODA_NAME', -- LeaderName
		'ICON_LEADER_VLR_ODA', -- LeaderIcon
		'LOC_TRAIT_LEADER_VLR_ODA_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_VLR_ODA_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_VLR_ODA', -- LeaderAbilityIcon
		'LOC_CIVILIZATION_JAPAN_NAME', -- CivilizationName
		'ICON_CIVILIZATION_JAPAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_NAME', --CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_ADJACENT_DISTRICTS_DESCRIPTION', --CivilizationAbilityDescription
		'ICON_CIVILIZATION_JAPAN'); -- CivilizationAbilityIcon

-----------------------------------------------		
-- PlayerItems Expansion2
-----------------------------------------------
INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'UNIT_JAPANESE_SAMURAI',
		'ICON_UNIT_JAPANESE_SAMURAI',
		'LOC_UNIT_JAPANESE_SAMURAI_NAME',
		'LOC_UNIT_JAPANESE_SAMURAI_DESCRIPTION',
		10);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'UNIT_VLR_ODA_UU',
		'ICON_UNIT_VLR_ODA_UU',
		'LOC_UNIT_VLR_ODA_UU_NAME',
		'LOC_UNIT_VLR_ODA_UU_DESCRIPTION',
		20);

INSERT INTO PlayerItems	(
		Domain,
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	('Players:Expansion2_Players',
		'CIVILIZATION_JAPAN',
		'LEADER_VLR_ODA',
		'BUILDING_ELECTRONICS_FACTORY',
		'ICON_BUILDING_ELECTRONICS_FACTORY',
		'LOC_BUILDING_ELECTRONICS_FACTORY_NAME',
		'LOC_BUILDING_ELECTRONICS_FACTORY_DESCRIPTION',
		30);