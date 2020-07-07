-- OdaColors
-- Author: SeelingCat
--------------------------------------------------------------

--------------------------------------------------------------
--- COLORS
--------------------------------------------------------------

INSERT OR REPLACE INTO Colors 
			(Type,											Color)
VALUES		('COLOR_SC_DARK_WISTERIA',						'131,73,159,255'),
			('COLOR_SC_LIGHT_PINK',							'255,199,214,255'),
			('COLOR_SC_LIGHT_GREY',							'211,211,211,255'),
			('COLOR_SC_DARK_GREEN',							'0,82,0,255');


INSERT OR REPLACE INTO PlayerColors
		(Type,
		Usage,
		PrimaryColor,
		SecondaryColor,
		Alt1PrimaryColor,
		Alt1SecondaryColor,
		Alt2PrimaryColor,
		Alt2SecondaryColor,
		Alt3PrimaryColor,
		Alt3SecondaryColor)
VALUES	('LEADER_VLR_ODA',
		'Unique',
		'COLOR_STANDARD_WHITE_LT',
		'COLOR_STANDARD_RED_MD',
		'COLOR_STANDARD_RED_MD',
		'COLOR_STANDARD_WHITE_LT',
		'COLOR_SC_DARK_WISTERIA',
		'COLOR_SC_LIGHT_PINK',
		'COLOR_SC_LIGHT_GREY',
		'COLOR_SC_DARK_GREEN');