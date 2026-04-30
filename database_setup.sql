--create the table ipl matches--
create table ipl_matches (
    id int primary key,
    season text,
    city text,
    date date,
    team1 text,
    team2 text,
    toss_winner text,
    winner text,
    venue text
);

--check the how may records are present in the table--
select count(*) from ipl_matches;

--add columns in the table--
alter table ipl_matches
    add column status text,
    add column score text,
    add column last_updated timestamp;

--verify how muchb records--
select count(*) from ipl_matches;

--check the records are clean--
select distinct team1 from ipl_matches;

--which team played most matches--
select team1, count(*)
from ipl_matches
group by team1 
order by count(*) desc;

--which team is strongest team--
select winner, count(*) 
from ipl_matches
group by winner
order by count(*) desc;

--most used stadiums or cities--
select city, count(*)
from ipl_matches
group by city 
order by count(*) desc;

--find out the top winning teams--
select winner, count(*) as wins
from ipl_matches
where winner is not null
group by winner 
order by wins desc
limit 5;

--check the top winning team--
select winner, count(*) as wins 
from ipl_matches
where winner is not null 
group by winner 
order by wins desc
limit 5;

--check the toss is really matters in match winning
select count(*) filter (where toss_winner = winner) as toss_won_and_match_won,
    count(*) filter (where toss_winner != winner) as toss_won_but_lost
from ipl_matches;
--insights- it check that does toss really matters in match winning--

--check the team performance by the stadium that really took impact the performance on team-- 
select city, winner, count(*) as wins
from ipl_matches 
group by city,  winner 
order by wins desc;

--check the hoe many times teams head to head each other and how much time which team won--
select team1, team2, winner, count(*)
from ipl_matches
group by team1, team2, winner 
order by count(*) desc;

--check the win percentage per team--
select team, count(*) as matches, sum(case when team = winner then 1 else 0 end) as wins,
    round(100.o * sum(case when team = winner then 1 else 0 end)/ count(*), 2) as win_percentage
from( select g)

--shows latest updates rows--
select status, last_updated
from ipl_matches
where status = 'LIVE'
order by last_updated desc
limit 10;

--to verify the exact values in the database--
select distinct status 
from ipl_matches;

--check that there is present any live matches or not--
select *
from ipl_matches
where status ilike '%match%'
order by last_updated desc;

--CSK vs MI which team wins the match head to head match--
select winner, count(*) as wins
from ipl_matches
where (team1 = 'Chennai Super Kings' and team2 = 'Mumbai Indians')
	or (team1 = 'Mumbai Indians' and team2 = 'Chennai Super Kings')
group by winner;

--check the most winning team--
select winner, count(*) as total_wins
from ipl_matches
group by winner 
order by total_wins desc;

--check the how much matches per city--
select city, count(*) as matches
from ipl_matches
group by city
order by matches desc;

--check that toss winner team wins the match--
select toss_winner, count(*) as wins
from ipl_matches
where toss_winner = winner
group by toss_winner;

--check the recent matches--
select team1, team2, status, last_updated
from ipl_matches
order by last_updated desc
limit 10;

--see the live matches ongoing--
select * 
from ipl_matches
where status = 'LIVE';

--how much live matches going to live--
select count(*) 
from ipl_matches
where status = 'LIVE';

--split the kaggle vs Live data--
select 
	case
		when status is NULL then 'Historical'
		else 'Live'
	end as type,
	count(*)
from ipl_matches
group by 
	case 
		when status is null then 'Historical'
		else 'Live'
	end
order by type;

--alternate query for kaggle vs live data--
select type, count(*)
from (select 
		case 
			when status is null then 'Historical'
			else 'Live'
		End as type 
	from ipl_matches
) t
group by type
order by type;

--Top Winning teams in ipl--
select winner , count(*) as wins
from ipl_matches 
where winner is not null
group by winner 
order by wins desc 
limit 10;

--check the head to head matches between csk and rcb--
select winner, count(*) as wins
from ipl_matches
where (team1 = 'Chennai Super Kings' and team2 = 'Royal Challengers Bangalore')
	or (team1 = 'Royal Challengers Bangalore' and team2 = 'Chennai Super Kings')
group by winner;

--Toss impact on winning match--
select 
	case
		when toss_winner = winner then 'toss win = match win'
		else 'toss lose = match win'
	end as result,
	count(*)
from ipl_matches
where toss_winner is not null
group by result;

--shows latest updates rows--
select status, last_updated
from ipl_matches
where status = 'LIVE'
order by last_updated desc
limit 10;

--to verify the exact values in the database--
select distinct status 
from ipl_matches;

--check that there is present any live matches or not--
select *
from ipl_matches
where status ilike '%match%'
order by last_updated desc;

--CSK vs MI which team wins the match head to head match--
select winner, count(*) as wins
from ipl_matches
where (team1 = 'Chennai Super Kings' and team2 = 'Mumbai Indians')
	or (team1 = 'Mumbai Indians' and team2 = 'Chennai Super Kings')
group by winner;

--check the most winning team--
select winner, count(*) as total_wins
from ipl_matches
group by winner 
order by total_wins desc;

--check the how much matches per city--
select city, count(*) as matches
from ipl_matches
group by city
order by matches desc;

--check that toss winner team wins the match--
select toss_winner, count(*) as wins
from ipl_matches
where toss_winner = winner
group by toss_winner;

--check the recent matches--
select team1, team2, status, last_updated
from ipl_matches
order by last_updated desc
limit 10;

--see the live matches ongoing--
select * 
from ipl_matches
where status = 'LIVE';

--how much live matches going to live--
select count(*) 
from ipl_matches
where status = 'LIVE';

--split the kaggle vs Live data--
select 
	case
		when status is NULL then 'Historical'
		else 'Live'
	end as type,
	count(*)
from ipl_matches
group by 
	case 
		when status is null then 'Historical'
		else 'Live'
	end
order by type;

--alternate query for kaggle vs live data--
select type, count(*)
from (select 
		case 
			when status is null then 'Historical'
			else 'Live'
		End as type 
	from ipl_matches
) t
group by type
order by type;

--Top Winning teams in ipl--
select winner , count(*) as wins
from ipl_matches 
where winner is not null
group by winner 
order by wins desc 
limit 10;

--check the head to head matches between csk and rcb--
select winner, count(*) as wins
from ipl_matches
where (team1 = 'Chennai Super Kings' and team2 = 'Royal Challengers Bangalore')
	or (team1 = 'Royal Challengers Bangalore' and team2 = 'Chennai Super Kings')
group by winner;

--Toss impact on winning match--
select 
	case
		when toss_winner = winner then 'toss win = match win'
		else 'toss lose = match win'
	end as result,
	count(*)
from ipl_matches
where toss_winner is not null
group by result;

--head to head match reusable query--
select team1, team2, winner, count(*) as wins
from ipl_matches
where (team1 = $1 and team2 = $2)
	or(team1 = $2 and team1 = $1)
group by team1, tem2, winner;









