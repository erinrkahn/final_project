# Machine Learning Data

This folder contains all the finalized ML-friendly data.

Specifics about each dataset:
- **all_data_merged.csv**: Files for electricity_ml_model.csv, environment_ml_model.csv, fire_ml_model.csv, and housing_ml_single_county.csv all merged using pgAdmin and PostgreSQL
- **electricity_ml_model.csv**: Same data frame that is in Data for Postgres
- **environment_ml_model.csv**: Same data frame that is in Data for Postgres
- **fire_ml_model.csv**: Same data frame that is in Data for Postgres
- **housing_ml_model.csv**: Same data frame that is in Data for Postgres and contains multiple rows for the same county due to the original dataset from Kaggle (found in Data) providing latitude and longitude as the sole location identifiers.
- **housing_ml_single_county.csv**: Same data frame that is in Data for Postgres and combines the multiple rows of county data from housing_ml_model.csv to one single row per county.

## Amazon Web Services S3 Bucket

https://s3.console.aws.amazon.com/s3/buckets/databootcamp-group4-fires-final-project?region=us-east-2

Contains the all_data_merged.csv file for our machine learning model.