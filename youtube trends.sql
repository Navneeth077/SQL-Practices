use ytrends;
select * from youtube_trending_videos_data;
DESCRIBE youtube_trending_videos_data;

#1.  Which **channels** have the highest total number of **views**?
SELECT
    channel_title,
    SUM(views) AS total_views  -- 1. Alias the summed column
FROM
    youtube_trending_videos_data
GROUP BY
    channel_title
ORDER BY
    total_views DESC;          -- 2. Order by the new alias
#2.  What are the **top 5 trending videos** based on their **views** across the entire dataset?
SELECT title , sum(views) as total_views
FROM youtube_trending_videos_data
GROUP BY title 
ORDER BY total_views DESC
LIMIT 5;
#3.  How does the average **views** count change depending on the **category\_id**?
 SELECT
    category_id,
    AVG(views) AS average_views
FROM
    youtube_trending_videos_data
GROUP BY
    category_id;
#4.  What is the **average Like-to-Dislike Ratio** (i.e., $\frac{likes}{dislikes}$ or `likes` / `dislikes`) across all videos, and how does this metric vary by **category\_id**?
SELECT
	category_id,
    AVG(CAST(likes AS REAL) / NULLIF(dislikes, 0)) AS average_ratio
FROM
    youtube_trending_videos_data
WHERE
    likes IS NOT NULL AND dislikes IS NOT NULL
GROUP BY
    category_id;
#5.  What is the total number of **videos** that started trending per day across the collected **trending\_date** range?
SELECT 
	trending_date,COUNT(video_id) AS total_number_of_videos
FROM 
	youtube_trending_videos_data
GROUP BY 
	trending_date;