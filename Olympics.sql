-- 1) How many olympics games have been held?

-- -- a) Total number of summer olumpic games
select count(distinct(Year)), season from olympic_history 
where season = 'Summer';

-- --b) Total number of winter olympic games
select count(distinct(year)), season from olympic_history
where season = 'winter';

-- 2)List down all Olympics games held so far.

select distinct(year), season from olympic_history
order by year asc;

-- 3)Mention the total no of nations who participated in each olympics game?

select count(distinct(noc))no_of_nations, year, season from olympic_history
group by year, season
order by year asc;

-- 4)Which year saw the highest and lowest no of countries participating in olympics?

(with nations as
(select count(distinct(noc))no_of_nations, year, season from olympic_history
group by year, season
order by year asc)
select max(no_of_nations) as max_nations, year
from nations
group by year
order by max_nations desc
limit 1
)
union
(with nations as
(select count(distinct(noc))no_of_nations, year, season from olympic_history
group by year, season
order by year asc)
select min(no_of_nations) as min_nations, year
from nations
group by year
order by min_nations asc
limit 1
);

-- 5)Which nation has participated in all of the olympic games?

with tot_games as (select noc, count(distinct games) as no_games from olympic_history
                  group by noc
                  order by no_games desc)
select nr.region, no_games from tot_games tg
join noc_regions nr on tg.noc=nr.noc
group by region, no_games
having no_games = (select count(distinct games) from olympic_history);

-- 6) Identify the sport which was played in all summer olympics.

  with t1 as
          	(select count(distinct games) as total_games
          	from olympic_history where season = 'Summer'),
          t2 as
          	(select distinct games, sport
          	from olympic_history where season = 'Summer'),
          t3 as
          	(select sport, count(1) as no_of_games
          	from t2
          	group by sport)
      select *
      from t3
      join t1 on t1.total_games = t3.no_of_games;
      
-- 7) Which Sports were just played only once in the olympics.

with t1 as
      (select  distinct games, sport from olympic_history),
       t2 as
            (select sport, count(sport) as num_games from t1
            group by sport)
		select t2.*, t1.games
        from t2
        join t1 on t2.sport=t1.sport
        where t2.num_games = 1
        order by t1.sport;
       
-- 8) Fetch the total no of sports played in each olympic games.

with t1 as 
          (select distinct games, sport from olympic_history),
	 t2 as
          (select games, count(games) as no_sports from t1
          group by games)
		select * from t2
        order by no_sports desc;
        
-- 9) Fetch oldest athletes to win a gold medal.

with t1 as
          (select * from olympic_history where medal = 'Gold')
	select * from t1 
    order by age desc
    limit 2;
    
-- 10) Find the Ratio of male and female athletes participated in all olympic games.

  with t1 as
        	(select sex, count(1) as cnt
        	from olympics_history
        	group by sex),
        t2 as
        	(select *, row_number() over(order by cnt) as rn
        	 from t1),
        min_cnt as
        	(select cnt from t2	where rn = 1),
        max_cnt as
        	(select cnt from t2	where rn = 2)
    select concat('1 : ', round(max_cnt.cnt::decimal/min_cnt.cnt, 2)) as ratio
    from min_cnt, max_cnt;

-- 11) Fetch the top 5 athletes who have won the most gold medals.

with gold as
    (select * from olympic_history where medal = 'Gold')
 select distinct name, count(name) as golds_won, team from gold 
 group by name,team
 order by golds_won desc
 limit 5;
 
-- 12) Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).

select name, count(name) as medals_won, team from olympic_history where medal != 'NA'
group by name, team
order by medals_won desc
limit 5

-- 13) Fetch the top 5 most successful countries in olympics. Success is defined by no of medals won.

with t1 as
       (select nr.region, count(region)  as medals_won from olympic_history oh
		join noc_regions nr on
        oh.noc = nr.noc where medal != 'NA'
        group by region
        order by medals_won desc
        limit 5),
	t2 as 
       (select *, dense_rank () over (order by medals_won desc) as rnk from t1)
select * from t2 where rnk <=5;



 

 