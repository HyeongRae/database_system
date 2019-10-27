USE CARDB;

CREATE TABLE COMPANY_TBL(
	COMPANY_NAME VARCHAR(60),
    COUNTRY VARCHAR(60),
    CEO_NAME VARCHAR(60),
    STARTDATE int,
    PRIMARY KEY(COMPANY_NAME)
);


INSERT INTO COMPANY_TBL VALUES
	('BMW','EUROPE','Harald Kruger',1917),
    ('FERRARI','ITARY','Sergio Marchionner',1947),
    ('PORSCHE','GERMANY','Oliver Blume',1931),
    ('KIA','KOREA','PARKHANU',1944),
    ('TOYOTA','JAPAN','Toyoda Akio',1936),
    ('MASERATI','ITARY','Harald Wester',1914),
    ('LAMBORGHINI','ITARY','Stefano Domenicali',1963),
    ('AUDI','GERMANY','Rupert Stadler',1910),
    ('CHEVROLET','AMERICA','Mary Barra',1911),
    ('FORD','AMERICA','Jim Hackett',1909),
	('BENZ','GERMANY','Dieter Zetsche',1883),
	('BUGATTI','EUROPE','Stephan Winkelmann',1909),
    ('VOLKSWAGEN','EUROPE','Herbert Diess',1937),
    ('HYENDAI','KOREA','JEONGMONGGU',1967),
    ('VOLVO','SWEDEN','Hakan Samuelsson',1927),
    ('RANGEROVER','ENGLAND','Ralf Speth',1978),
    ('CADILLAC','AMERICA','Johan de Nysschen',1902),
    ('ROLLSROYCE','ENGLAND','Warren East',1907),
    ('JEEP','AMERICA','Mike Manley',1943);
   