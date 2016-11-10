-- -----------------------------------------------------
-- Table division
-- -----------------------------------------------------
INSERT INTO division (div_name,div_conference) VALUES ('NORTH','AFC');
INSERT INTO division (div_name,div_conference) VALUES ('NORTH','NFC');


-- -----------------------------------------------------
-- Table state
-- -----------------------------------------------------
INSERT INTO state (sta_namd) VALUES ('Maryland');
INSERT INTO state (sta_namd) VALUES ('Ohio');
INSERT INTO state (sta_namd) VALUES ('Pennsylvania');
INSERT INTO state (sta_namd) VALUES ('Illinois');
INSERT INTO state (sta_namd) VALUES ('Michigan');
INSERT INTO state (sta_namd) VALUES ('Wisconsin');
INSERT INTO state (sta_namd) VALUES ('Minnesota');
INSERT INTO state (sta_namd) VALUES ('New Jersey');
INSERT INTO state (sta_namd) VALUES ('Delaware');
INSERT INTO state (sta_namd) VALUES ('Florida');
INSERT INTO state (sta_namd) VALUES ('Luisiana');
INSERT INTO state (sta_namd) VALUES ('Mississippi');
INSERT INTO state (sta_namd) VALUES ('Texas');
INSERT INTO state (sta_namd) VALUES ('South Carolina');
INSERT INTO state (sta_namd) VALUES ('Georgia');



-- -----------------------------------------------------
-- Table city
-- -----------------------------------------------------
INSERT INTO city (cit_name,cit_staid) VALUES('Baltimore', (SELECT sta_id from state WHERE sta_namd='Maryland') );
INSERT INTO city (cit_name,cit_staid) VALUES('Cincinatti', (SELECT sta_id from state WHERE sta_namd='Ohio') );
INSERT INTO city (cit_name,cit_staid) VALUES('Cleveland', (SELECT sta_id from state WHERE sta_namd='Ohio') );
INSERT INTO city (cit_name,cit_staid) VALUES('Pittsburgh', (SELECT sta_id from state WHERE sta_namd='Pennsylvania') );
INSERT INTO city (cit_name,cit_staid) VALUES('Chicago', (SELECT sta_id from state WHERE sta_namd='Illinois') );
INSERT INTO city (cit_name,cit_staid) VALUES('Detroit', (SELECT sta_id from state WHERE sta_namd='Michigan') );
INSERT INTO city (cit_name,cit_staid) VALUES('Green Bay', (SELECT sta_id from state WHERE sta_namd='Wisconsin') );
INSERT INTO city (cit_name,cit_staid) VALUES('Minneapolis', (SELECT sta_id from state WHERE sta_namd='Minnesota') );
INSERT INTO city (cit_name,cit_staid) VALUES('Audubon', (SELECT sta_id from state WHERE sta_namd='New Jersey') );
INSERT INTO city (cit_name,cit_staid) VALUES('Fort Lauderdale', (SELECT sta_id from state WHERE sta_namd='Florida') );
INSERT INTO city (cit_name,cit_staid) VALUES('New Orleans', (SELECT sta_id from state WHERE sta_namd='Luisiana') );
INSERT INTO city (cit_name,cit_staid) VALUES('Katy', (SELECT sta_id from state WHERE sta_namd='Texas') );
INSERT INTO city (cit_name,cit_staid) VALUES('Ridgeville', (SELECT sta_id from state WHERE sta_namd='South Carolina') );
INSERT INTO city (cit_name,cit_staid) VALUES('Baton Rouge', (SELECT sta_id from state WHERE sta_namd='Luisiana') );



