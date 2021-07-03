-- Creating tables for California Fires Final Project
CREATE TABLE fire(
	"Name" VARCHAR,
	"County" VARCHAR,
	"County IDs" INT,
	"Latitude" FLOAT8,
	"Longitude" FLOAT8,
	"Started" VARCHAR,
	"Year" INT,
	"Acres Burned" FLOAT8,
	"Cal Fire Incident" BOOL,
	"Major Incident" BOOL,
	PRIMARY KEY ("Name", "County", "Year", "Started")
);

SELECT * FROM fire;

CREATE TABLE electricity(
	index INT NOT NULL,
	"County" VARCHAR NOT NULL,
	"Year" INT NOT NULL,
	"MWh" FLOAT8 NOT NULL,
	PRIMARY KEY ("County", "Year")
);

SELECT * FROM electricity;

ALTER TABLE electricity 
DROP COLUMN index;

CREATE TABLE housing(
	index INT NOT NULL,
	"County" VARCHAR NOT NULL,
	"Ocean Proximity" VARCHAR NOT NULL,
	"Population" INT NOT NULL,
	"Households" INT NOT NULL,
	"Average Income" INT NOT NULL,
	"Average House Value" INT NOT NULL,
	PRIMARY KEY ("County"),
	UNIQUE("County")
);

SELECT * FROM housing;

ALTER TABLE housing 
DROP COLUMN index;


CREATE TABLE enviornment(
	index INT NOT NULL,
	"County" VARCHAR,
	"Year" INT,
	"ETo (in)" FLOAT8,
	"Precip (in)" FLOAT8,
	"Sol Rad (Ly/day)" FLOAT8,
	"Avg Vap Pres (mBars)" FLOAT8,
	"Max Air Temp (F)" FLOAT8,
	"Min Air Temp (F)" FLOAT8,
	"Avg Air Temp (F)" FLOAT8,
	"Max Rel Hum (%)" FLOAT8,
	"Min Rel Hum (%)" FLOAT8,
	"Avg Rel Hum (%)" FLOAT8,
	"Dew Point (F)" FLOAT8,
	"Avg Wind Speed (mph)" FLOAT8,
	"Avg Soil Temp (F)" FLOAT8,
	PRIMARY KEY ("County", "Year")
);

SELECT * FROM enviornment;

ALTER TABLE enviornment 
DROP COLUMN index;
