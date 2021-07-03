# Final Project - Group 4
A shared repository for our final project.

---

## Presentation

<p align="center">
<img src="https://github.com/erinrkahn/project_one/blob/main/Images/Wildfires.jpg" width="700">
</p>

### Presentation slides - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit?usp=sharing)

### Selected Topic: 

We will be analyzing California wildfire risk, specifically what factors contribute to a wildfire being classified as a major fire event. Cal Fire defines a major fire event as an extended-day wildfire that is 10 acres or greater. By utilizing historical California wildfire, housing and environmental conditions datasets, we hope to identify the factors that most commonly increase the risk of a wildfire becoming a major fire event.

### Why We Want to Investigate the Factors that Cause Major Wildfire Incidents:

California has recently had some of the most deadly and destructive fire seasons. With the state entering an extreme drought, the 2021 fire season is expected to be very high risk. With this analysis, main contributing factors will be identified and resources can be allocated to decrease the risk of major wildfire events in California regions. 

### Original Data Source:

We curated the four following data sets from Kaggle for our analysis:

**California Wildfires (2013-2020)**
- The dataset contains the list of wildfires that have occurred in California between 2013-2020. The dataset includes the location of the fire, including county and latitude and longitude. Several values are included for each fire, some of which are acres burned, fuel type and if the fire was considered a major fire event. 

**California Housing Data**
- The California housing data include location, population size of the block, house value and median income.

**California Environmental Conditions Dataset**
- The California Environmental Conditions dataset was pulled from the CIMIS weather stations and includes weather information organized by region. Data includes precipitation, air temperature relative humidity and wind speed. 

**California - Electricity Consumption by County Dataset**
- Historical energy consumption data by county. 

### Questions We Hope to Answer:

1) What factors contribute to certain California fires becoming a major fire event? 
2) Which factor(s) are main contributors to increasing the risk of a California fire becoming a major fire event?
3) How does proximity to major fire events impact housing prices over time?
4) Is there a relationship between number of fires (or acres burned) and energy consumption? 
5) What weather patterns increase the risk for a major fire event?

### Data Exploration Phase:

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

### Data Analysis Phase:

During the analysis phase, we focused on:
- Creating a Boxplot to identify outliers
- Creating our database tables 
- Our initial approach to our machine learning model

---

## Technologies Used

**Code and Workbooks**
<br>As we have discussed, a lot of what we'll be doing will be in Python. To hold our code, we will be taking advantage of Jupyter Notebooks for our IDE and Github for our shared repository.

**Initial Data Cleaning**
<br>To thoroughly edit and manipulate the data, the Python Pandas library will be used here. To aid with any data cleaning, other libraries such as Matplotlib and hvplot may be required to gain a better sense on the individual variables being used, to spot outliers and determine significance in some of the data. 

**Machine Learning Model**
<br>With the likelihood of a major fire event as a binary classifier and our dependent variable, the tools we use should reflect this. Machine learning models such as logistic regression can be deemed useful for our machine learning classification. Predicting the likelihood of a major event or not based on our variables is an important part of answering the question we are trying to solve. For this project, we will use TensorFlow, a Python library, to create a deep learning neural network based on a logistic regression model to determine whether a wildfire is a major wildfire or not.

**Data Storage**
<br>In order to provide the machine learning models with the data needed, our database is stored in pgAdmin using Amazon Web Services for easy shareable access. Additionally, our final database that the machine learning model will pull from an S3 bucket hosted through AWS as well. Thus allowing for streamlined and cloud based access for our database and all necessary datasets.

**Dashboard Analysis**
<br>Visualization tools such as Tableau will be of great use for our analysis. The ability to visualize the data in a geographic format with many variables at play will be extremely useful. 

---

## GitHub

### Communication Protocols:

1) Slack group chat will be used to share resources, ask questions and coordinate progress on deliverables.
2) The 7-9 pm PST workblock will be used for group working sessions
3) Main branch merge and weekly submissions will be coordinated by repository team member aligned with team established deadline.

---

## Machine Learning Model

