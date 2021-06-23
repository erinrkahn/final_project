-- Creating tables for California Fires Final Project
CREATE TABLE fire_incidents(
	county VARCHAR() NOT NULL,
	PRIMARY KEY (county),
	UNIQUE()
);

CREATE TABLE ca_env_factors(
	
    PRIMARY KEY (county)
);

CREATE TABLE ca_ocean_proximity (
	
	FOREIGN KEY () REFERENCES  (),
	PRIMARY KEY (county)
);

CREATE TABLE ca_demographics (

	PRIMARY KEY (county)
);

CREATE TABLE electricity_consumption (
	
	PRIMARY KEY (county)
);

CREATE TABLE major_fire_risk(
	
	PRIMARY KEY (county)
);