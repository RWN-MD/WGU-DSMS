# UGN1 Task 3: Principal Component Analysis (PCA)

## Overview

This repository contains the implementation of **UGN1 — Task 3: Principal Component Analysis**, part of the WGU course *Statistical Data Mining (D600)*. The objective of this task is to apply dimensionality reduction via PCA and then use the retained components to perform linear regression, interpret the results, and support real-world organizational decisions.

---

## 📁 Repository Contents

- `data/Housing_Information.csv` - Cleaned dataset for analysis
- `scripts/pca_linear_regression.py` - PCA and regression modeling script
- `output/scree_plot.png` - Scree plot screenshot identifying principal components
- `output/variance_explained.csv` - Variance contributed by each retained component
- `output/principal_components.csv` - Matrix of selected principal components
- `output/descriptive_stats.png` - Descriptive statistics for original continuous variables
- `output/train_test_split/` - CSVs of training and test datasets using selected components
- `output/model_summary.png` - Summary screenshot of regression model performance
- `report/pca_regression_report.docx` - Written report summarizing the full analysis
- `video/demo_panopto_link.txt` - Panopto video link showing implementation and environment
- `README.md` - This documentation file

---

## 🧾 Task Summary

As a data analyst, your task is to use PCA to reduce dimensionality in a dataset, retain meaningful structure, and use the retained components to build a linear regression model. You will evaluate, optimize, and interpret the model's outputs and recommend actionable insights.

---

## 🧠 Competencies Addressed

- **4160.1.2**: Performs dimensionality reduction using Principal Component Analysis

---

## ✅ Requirements Implemented

### Part A: GitLab Setup
- GitLab subgroup and project created
- All commits pushed and labeled by requirement
- GitLab URL and commit history included

### Part B: Research Purpose
- Research question suitable for regression analysis identified
- Defined a reasonable and data-aligned analysis goal

### Part C: PCA Rationale
- Explained how PCA prepares data for regression
- Described one assumption of PCA

### Part D: Data Preparation
- Identified continuous variables relevant to the research question
- Standardized selected continuous variables
- Documented descriptive statistics with screenshots

### Part E: PCA Execution
- Performed PCA and extracted full component matrix
- Identified optimal number of components to retain using scree plot and Kaiser rule
- Provided variance contributions of selected components
- Summarized PCA results

### Part F: Linear Regression Modeling
- Split data into training and test datasets using selected components
- Trained a regression model using training data
- Optimized model (e.g., forward or backward selection)
- Reported R², adjusted R², p-values, F-statistics, and coefficients
- Calculated training MSE and test MSE

### Part G: Summary and Interpretation
- Listed and justified all Python libraries used
- Justified model optimization method
- Verified assumptions used in model creation
- Reported regression equation and interpreted coefficients
- Discussed model metrics (R², MSE comparisons)
- Summarized results, discussed implications, and provided recommended actions

---

## 🛠 Tools Used

- **Python** (v3.10+)
  - pandas
  - numpy
  - scikit-learn
  - matplotlib / seaborn
  - statsmodels
- **Jupyter Notebook** or Anaconda IDE
- **Microsoft Word** for written documentation
- **GitLab** for version control
- **Panopto** for video submission

---

## 📹 Panopto Video

A demonstration video showing the PCA workflow, regression implementation, and environment overview is available at the link stored in `video/demo_panopto_link.txt`.

---

## 📄 Sources

No external sources were used beyond the provided dataset.

---

*This project fulfills the requirements of the WGU UGN1 Task 3 as per the official rubric.*
