# Final Project - Group 4
A shared repository for our final project

## Presentation

<p align="center">
<img src="https://github.com/erinrkahn/project_one/blob/main/Images/Wildfires.jpg" width="700">
</p>

Presentation slides - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit?usp=sharing)

#### Selected Topic 

We will be analyzing California wildfire risk, specifically what factors contribute to a wildfire being classified as a major fire event. Cal Fire defines a major fire event as an extended-day wildfire that is 10 acres or greater. By utilizing historical California wildfire, housing and environmental conditions datasets, we hope to identify the factors that most commonly increase the risk of a wildfire becoming a major fire event.

### Reason why they selected topic

California has recently had some of the most deadly and destructive fire seasons. With the state entering an extreme drought, the 2021 fire season is expected to be very high risk. With this analysis, main contributing factors will be identified and resources can be allocated to decrease the risk of major wildfire events in California regions. 

### Description of their source of data

All datasets are from Kaggle 

**California Wildfires (2013-2020)**
- The dataset contains the list of wildfires that have occurred in California between 2013-2020. The dataset includes the location of the fire, including county and latitude and longitude. Several values are included for each fire, some of which are acres burned, fuel type and if the fire was considered a major fire event.  

**California Housing Data**
- The California housing data include location, population size of the block, house value and median income.

**California Environmental Conditions Dataset**
- The California Environmental Conditions dataset was pulled from the CIMIS weather stations and includes weather information organized by region. Data includes precipitation, air temperature relative humidity and wind speed. 

**California - Electricity Consumption by County Dataset**
- Historical energy consumption data by county. 

#### Questions they hope to answer with the data

1) What factors contribute to certain California fires becoming a major fire event? 
2) Which factor(s) are main contributors to increasing the risk of a California fire becoming a major fire event?
3) How does proximity to major fire events impact housing prices over time?
4) Is there a relationship between number of fires (or acres burned) and energy consumption? 
5) What weather patterns increase the risk for a major fire event?

#### Description of the data exploration phase of the project

- We began with the California Wildfires (2013-2020) dataset
  - Identify columns of interest 
  - Drop columns 
  - Missing data, Resources columns (personnel units, air-tankers, engines, etc.) inaccurate and inconsistent, cross referencing CalFire website
  - Decision to drop columns with missing data 

- California Housing Dataset
  - dropped columns (Housing_median_age, total_rooms, total_bedrooms)

- California Environmental Conditions Dataset
  - dropped columns (target, region)

- California - Electricity Consumption by County Dataset
  - dropped columns (non-residential, residential)

- Utilize Boxplot to view column outliers 
- Convert data types 
- Duplicate weather condition data for counties not represented by using county data from similar climate zones. 

#### Description of the analysis phase of the project

During the analysis phase, we focused on:
- Creating a Boxplot to identify outliers
- Creating our database tables 
- Our initial approach to our machine learning model

### Technologies Used

**Code and Workbooks**
<br>As we have discussed, a lot of what we'll be doing will be in Python. To hold our code, we will be taking advantage of Jupyter Notebooks for our IDE and Github for our shared repository.

**Initial Data Cleaning**
<br>To thoroughly edit and manipulate the data, the Python Pandas library will be used here. To aid with any data cleaning, other libraries such as Matplotlib and hvplot may be required to gain a better sense on the individual variables being used, to spot outliers and determine significance in some of the data. 

**Binary Classification**
<br>With the likelihood of a major fire event as a binary classifier and our dependent variable, the tools we use should reflect this. Machine learning models such as logistic regression can be deemed useful for our machine learning classification. Predicting the likelihood of a major event or not based on our variables is an important part of answering the question we are trying to solve. For this project, we will use TensorFlow, a Python library, to create a deep learning neural network based on a logistic regression model to determine whether a wildfire is a major wildfire or not.

**Data Storage**
<br>In order to provide the machine learning models with the data needed, our database is stored in pgAdmin using Amazon Web Services for easy shareable access. Additionally, our final database that the machine learning model will pull from an S3 bucket hosted through AWS as well. Thus allowing for streamlined and cloud based access for our database and all necessary datasets.

**Dashboard Analysis**
<br>Visualization tools such as Tableau will be of great use for our analysis. The ability to visualize the data in a geographic format with many variables at play will be extremely useful. 



## GitHub

#### Communication Protocols

1) Slack group chat will be used to share resources, ask questions and coordinate progress on deliverables.
2) The 7-9 pm PST workblock will be used for group working sessions
3) Main branch merge and weekly submissions will be coordinated by repository team member aligned with team established deadline.

## Machine Learning Model

