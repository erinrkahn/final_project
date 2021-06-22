# Final Project - Group 4
A shared repository for our final project

## Presentation

Presentation slides - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit?usp=sharing)

#### Selected Topic 

We will be analyzing California wildfire risk, specifically what factors contribute to a wildfire being classified as a major fire event. Cal Fire defines a major fire event as an extended-day wildfire that is 10 acres or greater. By utilizing historical California wildfire, housing and environmental conditions datasets, we hope to identify the factors that most commonly increase the risk of a wildfire becoming a major fire event.

#### Reason why they selected topic

California has recently had some of the most deadly and destructive fire seasons. With the state entering an extreme drought, the 2021 fire season is expected to be very high risk. With this analysis, main contributing factors will be identified and resources can be allocated to decrease the risk of major wildfire events in California regions. 

#### Description of their source of data

All datasets are from Kaggle 

**California Wildfires (2013-2020)**
- The dataset contains the list of wildfires that have occurred in California between 2013-2020. The dataset includes the location of the fire, including county and latitude and longitude. Several values are included for each fire, some of which are acres burned, fuel type and if the fire was considered a major fire event.  

**California Housing Data**
- The California housing data include location, population size of the block, house value and median income.

**California Environmental Conditions Dataset**
- The California Environmental Conditions dataset was pulled from the CIMIS weather stations and includes weather information organized by region. Data includes precipitation, air temperature relative humidity and wind speed. 

**California - Electricity Consumption by County Dataset**
- Historical energy cosumption data by county. 

#### Questions they hope to answer with the data

1) What factors contribute to certain California fires becoming a major fire event? 
2) Which factor(s) are main contributors to increasing the risk of a California fire becoming a major fire event?

#### Description of the data exploration phase of the project

- We began with the California Wildfires (2013-2020) dataset
  - Identify columns of interest 
  - Drop columns 
  - Missing data, Resources columns (personnel units, airtankers, enginges, etc.) inaccurate and inconsistent, cross referencing CalFire website
  - Decision to drop columns with missing data 

- California Housing Dataset
  - dropped columns (Housing_median_age, total_rooms, total_bedrooms)

- California Environmental Conditions Dataset
  - dropped columns (target, region)

- California - Electricity Consumtion by County Dataset
  - dropped columns (non-residential, residential)

Boxplot to view column outliers 

#### Description of the analysis phase of the project

Boxplot outliers
database tables
Initial machine learning 

#### Technologies

UPDATE

## GitHub

#### Communication Protocols

1) Slack group chat will be used to share resources, ask questions and coordinate progress on deliverables.
2) The 7-9 pm PST workblock will be used for group working sessions
3) Main branch merge and weekly submissions will be coordinated by repository team member aligned with team established deadline.

#### Individual Branches & Commits (4)

## Machine Learning Model

Provisional Machine Learning Model that stands in for the final machine learning model.
- Takes in data from the provisional database
- Outputs label(s) for input data

#### Description & Explanation

- Which model did you choose and why?
- How are you training your model?
- What is the model's accuracy?
- How does this model work?

## Database

Provisional database that stands in for the final database.
- Sample data that mimics the expected final database structure or schema 
- Draft machine learning model is connected to the provisional database

#### Description & Explanation

- Create a document describing the schema of the database (this can be a markdown document or an ERD).
