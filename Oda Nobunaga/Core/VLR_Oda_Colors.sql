-----------------------------------------------
-- Colors
-----------------------------------------------
/*INSERT INTO Colors
        (Type,								 Color)
VALUES  ('COLOR_SAILOR_ILMERIA_PRIMARY',	'62,80,140,255'),
        ('COLOR_SAILOR_ILMERIA_SECONDARY',	'206,83,97,255'),
		('COLOR_SAILOR_ILMERIA_PRIMARY2',	'79,101,177,255'),
        ('COLOR_SAILOR_ILMERIA_SECONDARY2',	'138,173,215,255'),
		('COLOR_SAILOR_ILMERIA_PRIMARY3',	'99,107,132,255'),
        ('COLOR_SAILOR_ILMERIA_SECONDARY3',	'126,178,186,255');*/

-----------------------------------------------
-- PlayerColors
-----------------------------------------------
INSERT INTO PlayerColors (
		Type,
		Usage, 
		PrimaryColor, 
		SecondaryColor, 
		Alt1PrimaryColor, 
		Alt1SecondaryColor, 
		Alt2PrimaryColor, 
		Alt2SecondaryColor, 
		Alt3PrimaryColor, 
		Alt3SecondaryColor)
SELECT	'LEADER_VLR_ODA',
		'Unique',
		PrimaryColor, 
		SecondaryColor, 
		Alt1PrimaryColor, 
		Alt1SecondaryColor, 
		Alt2PrimaryColor, 
		Alt2SecondaryColor, 
		Alt3PrimaryColor, 
		Alt3SecondaryColor
FROM PlayerColors WHERE Type = 'LEADER_HOJO';