### Purpose:
![Machine_Learning_Model](https://github.com/erinrkahn/project_one/blob/main/Images/Machine%20Learning%20Model%20Overview_Draft_3.png)
The purpose of this analysis is to analyze which factors from previous California (CA) wildfires made that wildfire into either a major wildfire or not. To perform this analysis, we will use the following features (X) taken from the provisional database that we created and input them into a supervised machine learning model to predict whether a wildfire was a major wildfire or not (y):
#### Environmental Factors
- Precipitation (in) in ZIP code
- Average vapor pressure (mBars) in ZIP code
- Maximum air temperature (F) in ZIP code
- Maximum relative humidity (%) in ZIP code
- Average wind speed (mph) in ZIP code
- Average soil temperature (F) in ZIP code
#### Region
- The ZIP codes in which wildfires started and occurred
- The proximity of that ZIP code to the ocean
#### Demographics
- Population of ZIP code
- Median income of ZIP code
- Median house value of ZIP code
#### Electricity
- Electricity consumption per ZIP code
#### Amount of Resources Allocated to Stop Fire
- Number of Air Tankers
- Number of Cal Fire Incidents
- Number of Dozers
- Number of Engines
- Number of Helicopters
- Number of Water Tenders
#### Time
- Year

Historically, high wind speed and dry heat contribute to the ignition and exacerbation of wildfires in CA. Therefore, inputting these environmental factors along with others into our supervised machine learning model will help predict whether a wildfire becomes a major wildfire or not.

Additionally, inputting ZIP codes where previous wildfires have started and occurred will help predict whether the wildfire was major or not. Also, inputting the proximity of these ZIP codes to the ocean will aid in this prediction as wildfires are typically inland.

Demographics of a region may also help in predicting wildfire outcomes such as the population of a ZIP code, median income of a ZIP code, and the median house value of a ZIP code.

Another interesting factor that may aid in predicting major wildfire risk is the electricity consumption per ZIP code.

Likewise, the amount of resources used to stop the fire such as the number of air tankers deployed and number of water tenders utilized will help predict whether the wildfire became a major wildfire or not.

Finally, the year that the wildfire occurred will help in predicting whether the wildfire became a major wildfire incident or not as the factors that contribute to wildfire risk like environmental factors may change over time to increase or decrease the likelihood of major wildfire incidents.

Ultimately, knowing these factors will give insight as to which California (CA) ZIP codes are more at risk of suffering from major wildfires and will guide future decisions in allocating more resources to ZIP codes where the likelihood of major wildfire risk is high.

### Description & Explanation of Model:

- **Which model did you choose and why?**
  - We chose a **supervised machine learning model** based on a **logistic regression model** because we want to predict whether a wildfire was a major wildfire or not.
- **How are you training your model?**
  - We are training our model on a **logistic regression model** because our output, y, is binary: major wildfire **or** not a major wildfire. 75% of our data will be training data, while the other 25% of our data will be testing data.
- **What is the model's accuracy?**
  - To be determined.
- **How does this model work?**
  - This supervised machine learning model will be built as a deep learning neural network because a deep learning neural network will learn and figure out relationships between the various variables. Likewise, it will be able to determine which input features are more significant in determining whether a wildfire becomes a major wildfire or not.

### Code for Machine Learning Model

- **Description of preliminary data preprocessing**

- **Description of preliminary feature engineering and preliminary feature selection, including the decision-making process**

- **Description of how data was split into training and testing sets**

- **Explanation of model choice, including limitations and benefits**

## Database
![pgAdmin](Images/pgAdmin.png)

Through Amazon Web Services we established a shared database for our project using pgAdmin. We created 4 schemas within pgAdmin to get us started. These were the cleaned and processed data for California Fires, Housing, Electricity, and Enviornmental data. After the data was stored in pgAdmin, we merged the data three times. The first one to include the fire and enviornmental data. The next, to merge the electricity data as well. And finally, the all_data_merged data which is all pertinent data from the datasets logged into one. The all_data_merged file is what will be input into the machine learning model. In addition to exporting the all_data_merged data into our repository, we will also be storing it in an S3 bucket -- also hosted by AWS. This will also be the way our machine learning model will access the data. 

Below is an updated ERD which shows the 4 cleaned datasets initially stored in pgAdmin and the final all_data_merged dataset. Located in our repository under pgAdmin Queries are the schema and merge queries done through pgAdmin.

![Schema](Images/schema_draft2.png)

## Dashboard

Dashboard Storyboard - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit#slide=id.ge0f4930212_0_52)

Description of the tool(s) that will be used to create the final dashboard
- Tableau will be used to create our dashboard

Description of interactive element(s)
- Map (counties, fires (location & acres burned), housing, electricity consumption)

