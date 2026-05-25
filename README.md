# 🛍️ Retail Customer Segmentation Analysis

## 📌 Project Overview
This project analyzes retail customer behavior using **SQL, Python, Power BI, and Machine Learning concepts** to identify meaningful customer segments based on:

- Annual Income
- Spending Score
- Age
- Profession
- Work Experience
- Family Size

The goal is to generate business insights that help optimize:

- Customer targeting
- Personalized marketing strategies
- Revenue optimization
- Customer retention campaigns

---

## 🎯 Business Objectives

This project aims to answer:

- Who are the highest-value customers?
- Which customer groups spend the most?
- How does income influence spending behavior?
- Which professions contribute most to spending?
- What customer segments should marketing focus on?

---

## 🛠️ Tech Stack

### Data Storage
- PostgreSQL

### Data Processing
- SQL
- Python
- Pandas
- NumPy

### Data Visualization
- Power BI
- Matplotlib
- Seaborn

### Analysis Environment
- Google Colab / Jupyter Notebook

---

## 📂 Project Structure

```bash
Retail Customer Segmentation/
│
├── Data/
│   └── Customers.csv
│
├── SQL/
│   └── query_customers.sql
│
├── EDA/
│   └── Retail_Customer_Segmentation_Colab.ipynb
│
├── Report/
│   └── Retail Customer Segmentation.pbix
│
└── README.md
```

---

## 📊 Dataset Features

| Feature | Description |
|---------|-------------|
| customerid | Unique customer ID |
| gender | Customer gender |
| age | Customer age |
| annual_income | Annual income |
| spending_score | Spending behavior score |
| profession | Customer occupation |
| work_experience | Years of experience |
| family_size | Number of family members |
| income_group | Income classification |
| spending_category | Spending classification |
| customer_segment | Final customer segment |

---

## 🔍 Data Pipeline

### 1. Data Collection
Retail customer dataset imported from CSV.

### 2. Data Cleaning
Performed using SQL and Python:

- Missing value validation
- Type conversion
- Feature engineering
- Segment classification

### 3. Exploratory Data Analysis
Performed in Google Colab:

- Statistical summary
- Distribution analysis
- Correlation analysis
- Behavioral trend analysis

### 4. Dashboard Development
Interactive dashboard built in Power BI.
<img width="1282" height="719" alt="Screenshot 2026-05-25 113613" src="https://github.com/user-attachments/assets/0ed208ee-67bf-4221-bde2-1b9d9cc98e60" />
<img width="1293" height="725" alt="Screenshot 2026-05-25 113642" src="https://github.com/user-attachments/assets/ddde086f-ecad-4b4c-9116-2958a394f515" />
<img width="1287" height="712" alt="Screenshot 2026-05-25 113710" src="https://github.com/user-attachments/assets/60217b19-600d-426a-802f-0b7b92a3207a" />

---

## 📈 Dashboard Pages

## Page 1 — Customer Overview
Provides high-level KPIs:

- Total Customers
- Average Spending Score
- Average Annual Income
- Average Age

Visualizations:
- Gender Distribution
- Customer Segment Distribution
- Income Group Analysis

---

## Page 2 — Spending Behavior Analysis
Analyzes customer spending patterns.

Visualizations:
- Spending by Profession
- Family Size vs Spending
- Age vs Spending
- Spending Category Distribution

---

## Page 3 — Customer Segmentation Strategy
Business-focused segmentation insights.

Visualizations:
- Segment Distribution Treemap
- Income Group by Segment
- Segment vs Average Spending
- Detailed Segment Summary Table

---

## 📌 Key Insights

### High Income - High Spending
Premium customers with strongest revenue contribution.

**Recommended strategy:**
- VIP programs
- Loyalty rewards
- Exclusive offers

---

### High Income - Low Spending
Untapped high-potential segment.

**Recommended strategy:**
- Personalized promotions
- Premium product recommendations

---

### Low Income - High Spending
Highly engaged but budget-sensitive customers.

**Recommended strategy:**
- Discount campaigns
- Seasonal offers

---

### Regular / Medium Segment
Largest customer base.

**Recommended strategy:**
- Retention campaigns
- Cross-selling

---

## 🚀 How to Run

### SQL
Import dataset into PostgreSQL and execute:

```sql
SELECT * FROM customers_clean;
```

---

### Python Analysis
Open notebook:

```bash
EDA/Retail_Customer_Segmentation_Colab.ipynb
```

Run all cells.

---

### Power BI Dashboard
Open:

```bash
Report/Retail Customer Segmentation.pbix
```

Refresh data source if needed.

---

## 📷 Dashboard Preview

Interactive retail analytics dashboard with:

- Dynamic filters
- Segment analysis
- KPI cards
- Customer behavior trends

---

## 📚 Skills Demonstrated

- Data Cleaning
- SQL Querying
- Exploratory Data Analysis
- Business Intelligence
- Dashboard Design
- Customer Segmentation
- Business Insight Generation

---

## 👨‍💻 Author

**LinhVK**  
GitHub: https://github.com/caarotnee
