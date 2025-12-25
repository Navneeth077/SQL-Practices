# Youtube_trends_EDA_SQL
Project Overview
This project explores the factors that drive video popularity on YouTube. Using a dataset of trending videos, I performed Exploratory Data Analysis (EDA) to uncover patterns in viewer engagement, category performance, and channel reach.

📜 SQL Features Used
Aggregations: SUM, AVG, and COUNT to summarize massive datasets.

Data Integrity: Used NULLIF to handle division-by-zero errors in ratio calculations.

Type Casting: Utilized CAST(AS REAL) for precise decimal calculations of engagement ratios.

Grouping & Filtering: Advanced GROUP BY and ORDER BY logic to rank performance.

🔍 Key Business Questions Answered
Channel Dominance: Which creators are consistently capturing the most views?

Top Content: Identifying the "Viral 5"—the most viewed videos in the dataset.

Category Insights: How does viewership vary by category ID?

Sentiment Analysis: Calculating the Like-to-Dislike Ratio to measure audience sentiment across different niches.

Trend Velocity: Tracking the volume of new trending videos on a daily basis.

🚀 How to Use
Ensure you have a MySQL environment set up.

Create the database: CREATE DATABASE ytrends;.

Import your trending video dataset into the table youtube_trending_videos_data.

Run the queries provided in youtube trends.sql.
