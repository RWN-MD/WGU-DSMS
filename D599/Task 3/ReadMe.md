# TCN1 Task 3: Market Basket Analysis

## Overview

This repository contains the implementation of **TCN1 — Task 3: Market Basket Analysis**, part of the WGU course *Data Preparation and Exploration (D599)*. The objective of this task is to analyze transactional retail data using association rule mining to identify patterns in customer purchases, with the goal of informing marketing strategies and product placement.

---

## 📁 Repository Contents

- `data/Megastore_Dataset_Task_3.csv` - Original transactional dataset
- `scripts/market_basket_analysis.py` - Python script with data preparation and Apriori algorithm
- `output/association_rules.csv` - Full list of generated rules with support, confidence, and lift
- `output/top_rules_screenshot.png` - Screenshot of the top 3 rules
- `report/market_basket_report.docx` - Written analysis of results, rationale, and recommendations
- `video/demo_panopto_link.txt` - Panopto link demonstrating the code
- `README.md` - This documentation file

---

## 🧾 Task Summary

As a data analyst at Allias Megastore, your role is to explore customer purchase patterns using market basket analysis. You will encode, transform, and transactionalize data, apply the Apriori algorithm, interpret key metrics (support, confidence, lift), and offer data-driven recommendations for enhancing business strategy.

---

## 🧠 Competencies Addressed

- **4159.1.1**: Profiles data using data dictionaries
- **4159.1.2**: Interprets statistics and visualizations
- **4159.1.3**: Wrangles data for format, accuracy, and integrity

---

## ✅ Requirements Implemented

### Part I: Research Question
- Defined a real-world, dataset-relevant market basket question
- Stated a clear, achievable data analysis goal

### Part II: Justification
- Explained rationale and expected outcomes of using market basket analysis
- Provided one realistic transaction example
- Summarized key assumptions of association rule mining

### Part III: Data Preparation and Analysis
- Selected ≥2 ordinal and ≥2 nominal categorical variables
- Encoded variables appropriately (ordinal, label, one-hot)
- Transactionalized data format
- Applied Apriori algorithm to discover association rules
- Calculated and captured support, confidence, and lift
- Interpreted top 3 rules

### Part IV: Results and Implications
- Discussed significance of metrics (support, lift, confidence)
- Explained practical significance of patterns discovered
- Proposed actions based on top rules to support business goals

---

## 🛠 Tools Used

- **Python** (v3.10+)
  - pandas
  - mlxtend
  - matplotlib / seaborn
- **Jupyter Notebook** via Anaconda
- **Microsoft Word** for the final written report
- **Panopto** for screen-recorded demonstration

---

## 📹 Panopto Video

The Panopto video includes a demonstration of the Apriori algorithm implementation and a summary of tools used. Link is saved in `video/demo_panopto_link.txt`.

---

## 📄 Sources

No external sources were used in this implementation beyond the provided dataset and data dictionary.

---

*This project fulfills the requirements of the WGU TCN1 Task 3 as per the official rubric.*
