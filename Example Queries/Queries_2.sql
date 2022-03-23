select
te.team as TeamName,
pl.firstname as PlayerFirstname,
pl.lastname as PlayerLastname, 
pl.ppg
from player pl
join team te on te.team_id = pl.team_id
where te.team_id <= 10
Order by te.team_id asc, pl.ppg desc;
		
select
pl.player as names1, 
pl.apg,
team.team
from player pl
join team on team.team_id = pl.team_id
where pl.apg > 7
Order by pl.apg desc;
		
Select  
tv. dates,
tv.time_et, 
tv.tv_network,
case when
	tv.time_et between '19:00:00' and '24:00:00'  then 'Night'
	else 'Day'
End as gametime,
t1.ppg as ppg1,
t2.ppg as ppg2

from tvschedule tv
Join team t1 on t1.team_id = tv.team_id_1
Join team t2 on t2.team_id = tv.team_id_2

where dates Like 'Sat%%'

order by time_et desc;