-- -----------------------------------------------------
-- Table stadium
-- -----------------------------------------------------
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('M&T Bank Stadium','71.008', (SELECT cit_id from city WHERE cit_name='Baltimore'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('Paul Brown Stadium','65.535', (SELECT cit_id from city WHERE cit_name='Cincinatti'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('FirstEnergy Stadium','73.200', (SELECT cit_id from city WHERE cit_name='Cleveland'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('Heinz Field','65.050', (SELECT cit_id from city WHERE cit_name='Pittsburgh'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('Soldier Field','61.500', (SELECT cit_id from city WHERE cit_name='Chicago'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('Ford Field','65.000', (SELECT cit_id from city WHERE cit_name='Detroit'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('Lambeau Field','80.735', (SELECT cit_id from city WHERE cit_name='Green Bay'));
INSERT INTO stadium (std_name,std_capacity,std_citid) VALUES ('U.S. Bank Stadium','66.655', (SELECT cit_id from city WHERE cit_name='Minneapolis'));


-- -----------------------------------------------------
-- Table team
-- -----------------------------------------------------
INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Baltimore Ravens', 'Steve Bisciotti', '1996',
(SELECT std_id from stadium WHERE sta_namd='M&T Bank Stadium') , (SELECT cit_id from city WHERE cit_name='Baltimore'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Cincinnati Bengals', 'Mike Brown', '1968',
(SELECT std_id from stadium WHERE sta_namd='Paul Brown Stadium') , (SELECT cit_id from city WHERE cit_name='Cincinatti'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Cleveland Browns', 'Jimmy Haslam', '1946',
(SELECT std_id from stadium WHERE sta_namd='FirstEnergy Stadium') , (SELECT cit_id from city WHERE cit_name='Cleveland'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Pittsburgh Steelers', 'Rooney family', '1933',
(SELECT std_id from stadium WHERE sta_namd='Heinz Field') , (SELECT cit_id from city WHERE cit_name='Pittsburgh'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Chicago Bears', 'Virginia Halas McCaskey', '1919',
(SELECT std_id from stadium WHERE sta_namd='Soldier Field') , (SELECT cit_id from city WHERE cit_name='Chicago'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Detroit Lions', 'Martha Firestone Ford', '1929',
(SELECT std_id from stadium WHERE sta_namd='Ford Field') , (SELECT cit_id from city WHERE cit_name='Detroit'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Green Bay Packers', 'Green Bay Packers', '1919',
(SELECT std_id from stadium WHERE sta_namd='Lambeau Field') , (SELECT cit_id from city WHERE cit_name='Green Bay'), (SELECT div_id from division WHERE div_name='NORTH'));

INSERT INTO team (tea_name,tea_owner,tea_yearfoundation,tea_stdid,tea_citid,tea_divid) VALUES ('Minnesota Vikings', 'Jordan Howard', '1961',
(SELECT std_id from stadium WHERE sta_namd='U.S. Bank Stadium') , (SELECT cit_id from city WHERE cit_name='Minneapolis'), (SELECT div_id from division WHERE div_name='NORTH'));


-- -----------------------------------------------------
-- Table university
-- -----------------------------------------------------
INSERT INTO university (uni_name,uni_staid) VALUES ('University of Delaware',(SELECT sta_id from state WHERE sta_namd='Delaware') );
INSERT INTO university (uni_name,uni_staid) VALUES ('Towson University', (SELECT sta_id from state WHERE sta_namd='Maryland') );
INSERT INTO university (uni_name,uni_staid) VALUES ('University of Mississippi',(SELECT sta_id from state WHERE sta_namd='Mississippi') );
INSERT INTO university (uni_name,uni_staid) VALUES ('Texas Christian University',(SELECT sta_id from state WHERE sta_namd='Texas') );
INSERT INTO university (uni_name,uni_staid) VALUES ('University of Georgia',(SELECT sta_id from state WHERE sta_namd='Georgia') );
INSERT INTO university (uni_name,uni_staid) VALUES ('Louisiana State University',(SELECT sta_id from state WHERE sta_namd='Luisiana') );



-- -----------------------------------------------------
-- Table player
-- -----------------------------------------------------
INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('Joe Flacco','1/16/1985',(SELECT cit_id from city WHERE cit_name='New Jersey'),
(SELECT uni_id from university WHERE uni_name='University of Delaware'),'QB','6-6 ','245');

INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('Terrance West','1/28/1991',(SELECT cit_id from city WHERE cit_name='Fort Lauderdale'),
(SELECT uni_id from university WHERE uni_name='Towson University'),'RB','5-10','225');

INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('Mike Wallace','8/1/1986 ',(SELECT cit_id from city WHERE cit_name='New Orleans'),
(SELECT uni_id from university WHERE uni_name='University of Mississippi'),'WR','6-0','205');

INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('Andy Dalton','10/29/1987  ',(SELECT cit_id from city WHERE cit_name='Katy'),
(SELECT uni_id from university WHERE uni_name='Texas Christian University'),'QB','6-2','220');

INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('A.J. Green','7/31/1988',(SELECT cit_id from city WHERE cit_name='Ridgeville'),
(SELECT uni_id from university WHERE uni_name='University of Georgia'),'WR','6-4','210');

INSERT INTO player (pla_name,pla_dob,pla_citid,pla_uniid,pla_position,pla_height,pla_weight) VALUES ('Jeremy Hill','10/20/1992',(SELECT cit_id from city WHERE cit_name='Baton Rouge'),
(SELECT uni_id from university WHERE uni_name='Louisiana State University'),'RB',' 6-1','235');


-- -----------------------------------------------------
-- Table player_team
-- -----------------------------------------------------
INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='Joe Flacco'),
(SELECT tea_id from team WHERE tea_name='Baltimore Ravens'),'5','2013','2018','66,000,000','1');

INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='Terrance West'),
(SELECT tea_id from team WHERE tea_name='Baltimore Ravens'),'28','2016','2017','600,000','1');

INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='Mike Wallace'),
(SELECT tea_id from team WHERE tea_name='Baltimore Ravens'),'17','2016','2018','8,000,000','1');

INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='Andy Dalton'),
(SELECT tea_id from team WHERE tea_name='Cincinnati Bengals'),'14','2014','2020','96,000,000','1');

INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='A.J. Green'),
(SELECT tea_id from team WHERE tea_name='Cincinnati Bengals'),'18','2015','2019','60,000,000','1');

INSERT INTO player_team (plt_plaid,plt_teaid,plt_jerseynum,plt_contractstartdate,plt_contractenddate,plt_contractvalue,plt_active) VALUES ((SELECT pla_id from player WHERE pla_name='Jeremy Hill'),
(SELECT tea_id from team WHERE tea_name='Cincinnati Bengals'),'32 ','2014','2017','3,753,602','1');



-- -----------------------------------------------------
-- Table `nfldb`.`game`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `nfldb`.`offensive_stats`
-- -----------------------------------------------------


