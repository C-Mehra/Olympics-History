# Project Title

Historical Analysis and Visualization of Olympic Games data : A comprehensive Exploration Over 120 Years using MySQl and Power BI
# Olympic Data


## Problem Statement

Despite the wealth of historical data available from over a century of Olympic Games, the absence of a comprehensive analytical framework hampers our ability to derive nuanced insights into the evolution of this global sporting event. The challenge lies in organizing, analyzing, and visualizing vast datasets from various Olympic editions efficiently. Current methodologies often lack a unified approach, hindering the extraction of meaningful trends, patterns, and historical context. Addressing these challenges is crucial to gaining a deeper understanding of the Olympic Games' historical trajectory, recognizing influential factors, and providing valuable insights for sports enthusiasts, historians, and data analysts alike. This project aims to bridge this gap by employing MySQL for robust data analysis and Power BI for compelling visualizations, offering a solution to the need for a comprehensive exploration of the rich history of the Olympic Games.

The proposed project seeks to design and implement a BI solution utilizing Microsoft PowerBI and SQL. The key objectives are to:

1. Establish a seamless integration of sales data from the MySQL database into PowerBI.
2. Employ data cleaning and transformation processes to ensure the data is prepared for in-depth analysis.
3. Develop interactive dashboards and reports within PowerBI to facilitate national and Internation organizations with interactive Visualizations to better understand various hidden patterns and aid them in decision making regarding sports to focus on, venue selections, etc.
4. Utilize SQL for advanced analytics, extracting insights that can potentially enhance the Organizations's efficiency in training their athletes and focus on particular events more than others.
5. Enable real-time access to dashboards and reports, empowering the management to make informed, data-driven decisions.


### Steps followed to transform and manipulate data

1. *Extract and load Data from source:*
I used MySQL's LOAD DATA INFILE command to effortlessly upload a CSV file into the server, seamlessly integrating external data for analysis.

2. *Transform Uploaded data:*
I refined the uploaded data by manipulating various data points, applying transformations like filtering, joins, CTEs, Sub-Queries and aggregations for a more meaningful analysis.

3. *Operations performed:*
a) How many olympic games have been held?
![Summer Olympics](https://github.com/C-Mehra/Olympics-History/assets/151509146/9e5441ad-b99f-4c75-a52a-6151ee1e09a1)

![Winter Olympics](https://github.com/C-Mehra/Olympics-History/assets/151509146/8cd58c05-8d6c-43e8-8320-f6fbf2d9919a)

b) List down all Olympic games held so far.
![List of Games](https://github.com/C-Mehra/Olympics-History/assets/151509146/8a619162-3542-4f33-8b1f-9dbfc7d5e80e)

c) Mention the total no of nations who participated in each olympics game?
![No of Nations](https://github.com/C-Mehra/Olympics-History/assets/151509146/a23cc63c-984c-44e5-901f-9056ccd1bece)

d) Which year saw the highest and lowest no of countries participating in olympics?
![Max and Min Participation](https://github.com/C-Mehra/Olympics-History/assets/151509146/2eafc091-6ca1-45c6-a05e-5de1c78a3089)

e) Which nation has participated in all of the olympic games?
![Nation participated in all games](https://github.com/C-Mehra/Olympics-History/assets/151509146/a948818b-4bc1-4640-bdc4-28cc0551999d)

f) Identify the sport which was played in all summer olympics.
![Sports appeared in all games](https://github.com/C-Mehra/Olympics-History/assets/151509146/58abe6b3-f4bc-4561-a385-4f1241cab554)

g) Which Sports were just played only once in the olympics?
![Sports played once](https://github.com/C-Mehra/Olympics-History/assets/151509146/afc96ede-4cd8-4dbb-b125-883d0d1cf1b9)

h) Fetch the total no of sports played in each olympic games.
![Total Sports](https://github.com/C-Mehra/Olympics-History/assets/151509146/9885cb79-5d87-4f2e-ab89-0843806c46e0)

i) Fetch details of the oldest athletes to win a gold medal.
![Oldest Athletes](https://github.com/C-Mehra/Olympics-History/assets/151509146/56d4b7a1-16ba-412e-9c16-5ba7c5730598)

j) Fetch the top 5 athletes who have won the most gold medals.
![Top 5 Athletes](https://github.com/C-Mehra/Olympics-History/assets/151509146/72c1cdba-032b-4511-854e-be061fe95a56)

k) Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).
![Top 5 Athletes](https://github.com/C-Mehra/Olympics-History/assets/151509146/b3d231dc-5327-4e4a-a972-93375d07fd44)

l) Fetch the top 5 most successful countries in olympics. Success is defined by no of medals won.
![Top 5 Countries](https://github.com/C-Mehra/Olympics-History/assets/151509146/98a5da16-be78-4449-b47b-b24e162cddd8)

m) List down total gold, silver and broze medals won by each country.
![Total Medals](https://github.com/C-Mehra/Olympics-History/assets/151509146/b076d3fe-9047-4fc6-81c8-ddc83022aaa1)

n) List down total gold, silver and broze medals won by each country corresponding to each olympic games.
![Medals won by countries in each games](https://github.com/C-Mehra/Olympics-History/assets/151509146/a2a57bb2-af9e-4ec5-9c3d-663f2afd4b22)

### Steps followed to create visualization

1. *Transform Uploaded data:*
I loaded a CSV file in Power BI, utilizing Power Query Editor for efficient data transformations, including cleaning and shaping, to prepare the data for analysis and visualization.

2. *Data Extraction and Cleaning:*
I extracted and cleaned the data using Power Query, employing functions for data extraction and applying necessary cleaning steps to enhance data quality. This ensured a refined dataset for subsequent analysis and visualization within the Power BI platform.


3. *Design Dashboards and Reports:*
In an individual capacity, I curated visualizations within PowerBI, selecting optimal representations for key metrics and trends. Developed interactive dashboards and organized reports to enhance comprehension, delivering a seamless understanding of the analytical insights.


4. *Deployment Strategy:*
For deployment, I orchestrated a methodical rollout, ensuring seamless integration with existing workflows. The strategy included a phased implementation to mitigate any potential disruptions, allowing the team to progressively adapt to the new BI solution.

# Report Snapshot (Power BI DESKTOP)
![Olympics Dashboard](https://github.com/C-Mehra/Olympics-History/assets/151509146/f65ec14e-11a6-40a3-9687-ee6c0cc4228c)

![Findings](https://github.com/C-Mehra/Olympics-History/assets/151509146/7bb15e0b-abcb-4270-af5f-515154cfa974)


# Insights

1. *Geographical winners:* We found out that the most medals won by any country in the history of Olympics is the USA with 5637 medals followed by  Russia, Germany, The UK and France.

2. *Most successful athletes:* Michael Phelps has won the most number of medals as an individual athlete in the history of Olympics with 28 medals in total comprising of 23 Gold medals, 3 Silver medals and 2 Bronze medals respectively.

3. *Most fruitful event:* Most medals are won in Athletic events followed by Gymnastics and Swimming as there are many subcategories under these sports.

4. *Sports played:* Historically, about 66 sports have been played in the Olympic games in total at least once.

5. *Peak Performing age:* Most medals are won by athletes between 20-27 years of age.

6. *Gender vise participation:* Participation of Male athletes has always been more than Female athletes historically.
