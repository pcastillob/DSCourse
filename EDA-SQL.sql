--TASK 1
select unique(launch_site) from spacex;

--TASK 2
select * from spacex  where (launch_site like 'CCA%') limit  5;

--TASK 3
select sum(payload_mass__kg_) from spacex where customer = 'NASA (CRS)';

--TASK 4
select avg(payload_mass__kg_) from spacex where booster_version = 'F9 v1.1';

--TASK 5
select min(date) from spacex where landing__outcome like 'Success%'

--TASK 6
select booster_version from spacex where landing__outcome = 'Success (drone ship)' and (payload_mass__kg_ > 4000 and payload_mass__kg_ <6000);

--TASK 7
select count(mission_outcome) as exito ,(select count(mission_outcome) from spacex where mission_outcome like 'Fail%') as FAIL from spacex where mission_outcome like 'Succ%';

--TASK 8
select booster_version from spacex where payload_mass__kg_ = (select max(payload_mass__kg_) from spacex)

--TASK 9
select booster_version, launch_site from spacex where landing__outcome = 'Failure (drone ship)' and year(spacex.date) = 2015;