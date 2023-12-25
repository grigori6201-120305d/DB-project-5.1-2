USE reflectance;
/LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\difference spectra.csv'
INTO TABLE differencespectra
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, CMVacuumAmbientDiff, CIVacuumAmbientDiff);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CM and CI vacuum and ambient.csv'
INTO TABLE VacuumAmbientDiff
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, CMAmbient, CMVacuum, CIAmbient, CIVacuum);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CI scaled reflectance.csv'
INTO TABLE ScaledReflectance
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, Fresh, Pulse1, Pulse5)
SET Type = 'CI';
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CM scaled reflectance.csv'
INTO TABLE ScaledReflectance
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, Fresh, Pulse1, Pulse5)
SET Type = 'CM';

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CI parameters.csv'
INTO TABLE Parameters
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(LaserPulses, NormalizedIntensity, Slope, BandDepth)
SET Type = 'CI';
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CM parameters.csv'
INTO TABLE Parameters
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(LaserPulses, NormalizedIntensity, Slope, BandDepth)
SET Type = 'CM';
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CI laser irradiation.csv'
INTO TABLE laserirradiation
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, Fresh, Pulse1, Pulse2, Pulse3, Pulse5)
SET Type = 'CI';
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.1\\Uploads\\CM laser irradiation.csv'
INTO TABLE laserirradiation
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Wavelength, Fresh, Pulse1, Pulse2, Pulse3, Pulse5)
SET Type = 'CM';

