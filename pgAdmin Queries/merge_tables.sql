SELECT
	fire."County",
	fire."Year",
	fire."Name",
	fire."County IDs",
	fire."Latitude",
	fire."Longitude",
	fire."Started",
	fire."Acres Burned",
	fire."Cal Fire Incident",
	fire."Major Incident",
	enviornment."ETo (in)" ,
	enviornment."Precip (in)",
	enviornment."Sol Rad (Ly/day)",
	enviornment."Avg Vap Pres (mBars)",
	enviornment."Max Air Temp (F)",
	enviornment."Min Air Temp (F)",
	enviornment."Avg Air Temp (F)",
	enviornment."Max Rel Hum (%)",
	enviornment."Min Rel Hum (%)",
	enviornment."Avg Rel Hum (%)",
	enviornment."Dew Point (F)",
	enviornment."Avg Wind Speed (mph)",
	enviornment."Avg Soil Temp (F)"
INTO fire_env_merged
FROM fire
INNER JOIN enviornment
	ON fire."County" = enviornment."County"
	WHERE (fire."Year" = enviornment."Year");
	
SELECT
	fire_env_merged."County",
	fire_env_merged."Year",
	fire_env_merged."Name",
	fire_env_merged."County IDs",
	fire_env_merged."Latitude",
	fire_env_merged."Longitude",
	fire_env_merged."Started",
	fire_env_merged."Acres Burned",
	fire_env_merged."Cal Fire Incident",
	fire_env_merged."Major Incident",
	fire_env_merged."ETo (in)" ,
	fire_env_merged."Precip (in)",
	fire_env_merged."Sol Rad (Ly/day)",
	fire_env_merged."Avg Vap Pres (mBars)",
	fire_env_merged."Max Air Temp (F)",
	fire_env_merged."Min Air Temp (F)",
	fire_env_merged."Avg Air Temp (F)",
	fire_env_merged."Max Rel Hum (%)",
	fire_env_merged."Min Rel Hum (%)",
	fire_env_merged."Avg Rel Hum (%)",
	fire_env_merged."Dew Point (F)",
	fire_env_merged."Avg Wind Speed (mph)",
	fire_env_merged."Avg Soil Temp (F)",
	electricity."MWh"
INTO fire_env_elect_merged
FROM fire_env_merged
INNER JOIN electricity
	ON fire_env_merged."County" = electricity."County"
	WHERE (fire_env_merged."Year" = electricity."Year");


SELECT
	fire_env_elect_merged."County",
	fire_env_elect_merged."Year",
	fire_env_elect_merged."Name",
	fire_env_elect_merged."County IDs",
	fire_env_elect_merged."Latitude",
	fire_env_elect_merged."Longitude",
	fire_env_elect_merged."Started",
	fire_env_elect_merged."Acres Burned",
	fire_env_elect_merged."Cal Fire Incident",
	fire_env_elect_merged."Major Incident",
	fire_env_elect_merged."ETo (in)" ,
	fire_env_elect_merged."Precip (in)",
	fire_env_elect_merged."Sol Rad (Ly/day)",
	fire_env_elect_merged."Avg Vap Pres (mBars)",
	fire_env_elect_merged."Max Air Temp (F)",
	fire_env_elect_merged."Min Air Temp (F)",
	fire_env_elect_merged."Avg Air Temp (F)",
	fire_env_elect_merged."Max Rel Hum (%)",
	fire_env_elect_merged."Min Rel Hum (%)",
	fire_env_elect_merged."Avg Rel Hum (%)",
	fire_env_elect_merged."Dew Point (F)",
	fire_env_elect_merged."Avg Wind Speed (mph)",
	fire_env_elect_merged."Avg Soil Temp (F)",
	fire_env_elect_merged."MWh",
	housing."Ocean Proximity",
	housing."Population",
	housing."Households",
	housing."Average Income",
	housing."Average House Value"
INTO all_data_merged
FROM fire_env_elect_merged
INNER JOIN housing
	ON (fire_env_elect_merged."County" = housing."County");