create database Crime_Analysis_db
use Crime_Analysis_db
create table `cleveland_street_2025_06` (
  `Crime_ID` varchar(1000),
  `Month` varchar(100),
  `Reported_by` varchar(1000),
  `Falls_within` varchar(1000),
  `Longitude` decimal(18,15),
  `Latitude` decimal(18,15),
  `Location` varchar(1000),
  `LSOA_code` varchar(1000),
  `LSOA_name` varchar(1000),
  `Crime_type` varchar(1000),
  `Last_outcome_category` varchar(1500)
);
select * from cleveland_street_2025_06