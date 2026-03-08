# 🚔 Crime Analysis & Prediction System

![Python](https://img.shields.io/badge/Python-3.9%2B-blue)
![MySQL](https://img.shields.io/badge/Database-MySQL-orange)
![PowerBI](https://img.shields.io/badge/Visualization-PowerBI-yellow)
![ScikitLearn](https://img.shields.io/badge/MachineLearning-Scikit--Learn-green)
![DataScience](https://img.shields.io/badge/Domain-Data%20Science-red)

**Crime Analysis & Prediction** is an end-to-end data science project that transforms raw crime data into actionable insights and predictive intelligence.

The project demonstrates a **complete data pipeline** integrating **MySQL database management, Power BI dashboards, and machine learning models built using Python and Scikit-learn** to analyze crime patterns and predict crime types based on geographic location.

---

<img width="1024" height="1536" alt="Crime Analysis and Prediction Tracker Architecture Diagram" src="https://github.com/user-attachments/assets/cc64850f-210e-415f-b4b4-aca858703ed7" />

# 🌟 Key Features

### 📊 Crime Pattern Analysis

Analyze crime trends using historical crime records including:

- Crime distribution by location  
- Crime frequency patterns  
- Crime outcome analysis  
- Crime trend visualization over time  

---

### 🗄️ Structured Data Pipeline

Instead of analyzing raw CSV files directly, the project implements a **database-driven workflow**:

- Raw crime dataset imported into **MySQL**
- Structured schema design for reliable data storage
- Centralized data source for analysis and modeling

---

### 📈 Interactive Data Visualization

Power BI dashboards provide insights into crime patterns including:

- Crime hotspots by geographic location  
- Crime trends over time  
- Distribution of crime types  
- Outcome analysis  

This **Exploratory Data Analysis (EDA)** stage helps identify meaningful patterns before building predictive models.

---

### 🤖 Machine Learning Prediction

A machine learning model predicts the **type of crime likely to occur at a given location**.

Key predictors include:

- Latitude  
- Longitude  

The model performs **multilabel classification** to estimate crime categories based on geographic features.

---

# 🧱 Project Architecture

```
Crime Dataset (CSV)
↓
MySQL Database (Structured Storage)
↓
Power BI Dashboard (Exploratory Analysis)
↓
Jupyter Notebook (EDA + Feature Engineering)
↓
Scikit-learn Machine Learning Model
↓
Crime Type Prediction
```

---

# 🛠️ Technology Stack

| Technology | Purpose |
|-----------|--------|
| **MySQL** | Structured data storage |
| **Python (Pandas, NumPy)** | Data cleaning & analysis |
| **Scikit-learn** | Machine learning model development |
| **Matplotlib / Seaborn / Plotly** | Data visualization |
| **Power BI** | Business intelligence dashboard |
| **Jupyter Notebook** | Data science experimentation |

---

# 📂 Project Structure


Crime-Analysis-and-Prediction/
│
├── notebooks/
│ └── crime_analysis_prediction.ipynb
│
├── data/
│ └── cleveland_crime_dataset.csv
│
├── database/
│ └── mysql_schema.sql
│
├── dashboard/
│ └── crime_dashboard.pbix
│
├── images/
│ └── crime_hotspot_visualization.png
│
└── README.md


---

# 🚀 Installation & Setup

Follow these steps to reproduce the analysis.

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/prathamehaphale-007/Crime-Analysis-and-Prediction.git
cd Crime-Analysis-and-Prediction
```
2️⃣ Install Dependencies
```
pip install pandas numpy scikit-learn matplotlib seaborn plotly mysql-connector-python
```
3️⃣ Setup MySQL Database

Create a database and import the crime dataset.

Example schema:
```
CREATE TABLE crimes (
id INT PRIMARY KEY,
crime_type VARCHAR(100),
latitude FLOAT,
longitude FLOAT,
crime_outcome VARCHAR(100),
date DATE
);
```
Import the CSV dataset into this table.

4️⃣ Run the Jupyter Notebook

Launch Jupyter:

jupyter notebook

Open:

crime_analysis_prediction.ipynb

Run all cells to reproduce the analysis and model training.

📊 Exploratory Data Analysis

The notebook performs several EDA steps to understand crime patterns.

🔎 Crime Distribution

Crime occurrences are highly concentrated in specific geographic hotspots.

📍 Location-Based Analysis

Latitude and longitude were the most predictive features for crime classification.

📈 Crime Category Distribution

Certain crimes occur significantly more frequently than others, creating class imbalance in the dataset.

🧠 Model Improvement Challenge

During initial experiments, the model showed low predictive accuracy.

Problem

The dataset had class imbalance, where common crimes (such as theft) dominated the dataset while rarer crimes had very few examples.

This caused the model to heavily favor majority classes.

Solution

Similar rare crime categories were grouped into broader categories.

Example:

Public nuisance merged into Public Order

This increased the training data available for each category.

Result

Improved F1-score

Better prediction fairness across crime categories

More reliable model performance

📊 Power BI Dashboard

The Power BI dashboard provides visual exploration of the dataset.

Dashboard Insights

Crime hotspots across geographic locations

Distribution of crime categories

Crime outcome analysis

Temporal crime trends

📌 Key Insights

Geographic location strongly influences crime type prediction.

Crime datasets often suffer from class imbalance.

Data preprocessing significantly improves model reliability.

Combining database storage + BI dashboards + ML modeling creates a powerful data pipeline.

🔮 Future Improvements

Possible enhancements for this project:

Real-time crime data ingestion pipeline

Crime hotspot forecasting using time-series models

Integration with GIS mapping tools

Deep learning models for improved prediction accuracy

Automated data pipeline using Apache Airflow

👨‍💻 Author

Prathmesh Aphale

Data Analytics | Data Engineering | AI & Machine Learning

⭐ Support

If you found this project useful, consider giving the repository a star ⭐.
