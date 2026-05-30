# TikTok Creator Analytics Project

## Overview

This project analyzes trends among the Top 100 TikTok creators in 2025 using R programming and data visualization techniques. The goal of this analysis was to explore how follower count, upload frequency, and engagement metrics relate to one another across some of the platform’s largest creators.

The project investigates whether posting more TikToks directly leads to higher follower counts and engagement, while also examining how different creator strategies can still result in success on the platform.

---
## Repository Contents

| File Name                       | Description                                                                                                                     |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `TIKTOKSCRIPT.R`                | Main R script containing data cleaning, filtering, statistical queries, and visualizations used throughout the project.         |
| `Top 100 tiktokers in 2025.csv` | Dataset containing ranking, follower counts, uploads, likes, and following information for the Top 100 TikTok creators in 2025. |
| `TikTok_Analytics_Report.pdf`   | Final written report summarizing findings, interpretations, and visualizations from the TikTok analytics project.               |
| `README.md`                     | Project overview, methodology, tools used, visualizations, key findings, and repository documentation. 
|
---

## Objectives

* Analyze engagement trends among top TikTok creators
* Investigate the relationship between upload frequency and follower count
* Compare posting behavior between top-ranked and lower-ranked influencers
* Practice exploratory data analysis (EDA) using real-world social media data
* Create visualizations to identify trends and patterns

---

## Dataset Information

The dataset contains information on the Top 100 TikTok creators in 2025. The variables included are:

* Rank
* Username
* Followers
* Following
* Uploads
* Total Likes

The dataset was imported into R using CSV files and analyzed through filtering, summary statistics, tables, and visualizations.

---

## Tools & Technologies

* R Programming
* Base R Visualizations
* readr Library
* CSV Data Processing
* Exploratory Data Analysis (EDA)

---

## Key Analyses Performed

### Data Filtering & Queries

Several subset and table queries were used to analyze creator trends, including:

* Influencers with over 10,000 uploads
* Creators with more than 4 billion likes
* Accounts with more than 100 million followers
* Comparison tables for follower and engagement metrics

### Visualizations

The project includes multiple visualizations to better understand TikTok creator behavior:

#### Scatter Plot

A scatter plot comparing Followers vs. Likes was created to observe whether larger audiences consistently lead to higher engagement.

#### Box Plot

A box plot comparing upload counts between the Top 10 and Bottom 10 ranked influencers was used to analyze differences in posting behavior.

#### Bar Plot

A bar plot was created to compare upload distribution among influencers with more than 4 billion likes.

#### Mosaic Plot

A mosaic plot categorized influencers by follower count and upload frequency to examine relationships between audience size and posting behavior.

---

## Key Findings

* High upload frequency does not always guarantee higher follower counts or engagement.
* Some creators achieve massive engagement despite relatively low upload counts due to strong audience loyalty and viral content.
* Institutional or media-based accounts, such as ESPN, rely heavily on high-volume posting strategies to maintain visibility.
* Different content strategies can still lead to success on TikTok depending on audience reach and creator positioning.

---

## Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Data Visualization
* Statistical Interpretation
* Social Media Analytics
* R Programming
* Data Storytelling

---

## Future Improvements

Potential future enhancements for this project include:

* Adding predictive modeling
* Performing correlation and regression analysis
* Expanding the dataset across multiple years
* Creating an interactive dashboard
* Comparing engagement trends across content categories

---

## Conclusion

This project demonstrates that there is no single formula for success on TikTok. While some influencers depend on consistent uploads to maintain audience engagement, others achieve strong performance through highly shareable content and loyal fanbases. The findings highlight the importance of both content strategy and audience interaction in social media growth.

