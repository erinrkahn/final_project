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
<br>In addition to the machine learning models, our database can be stored in MongoDB for easy access. The applicable Pymongo library may also be used to integrate our database into our models.   

**Dashboard Analysis**
<br>Visualization tools such as Tableau will be of great use for our analysis. The ability to visualize the data in a geographic format with many variables at play will be extremely useful. 



## GitHub

#### Communication Protocols

1) Slack group chat will be used to share resources, ask questions and coordinate progress on deliverables.
2) The 7-9 pm PST workblock will be used for group working sessions
3) Main branch merge and weekly submissions will be coordinated by repository team member aligned with team established deadline.

## Machine Learning Model

### Purpose:
![Machine_Learning_Model](https://github.com/erinrkahn/final_project/blob/miabroad/Images/Updated_Machine_Learning_Model.png)
The purpose of this analysis is to analyze which factors from previous California (CA) wildfires made that wildfire into either a major wildfire or not. To perform this analysis, we will use the following features (X) taken from the provisional database that we created and input them into a supervised machine learning model to predict whether a wildfire was a major wildfire or not (y):
#### Environmental Factors
- Precipitation (in) in County
- Average vapor pressure (mBars) in County
- Maximum air temperature (F) in County
- Maximum relative humidity (%) in County
- Average wind speed (mph) in County
- Average soil temperature (F) in County
#### Region
- The County in which wildfires started and occurred
- The proximity of that County to the ocean
#### Demographics
- Population of County
- Median income of County
- Median house value of County
#### Electricity
- Electricity consumption per County
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

Additionally, inputting Counties where previous wildfires have started and occurred will help predict whether the wildfire was major or not. Also, inputting the proximity of these Counties to the ocean will aid in this prediction as wildfires are typically inland.

Demographics of a region may also help in predicting wildfire outcomes such as the population of a County, median income of a County, and the median house value of a County.

Another interesting factor that may aid in predicting major wildfire risk is the electricity consumption per County.

Likewise, the amount of resources used to stop the fire such as the number of air tankers deployed and number of water tenders utilized will help predict whether the wildfire became a major wildfire or not.

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

- **Note**
  - Although we have a preliminary model up and running, there is still a lot of testing to be done to fine-tune the model as it is currently over-fitted.
    - A primary objective this week of the project is to figure out how to solve this issue. 

## Database

Below is an ERD that shows the provisional database that will turn into our final database. There are six databases featured in the ERD. Five of these represent cleaned-up versions of our Kaggle Datasets. Important to note, most of the datasets do not feature the data that will be our primary key: County. Part of our initial data clean-up process will be to convert the latitude and longitude data provided in each data source into a corresponding County. All other information will be pulled from the data sources from Kaggle and cleaned accordingly. For example, in the "CA Region by Zip" table, once we have determined the County from the latitude and longitude, we will group the "Ocean Proximity" labels by the Counties associated with it.

The "Major Fire Risk by ZIP Code" database will be the data we receive from our machine learning model. The model would predict whether a wildfire was at risk of becoming a major wildfire incident or not and group the results by the ZIP code it predicted. This prediction will give us more insight on which areas of the state would benefit from close monitoring and additional/modified resources to avoid a wildfire from becoming a major incident.

![Schema_Draft](Images/schema_draft.png)

## Dashboard

Dashboard Storyboard - [LINK](https://docs.google.com/presentation/d/1ZyAf5inS5cdrgjLXJzkdfpqEq0bM7Uo2M7a02_pBoic/edit#slide=id.ge0f4930212_0_52)

Description of the tool(s) that will be used to create the final dashboard
- Tableau will be used to create our dashboard

Description of interactive element(s)
- Map (counties, fires (location & acres burned), housing, electricity consumption)

