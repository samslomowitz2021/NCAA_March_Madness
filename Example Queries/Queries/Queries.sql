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


select te.team_id, te.team, pl.firstname,  pl.lastname,  pl.ppg
from player pl
join team te on te.team_id = pl.team_id
where te.team_id < 10
Order by te.team desc, pl.ppg desc
limit 10;

Select tv.round, tv. dates, tv.team_id_1, tv.team_id_2, tv.time_et, tv.tv_network
from tvschedule tv
where dates Like 'Friday%' and time_et between '18:00:00' and '20:00:00'
order by tv.team_id_1 asc, tv.team_id_2 desc;

Select pl.team_id, pl.player, pl.spg, pl.rpg, pl.ppg
from player pl
Order by spg desc, rpg asc, team_id asc, lastname asc
limit 10;