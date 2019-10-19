drop table primary_key

create table air_quality (
	state_id INT,
	year INT,
	month INT,
	day INT,
	foreign key (state_id) REFERENCES primary_key(state_id),
	city VARCHAR(255),
	stn_code DECIMAL,
	so2 DECIMAL,
	no2 DECIMAL,
	rspm DECIMAL,
	spm DECIMAL)
	
create table primary_key(
	state_id INT primary key,
	state VARCHAR (255))
	
create table victim_age_gender(
	state_id INT,
	state VARCHAR(255),
	year INT,
	foreign key (state_id) REFERENCES primary_key(state_id),
	victim_group VARCHAR(255),
	victim_age_group VARCHAR(255),
	count DECIMAL,
	primary key(year,state_id,victim_group,victim_age_group))
	
---drop table motive
create table motive(
	state_id INT,
	year INT,
	foreign key (state_id) REFERENCES primary_key(state_id),
	cause VARCHAR(255),
	count DECIMAL,
	primary key(year,state_id,cause))
	
	