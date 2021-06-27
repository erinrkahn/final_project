-- Creating tables for California Fires Final Project
CREATE TABLE fire(
	INDEX INT NOT NULL,
	"Name" VARCHAR NOT NULL,
	"Counties" VARCHAR NOT NULL,
	"County IDs" INT NOT NULL,
	"Latitude" FLOAT8 NOT NULL,
	"Longitude" FLOAT8 NOT NULL,
	"Started" VARCHAR NOT NULL,
	"Year" INT NOT NULL,
	"Acres Burned" FLOAT8,
	"Cal Fire Incident" BOOL NOT NULL,
	"Major Incident" BOOL NOT NULL
);

SELECT * FROM fire;

ALTER TABLE fire 
DROP COLUMN index;


CREATE TABLE electricity(
	index INT NOT NULL,
	"County" VARCHAR NOT NULL,
	"Year" INT NOT NULL,
	"MWh" FLOAT8 NOT NULL
);

SELECT * FROM electricity;

ALTER TABLE electricity 
DROP COLUMN index;

CREATE TABLE housing(
	index INT NOT NULL,
	"County" VARCHAR NOT NULL,
	"Latitude" FLOAT8 NOT NULL,
	"Longitude" FLOAT8 NOT NULL,
	"Ocean Proximity" VARCHAR NOT NULL,
	"Population" INT NOT NULL,
	"Households" INT NOT NULL,
	"Average Income" INT NOT NULL,
	"Average House Value" INT NOT NULL
);

SELECT * FROM housing;

ALTER TABLE housing 
DROP COLUMN index;


CREATE TABLE enviornment(
	index INT NOT NULL,
	"County" VARCHAR NOT NULL,
	"Year" INT NOT NULL,
	"ETo (in)" FLOAT8 NOT NULL,
	"Precip (in)" FLOAT8 NOT NULL,
	"Sol Rad (Ly/day)" FLOAT8 NOT NULL,
	"Avg Vap Pres (mBars)" FLOAT8 NOT NULL,
	"Max Air Temp (F)" FLOAT8 NOT NULL,
	"Min Air Temp (F)" FLOAT8 NOT NULL,
	"Avg Air Temp (F)" FLOAT8 NOT NULL,
	"Max Rel Hum (%)" FLOAT8 NOT NULL,
	"Min Rel Hum (%)" FLOAT8 NOT NULL,
	"Avg Rel Hum (%)" FLOAT8 NOT NULL,
	"Dew Point (F)" FLOAT8 NOT NULL,
	"Avg Wind Speed (mph)" FLOAT8 NOT NULL,
	"Avg Soil Temp (F)" FLOAT8 NOT NULL
);

SELECT * FROM enviornment;

ALTER TABLE enviornment 
DROP COLUMN index;
