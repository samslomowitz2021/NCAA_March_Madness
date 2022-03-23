select tv.dates, tv. round, tv.team_id_1, t1.team, tv.team_id_2, t2.team, tv.city
from tvschedule tv
Join team t1 on t1.team_id = tv.team_id_1
Join team t2 on t2.team_id = tv.team_id_2
where round ='Second Round'
Order by team_id_1 asc, team_id_2 desc
limit 10; 



select tv.dates, co.firstname, co.lastname, tv.team_id_1, t1.team, tv.team_id_2, t2.team, coaches.firstname, coaches.lastname
from tvschedule tv
Join team t1 on t1.team_id = tv.team_id_1 
Join coaches co on co.coach_id = t1.coach_id
Join team t2 on t2.team_id = tv.team_id_2
Join coaches on coaches.coach_id = t2.coach_id
WHERE round='First Round'
Order by team_id_1 asc, team_id_2 desc
limit 10;


select te.team_id as Team_Rank, te.team as Team, pl.firstname as Player_First_Name,  pl.lastname as  Player_Last_Name,  pl.ppg as PPG, co.firstname as Coach_First_Name, co.lastname as Coach_Last_Name
from player pl
join team te on te.team_id = pl.team_id
join coaches co on co.coach_id = te.coach_id
where te.team_id <= 10
Order by te.team_id asc, pl.ppg desc;


Select tv.round, tv. dates, tv.time_et, tv.tv_network, te.team as Team_1, tea.team as Team_2
from tvschedule tv
join team te on te.team_id = tv.team_id_1
join team tea on tea.team_id = tv.team_id_2
where dates Like 'Friday%' and time_et between '18:00:00' and '20:00:00'
order by tv.team_id_1 asc, tv.team_id_2 desc;

Select  te.team as Team, pl.player, pl.spg, pl.rpg, pl.ppg, pl.team_id
from player pl
join team te on te.team_id = pl.team_id
Order by spg desc, rpg asc, team_id asc, lastname asc
limit 10;