# Crime-Analysis-and-Prediction
This repository documents an end-to-end data science project, taking raw Cleveland crime data from a CSV file to a fully functional predictive model.

The core of this project was to build a complete data pipeline: ingesting data into a MySQL database, visualizing it with Power BI, and then training a multilabel machine learning model in a Jupyter Notebook to predict crime types based on their location.

🚀 Project Workflow
This project was built in three main stages, connecting a database, a business intelligence tool, and a machine learning notebook.
1. The Database: MySQL
It all started with the data. I downloaded the raw Cleveland crime dataset from the official UK government site (data.gov.uk). Instead of just loading the CSV into a notebook, I built a more robust solution:
I set up a MySQL server and designed a table schema to hold the crime data.
The raw CSV data was then imported into this SQL table, creating a single, reliable source of truth.

2. The Dashboard: Power BI
With the data structured in MySQL, I could perform powerful business intelligence analysis. I established a live connection from Power BI directly to the MySQL database. I built several interactive dashboards to slice and dice the data, uncovering hotspots, visualizing crime trends over time, and analyzing crime outcomes. This EDA step was crucial for understanding the data before any modeling.

3. The Model: Jupyter & Scikit-learn
This is where the data science comes in. The Crime Analysis and Prediction.ipynb notebook connects to the same MySQL database to pull the data for modeling.
The workflow inside the notebook includes:
Data Cleaning: Handling missing values and formatting data for analysis.
Exploratory Data Analysis (EDA): Using Python libraries like Seaborn and Plotly to create interactive maps and charts that revealed patterns in the data.
Feature Engineering: Selecting the most important features for prediction. The key predictors for this model are Latitude and Longitude.
Multilabel Prediction: Building a machine learning model to predict the specific type of crime that might occur at a given location.

🧠 A Key Challenge: Improving Model Accuracy
During the first model tests, I noticed the accuracy wasn't great. The model was heavily biased toward the most common crime types (like 'Theft') and failed to predict rarer, but important, crimes. This is a classic class imbalance problem.
The Solution: Instead of just accepting the low score, I went back into the notebook and strategically grouped similar, rare crime categories into larger buckets. For example, 'Public nuisance' was merged into the 'Public order' category.
This simple, logical step gave the model more data to learn from for each category. As a result, the model's F1-score and overall fairness improved significantly, making it much more reliable. You can see this entire process in the notebook's value_counts() and replace() sections.

🛠️ Tech Stack
Database: MySQL

Business Intelligence: Power BI

Data Analysis & ML: Python (Pandas, NumPy, Scikit-learn)

Data Visualization: Matplotlib, Seaborn, Plotly

Environment: Jupyter Notebook
