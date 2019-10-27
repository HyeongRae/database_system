USE CARDB;

INSERT INTO USER_TBL VALUES 
('userid1','userpassword1','man',15),
('userid2','userpassword2','woman',25),
('userid3','userpassword3','man',35),
('userid4','userpassword4','woman',45),
('userid5','userpassword5','man',55),
('userid6','userpassword6','woman',55),
('userid7','userpassword7','man',45),
('userid8','userpassword8','woman',35),
('userid9','userpassword9','man',25),
('userid10','userpassword10','woman',15);

INSERT INTO SEARCH_CAR (USER_ID,CAR_NAME) VALUES 
('userid1','X5'),
('userid1','M3'),
('userid1','488PISTA'),
('userid2','X5'),
('userid2','BERLINETTA'),
('userid3','FF'),
('userid3','STINGER'),
('userid4','STINGER'),
('userid4','CAYENNE'),
('userid5','911CARRERTURBO'),
('userid5','CARREACABRIO'),
('userid5','SPORTAGE'),
('userid6','STONIC'),
('userid6','RIO'),
('userid8','NIRO'),
('userid7','SQ5'),
('userid7','RS5'),
('userid8','TTRS'),
('userid9','A3CARBRIOLET');

INSERT INTO SEARCH_COMPANY (USER_ID,COMPANY_NAME) VALUES 
('userid1','BMW'),
('userid1','PORSCHE'),
('userid2','BMW'),
('userid2','MASERATI'),
('userid3','PORSCHE'),
('userid3','MASERATI'),
('userid4','BMW'),
('userid4','CADILLAC'),
('userid5','AUDI'),
('userid5','HYENDAI'),
('userid5','KIA'),
('userid8','AUDI'),
('userid7','TOYOTA'),
('userid7','CADILLAC'),
('userid8','HYENDAI'),
('userid9','KIA');
