# 🚀 Big Data Revenue Analysis with Spark + R

This project performs scalable exploratory data analysis (EDA) on historical retail transactions using **Apache Spark**, then generates clean, business-ready revenue trend visualizations using **R (ggplot2)**.

---

## 📂 Dataset

- **Source**: Sample retail order dataset (classicmodels-style)
- **Rows**: ~3,000+
- **Columns**:
  - `ORDERDATE`: Date of transaction (MM/DD/YYYY HH:MM)
  - `SALES`: Revenue amount
  - Other fields: `PRODUCTLINE`, `CUSTOMERNAME`, `COUNTRY`, etc.

---

## 🧠 Objective

> Can we uncover monthly sales trends and seasonal patterns from raw transactional data?

---

## 🛠 Tools Used

| Layer         | Stack                                  |
|---------------|----------------------------------------|
| 🚀 Big Data    | Apache Spark (PySpark on Colab)        |
| 📊 Visualization | R, ggplot2                           |
| 🧹 Wrangling   | Spark SQL, `withColumn`, `groupBy`     |
| 🔁 Export      | `coalesce(1).write.csv()` from Spark   |

---

## 🛠 Processing Steps

1. **Loaded large CSV** using PySpark with schema inference
2. **Parsed date field** with `to_timestamp()`, extracted `month` and `year`
3. **Grouped revenue** by `(year, month)` using `groupBy().agg()`
4. **Exported** clean results to CSV for external R analysis
5. **Visualized trends** in `ggplot2` using a time series line chart

---

## 📊 Results & Business Insight

| Insight Type         | Example Finding |
|----------------------|-----------------|
| ✅ Seasonality        | Revenue spikes during Q4 (holiday period) |
| 📉 Dips               | February often lowest-performing month |
| 📈 Use Case           | Highlights inventory & staffing seasonality |

---

## 📈 Final Output

- PySpark: Monthly revenue grouped into a DataFrame
- R: Line chart of monthly revenue over time

