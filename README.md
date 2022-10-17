# Crowdfunding analysis using ETL:

## Overview of the analysis:
-  Here we use the extract, transform, and load (ETL) process to create data pipelines. A data pipeline moves data from a source to a destination. The ETL process creates a data pipeline that also transforms the data along the way.
- The Crowdfunding analysis follows this steps:
  (1) Create an ETL pipeline that moves raw data to a SQL database.
  (2) Extract data from an external file by using Python and Pandas.
  (3) Clean and transform data by using Python and Pandas.
  (4) Design a database and a table schema by using an entity relationship diagram (ERD).
  (5) Load data into a PostgreSQL database.
  (6) Perform data analysis by using SQL queries.

## Extract the data:
* In the extract phase, we read the data, which often comes from multiple sources such as Excel , CSV.
* Here the [Crowdfunding excel](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/Resources/crowdfunding.xlsx) source file which is used for extracting the data into fout separate CSV files such as campaign, contacts, category and subcategory.

* [Backer info](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/Resources/backer_info.csv) file is used for extracting the clean data of backer information which includes backer id , first name , last name and email. 

## Transform the data:
* In the transform phase, we clean and structure the data into the form that we want.
* After we’ve extracted the data, we might need to transform it in many ways. For example, we might need to filter, format, parse, translate, split, sort, interpolate, pivot, summarize, aggregate, or merge the data to restructure it in a way that provides key relationships across tables.
* Python and Pandas used to explore, document, and perform the data transformation.
* This code would be useful for create a separate category table.

![category_code](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/category_code.png)

* Below image is result of preceding dataframe which was used for load the dsta into the data target.

![category_dataframe](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/category_dataframe.png)

* Same as above we can also create a subcategory table.

![suncategory_code](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/subcategory_code.png)

* Next image is subcategory data frame which was also used for load the data target.

![subcategory_dataframe](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/subcategory_dataframe.png)

* Moving on to the backer_info file, we can notice that a header row that’s labeled "backer_info," and six rows of data.

![backer_previous_dataframe](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/backers_previous_dataframe.png)

* backer data transformed into required format which is shown in below image.

![backer_dataframe](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/backers_dataframe.png)

## Load the data:
* In the load phase, we write the cleaned data to a database for storage.
* After we’ve transformed the data into a consistent structure, we load it into the data target. The data target can be a relational database (like a PostgreSQL database)
* To identifying the primary and the foreign keys in the datasets. we’ll create an entity relationship diagram (ERD) for various datasets.

![ERD_diagram](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/crowdfunding_db_relationships.png)

* Using SQL query , create a table named email contacts which is having remaining goal. Table contains the first name of each contact, the last name, the email address, and the remaining goal amount (as "Remaining Goal Amount") in descending order for each live campaign.

* The table matches the following image:

![email_contacts_remaining_goal_amount](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/email_contacts_remaining_goal_amount.png)

* a SQL query that creates a new table named email_backers_remaining_goal_amount that contains the email addresses of the backers in descending order, the first and the last name of each backer, the cf_id, the company name, the description, the end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal".

* The table matches the following image:

![/email_backers_remaining_goal_amount](https://github.com/miralchangela/Crowdfunding-ETL/blob/main/images/email_backers_remaining_goal_amount.png)

* After that both the table exported as CSV files into the desired path of files.