### Link: https://colab.research.google.com/drive/1fDJt_U9evtU20pq53nccp1hQQdgFUkpN?usp=sharing

### Purpose:
![Machine_Learning_Model](https://github.com/erinrkahn/final_project/blob/miabroad/Images/Updated_Machine_Learning_Model.png)
The purpose of this analysis is to analyze which factors from previous California (CA) wildfires made that wildfire into either a major wildfire or not. To perform this analysis, we will use the following features (X) taken from the provisional database that we created and input them into a supervised machine learning model to predict whether a wildfire was a major wildfire or not (y):
#### Environmental Factors
- ETo (in) in County
- Precip (in) in County
- Sol Rad (Ly/day) in County
- Avg Vap Pres (mBars) in County
- Max Air Temp (F) in County
- Min Air Temp (F) in County
- Avg Air Temp (F) in County
- Max Rel Hum (%) in County
- Min Rel Hum (%) in County
- Avg Rel Hum (%) in County
- Dew Point (F) in County
- Avg Wind Speed (mph) in County
- Avg Soil Temp (F) in County
#### Region
- The County in which wildfires occurred
- The proximity of that County to the ocean
#### Demographics
- Population of County
- Average income of County
- Average house value of County
#### Characteristics of Wildfire
- Latitude and longitude coordinates where fire started
- Number of acres fire burned
- Cal Fire Incident, meaning did Cal Fire get involved in handling the fire or not
#### Electricity
- Electricity consumption measured in MWh per County
#### Time
- Year

Historically, high wind speed and dry heat contribute to the ignition and exacerbation of wildfires in CA. Therefore, inputting these environmental factors along with others into our supervised machine learning model will help predict whether a wildfire becomes a major wildfire or not.

Additionally, inputting Counties where previous wildfires have started and occurred will help predict whether the wildfire was major or not. Also, inputting the proximity of these Counties to the ocean will aid in this prediction as wildfires are typically inland.

Demographics of a region may also help in predicting wildfire outcomes such as the population of a County, median income of a County, and the median house value of a County.

Likewise, characteristics of the wildfire itself like the number of acres the fire burned and coordinates of where it started may help determine the possibility of a wildfire becoming a major incident or not.

Another interesting factor that may aid in predicting major wildfire risk is the electricity consumption per County.

Finally, the year that the wildfire occurred will help in predicting whether the wildfire became a major wildfire incident or not as the factors that contribute to wildfire risk like environmental factors may change over time to increase or decrease the likelihood of major wildfire incidents.

Ultimately, knowing these factors will give insight as to which California (CA) Counties are more at risk of suffering from major wildfires and will guide future decisions in allocating more resources to Counties where the likelihood of major wildfire risk is high.

### Description & Explanation of Model:

- **Which model did you choose and why?**
  - We chose a **supervised machine learning model** based on a **logistic regression model** because we want to predict whether a wildfire was a major wildfire or not.
- **How are you training your model?**
  - We are training our model on a **logistic regression model** because our output, Y, is binary: major wildfire **or** not a major wildfire. 75% of our data will be training data, while the other 25% of our data will be testing data.
- **What is the model's accuracy?**
  - To be determined.
- **How does this model work?**
  - This supervised machine learning model will be built as a deep learning neural network because a deep learning neural network will learn and figure out relationships between the various variables. Likewise, it will be able to determine which input features are more significant in determining whether a wildfire becomes a major wildfire or not.

### Code for Machine Learning Model:

- **The Preliminary Data Preprocessing**
  - In order to perform the machine learning model, we needed to preprocess all four datasets and merge them together by County and Year.
  - For all four data sets:
    - Unnecessary columns were dropped.
    - Data types were changed accordingly if the column data did not match the data type.
    - Columns were renamed and reordered for organization purposes.
    - The column "County" was made to be the same for all four data sets which included dropping any data pertaining to Imperial and San Francisco counties since the wildfire data set showed that no fires occurred in those counties from 2013-2019.
    - Duplicate data was dropped so that the model would not be overfitted.
    - Categorical data was encoded using OneHotEncoder since the neural network can only take in and interpret numerical values.

- **Preliminary Feature Engineering and Preliminary Feature Selection**
  - For the model, we decided upon a model based on a deep learning neural network due to the diversity of the input data.
  - Since the inputs of the model range from average housing prices to average soil temperature (F), we believed a neural network would be able to figure out and parse through the complexity of the relationships of these variables better than a simple logistic regression model or decision tree.
  - The **X** variable of our model is all of the data except for the hot encoded **Major Incident** column, and the **y** variable was the **Major Incident** column from the wildfire data set.
 
- **Splitting into Training and Testing Sets**
  -  For the model, we decided to use a traditional split of inputting **75%** of the data into the training set and **25%** of the data into the testing set.
  -  This split was also possible due to the fact that the compiled, merged data set is very large, and thus there would be plenty of data to be tested on for a 25% split.

- **Model Choice**
  - As previously mentioned, we decided upon using a deep learning neural network because it would be able to parse out complex relationships between seemingly disparate variables that a simpler logistic regression model may not be able to perform.
  - However, the greatest limitation and caveat of a neural network model is that it processes these relationships in a black box, so we have no idea about how it's relating these variables to one another let alone the reasoning behind which input features the model prioritizes as the most significant input features for determining the best accuracy.

### Refining the Machine Learning Model:

- **Explanation of changes in model choice (if changed)**


- **Description of how the model has been trained thus far**


- **Description of current accuracy score**


---

## Database
![pgAdmin](Images/pgAdmin.png)

Through Amazon Web Services we established a shared database for our project using pgAdmin. We created 4 schemas within pgAdmin to get us started. These were the cleaned and processed data for California Fires, Housing, Electricity, and Enviornmental data. After the data was stored in pgAdmin, we merged the data three times. The first one to include the fire and enviornmental data. The next, to merge the electricity data as well. And finally, the all_data_merged data which is all pertinent data from the datasets logged into one. The all_data_merged file is what will be input into the machine learning model. In addition to exporting the all_data_merged data into our repository, we will also be storing it in an S3 bucket -- also hosted by AWS. This will also be the way our machine learning model will access the data. 

Below is an updated ERD which shows the 4 cleaned datasets initially stored in pgAdmin and the final all_data_merged dataset. Located in our repository under pgAdmin Queries are the schema and merge queries done through pgAdmin.

![Schema](Images/schema_draft2.png)

---

## Dashboard

Dashboard Storyboard - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit#slide=id.ge0f4930212_0_52)

Description of the tool(s) that will be used to create the final dashboard
- Tableau will be used to create our dashboard. We have chosen to use Tableau as our visualization tool. Tableau creates complex visualizations that are also easy to understand for a variety of audiences. 

Description of interactive element(s)
- **Map**
  - Filter Fires (major event or not)
- **Line Plot**
  - Filter for counties
  - Electricity consumption, median house price, population
- **10 Largest Fires**
  - Location of fires
  - Filter by year
- **Electricity vs Housing**
  - Scale by wind data

### Tableau Story

#### General Info and Trends of California Wildfires Over Time
> UPDATE WITH IMAGE & Link

#### Wildfires and Environmental Factors
> Acres Burned and Environmental Conditions by Year [LINK to Dashbaord] (https://public.tableau.com/app/profile/amir.shirazi/viz/EnvGraphDash/EnvGraphDash)


> Maps of Environmental Factors by County [LINK to Dashbaord] (https://public.tableau.com/app/profile/amir.shirazi/viz/EnvMapDash/MapDash)


#### Wildfires and Housing/Income Impact
> Acres Burned, Income Levels and Home Values [LINK to Dashbaord] (https://public.tableau.com/app/profile/drew.piispanen/viz/HousingFireDataDashboard/Dashboard1)


#### Wildfires and Electrical Consumption Impact
> Acres Burned, Energy Consumption and Population [LINK to Dashbaord] (https://public.tableau.com/app/profile/erin.kahn/viz/Fire_Project/EnergyConsumptionDashboard)


#### Data (images or report) from the machine learning task
> UPDATE WITH IMAGE 
