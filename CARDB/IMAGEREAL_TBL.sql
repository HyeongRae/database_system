CREATE TABLE IMAGE_TBL(
	CAR_NAME VARCHAR(60),
    PATH VARCHAR(60),
    CONSTRAINT FK_5 FOREIGN KEY(CAR_NAME) REFERENCES CARINFO_TBL(CAR_NAME) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(CAR_NAME,PATH)
);


INSERT INTO IMAGE_TBL VALUES

	('I8','images/car_img/I8_BMW.png'),
    ('I8','images/car_img/I8-2_BMW.png'),
    ('I8','images/car_img/I8-3_BMW.png'),
    
    ('I8_ROADSTAR','images/car_img/I8ROADSTAR_BMW.png'),
    ('I8_ROADSTAR','images/car_img/I8ROADSTAR-2_BMW.png'),
    ('I8_ROADSTAR','images/car_img/I8ROADSTAR-3_BMW.png'),
    
    ('F45','images/car_img/F45_BMW.png'),
    ('F45','images/car_img/F45-2_BMW.png'),
    ('F45','images/car_img/F45-3_BMW.png'),
    
    ('X4','images/car_img/X4_BMW.png'),
    ('X4','images/car_img/X4-2_BMW.png'),
    ('X4','images/car_img/X4-3_BMW.png'),
    
    ('M2','images/car_img/M2_BMW.png'),
    ('M2','images/car_img/M2-2_BMW.png'),
    ('M2','images/car_img/M2-3_BMW.png'),
    
    ('M5','images/car_img/M5_BMW.png'),
    ('M5','images/car_img/M5-2_BMW.png'),
    ('M5','images/car_img/M5-3_BMW.png'),
    
    ('X5','images/car_img/X5_BMW.png'),
    ('X5','images/car_img/X5-2_BMW.png'),
    ('X5','images/car_img/X5-3_BMW.png'),
    
    ('M4CS','images/car_img/M4CS_BMW.png'),
    ('M4CS','images/car_img/M4CS-2_BMW.png'),
    ('M4CS','images/car_img/M4CS-3_BMW.png'),
    
    ('2CONVERTIBLE','images/car_img/M2COM_BMW.png'),
    ('2CONVERTIBLE','images/car_img/M2COM-2_BMW.png'),
   
    ('X4M','images/car_img/X4M_BMW.png'),
    ('X4M','images/car_img/X4M-2_BMW.png'),
    ('X4M','images/car_img/X4M-3_BMW.png'),
    
    ('M3','images/car_img/M3_BMW.png'),
    ('M3','images/car_img/M3-3_BMW.png'),
    
    ('X1','images/car_img/X1_BMW.png'),
    ('X1','images/car_img/X1-2_BMW.png'),
    ('X1','images/car_img/X1-3_BMW.png'),
    
    ('488PISTA','images/car_img/488PISTA_FER.png'),
    ('488PISTA','images/car_img/488PISTA-2_FER.png'),
    ('488PISTA','images/car_img/488PISTA-3_FER.png'),
    
    ('812SUPERFAST','images/car_img/812SUPERFAST_FER.png'),
    ('812SUPERFAST','images/car_img/812SUPERFAST-2_FER.png'),
    ('812SUPERFAST','images/car_img/812SUPERFAST-3_FER.png'),
    
    ('PORTOFINO','images/car_img/PORTOFINO_FER.png'),
    ('PORTOFINO','images/car_img/PORTOFINO-2_FER.png'),
    ('PORTOFINO','images/car_img/PORTOFINO-3_FER.png'),
    
    ('488SPIDER','images/car_img/488SPYDER_FER.png'),
    ('488SPIDER','images/car_img/488SPYDER-2_FER.png'),
    ('488SPIDER','images/car_img/488SPYDER-3_FER.png'),
    
    ('488GTB','images/car_img/488GTB_FER.png'),
    ('488GTB','images/car_img/488GTB-2_FER.png'),
    ('488GTB','images/car_img/488GTB-3_FER.png'),
    
    ('F12TDF','images/car_img/F12TDF_FER.png'),
    ('F12TDF','images/car_img/F12TDF-2_FER.png'),
    ('F12TDF','images/car_img/F12TDF-3_FER.png'),
    
    ('LAFERRARI','images/car_img/LAFERRARI_FER.png'),
    ('LAFERRARI','images/car_img/LAFERRARI-2_FER.png'),
    ('LAFERRARI','images/car_img/LAFERRARI-3_FER.png'),
    
    ('BERLINETTA','images/car_img/BERLINETTA_FER.png'),
    ('BERLINETTA','images/car_img/BERLINETTA-2_FER.png'),
    ('BERLINETTA','images/car_img/BERLINETTA-3_FER.png'),
    
    ('FF','images/car_img/FF_FER.png'),
    ('FF','images/car_img/FF-2_FER.png'),
    ('FF','images/car_img/FF-3_FER.png'),
    
    ('STINGER','images/car_img/STINGER_KIA.png'),
    ('STINGER','images/car_img/STINGER-2_KIA.png'),
    ('STINGER','images/car_img/STINGER-3_KIA.png'),
    
    ('911GT3','images/car_img/911GT3_POR.png'),
    ('911GT3','images/car_img/911GT3-2_POR.png'),
    ('911GT3','images/car_img/911GT3-3_POR.png'),
    
    ('911GT2','images/car_img/911GT2_POR.png'),
    ('911GT2','images/car_img/911GT2-2_POR.png'),
    ('911GT2','images/car_img/911GT2-3_POR.png'),
    
    ('CAYENNE','images/car_img/CAYENNE_POR.png'),
    ('CAYENNE','images/car_img/CAYENNE-2_POR.png'),
    ('CAYENNE','images/car_img/CAYENNE-3_POR.png'),
    
    ('CAYENNEGTS','images/car_img/CAYENNES_POR.png'),
    ('CAYENNEGTS','images/car_img/CAYENNES-2_POR.png'),
    ('CAYENNEGTS','images/car_img/CAYENNES-3_POR.png'),
    
    ('718BOXSTER','images/car_img/718BOXSTER_POR.png'),
    ('718BOXSTER','images/car_img/718BOXSTER-2_POR.png'),
    ('718BOXSTER','images/car_img/718BOXSTER-3_POR.png'),
    
    ('911CARRERTURBO','images/car_img/911CARRERAT_POR.png'),
    ('911CARRERTURBO','images/car_img/911CARRERAT-2_POR.png'),
    ('911CARRERTURBO','images/car_img/911CARRERAT-3_POR.png'),
    
    ('911CARREA','images/car_img/911CARREA_POR.png'),
    ('911CARREA','images/car_img/911CARREA-2_POR.png'),
    ('911CARREA','images/car_img/911CARREA-3_POR.png'),
    
    ('CARREACABRIO','images/car_img/CARREACABRIO_POR.png'),
    ('CARREACABRIO','images/car_img/CARREACABRIO-2_POR.png'),
    ('CARREACABRIO','images/car_img/CARREACABRIO-3_POR.png'),
    
    ('918SPYDER','images/car_img/918SPYDER_POR.png'),
    ('918SPYDER','images/car_img/918SPYDER-2_POR.png'),
    ('918SPYDER','images/car_img/918SPYDER-3_POR.png'),
	
    ('SPORTAGE','images/car_img/SPORTAGE_KIA.png'),
    ('SPORTAGE','images/car_img/SPORTAGE-2_KIA.png'),
    ('SPORTAGE','images/car_img/SPORTAGE-3_KIA.png'),
    
    ('SORENTO','images/car_img/SORENTO_KIA.png'),
    ('SORENTO','images/car_img/SORENTO-2_KIA.png'),
    
    ('STONIC','images/car_img/STONIC_KIA.png'),
    ('STONIC','images/car_img/STONIC-2_KIA.png'),
    ('STONIC','images/car_img/STONIC-3_KIA.png'),
    
    ('OPTIMA','images/car_img/OPTIMA_KIA.png'),
    ('OPTIMA','images/car_img/OPTIMA-2_KIA.png'),
    ('OPTIMA','images/car_img/OPTIMA-3_KIA.png'),
    
    ('RIO','images/car_img/RIO_KIA.png'),
    ('RIO','images/car_img/RIO-2_KIA.png'),
    ('RIO','images/car_img/RIO-3_KIA.png'),
    
    ('NIRO','images/car_img/NIRO_KIA.png'),
    ('NIRO','images/car_img/NIRO-2_KIA.png'),
    ('NIRO','images/car_img/NIRO-3_KIA.png'),
    
    ('A4','images/car_img/A4_AUDI.png'),
    ('A4','images/car_img/A4-2_AUDI.png'),
    ('A4','images/car_img/A4-3_AUDI.png'),
    
    ('SQ5','images/car_img/SQ5_AUDI.png'),
    ('SQ5','images/car_img/SQ5-2_AUDI.png'),
    ('SQ5','images/car_img/SQ5-3_AUDI.png'),
    
    ('R8V10','images/car_img/R8V10_AUDI.png'),
    ('R8V10','images/car_img/R8V10-2_AUDI.png'),
    ('R8V10','images/car_img/R8V10-3_AUDI.png'),
    
    ('RS5','images/car_img/RS5_AUDI.png'),
    ('RS5','images/car_img/RS5-2_AUDI.png'),
    ('RS5','images/car_img/RS5-3_AUDI.png'),
    
    ('TTRS','images/car_img/TTRS_AUDI.png'),
    ('TTRS','images/car_img/TTRS-2_AUDI.png'),
    ('TTRS','images/car_img/TTRS-3_AUDI.png'),
    
    ('S5','images/car_img/S5_AUDI.png'),
    ('S5','images/car_img/S5-2_AUDI.png'),
    ('S5','images/car_img/S5-3_AUDI.png'),
    
    ('A3CARBRIOLET','images/car_img/A3CARBRIOLET_AUDI.png'),
    ('A3CARBRIOLET','images/car_img/A3CARBRIOLET-2_AUDI.png'),
    ('A3CARBRIOLET','images/car_img/A3CARBRIOLET-3_AUDI.png'),
    
    ('S3','images/car_img/S3_AUDI.png'),
    ('S3','images/car_img/S3-2_AUDI.png'),
    ('S3','images/car_img/S3-3_AUDI.png'),
    
    ('GHIBLI','images/car_img/GHIBLI_MASE.png'),
    ('GHIBLI','images/car_img/GHIBLI-2_MASE.png'),
    ('GHIBLI','images/car_img/GHIBLI-3_MASE.png'),
    
    ('GRANTURISMO','images/car_img/GRANTURISMO_MASE.png'),
    ('GRANTURISMO','images/car_img/GRANTURISMO-2_MASE.png'),
    ('GRANTURISMO','images/car_img/GRANTURISMO-3_MASE.png'),
    
    ('GRANCABRIO','images/car_img/GRANCABRIO_MASE.png'),
    ('GRANCABRIO','images/car_img/GRANCABRIO-2_MASE.png'),
    ('GRANCABRIO','images/car_img/GRANCABRIO-3_MASE.png'),
    
    ('LEVANTE','images/car_img/LEVANTE_MASE.png'),
    ('LEVANTE','images/car_img/LEVANTE-2_MASE.png'),
    ('LEVANTE','images/car_img/LEVANTE-3_MASE.png'),
    
    ('CAMARO','images/car_img/CAMARO_CHE.png'),
    ('CAMARO','images/car_img/CAMARO-2_CHE.png'),
    ('CAMARO','images/car_img/CAMARO-3_CHE.png'),
    
    ('MARIBU','images/car_img/MARIBU_CHE.png'),
    ('MARIBU','images/car_img/MARIBU-2_CHE.png'),
    ('MARIBU','images/car_img/MARIBU-3_CHE.png'),
    
    ('TRAX','images/car_img/TRAX_CHE.png'),
    ('TRAX','images/car_img/TRAX-2_CHE.png'),
    ('TRAX','images/car_img/TRAX-3_CHE.png'),
    
    ('GT','images/car_img/GT_FORD.png'),
    ('GT','images/car_img/GT-2_FORD.png'),
    ('GT','images/car_img/GT-3_FORD.png'),
    
    ('MUSTANG','images/car_img/MUSTANG_FORD.png'),
    ('MUSTANG','images/car_img/MUSTANG-2_FORD.png'),
    ('MUSTANG','images/car_img/MUSTANG-3_FORD.png'),
    
    ('MUSTANGCONVERTIBLE','images/car_img/MUSTANGCONVERTIBLE_FORD.png'),
    ('MUSTANGCONVERTIBLE','images/car_img/MUSTANGCONVERTIBLE-2_FORD.png'),
    ('MUSTANGCONVERTIBLE','images/car_img/MUSTANGCONVERTIBLE-3_FORD.png'),
    
    ('KUGA','images/car_img/KUGA_FORD.png'),
    ('KUGA','images/car_img/KUGA-2_FORD.png'),
    
    ('EDGE','images/car_img/EDGE_FORD.png'),
    ('EDGE','images/car_img/EDGE-2_FORD.png'),
    ('EDGE','images/car_img/EDGE-3_FORD.png'),
    
    ('SHELBY','images/car_img/SHELBY_FORD.png'),
    ('SHELBY','images/car_img/SHELBY-2_FORD.png'),
    ('SHELBY','images/car_img/SHELBY-3_FORD.png'),
    
    ('EXPLORER','images/car_img/EXPLORER_FORD.png'),
    ('EXPLORER','images/car_img/EXPLORER-2_FORD.png'),
    ('EXPLORER','images/car_img/EXPLORER-3_FORD.png'),
    
    ('CABRIOLET_A217','images/car_img/CABRIOLET_A217_BENZ.png'),
    ('CABRIOLET_A217','images/car_img/CABRIOLET_A217-2_BENZ.png'),
    ('CABRIOLET_A217','images/car_img/CABRIOLET_A217-3_BENZ.png'),
    
    ('COUPE_C217','images/car_img/COUPE_BENZ.png'),
    ('COUPE_C217','images/car_img/COUPE-2_BENZ.png'),
    
    ('CAMRY','images/car_img/CAMRY_TOY.png'),
    ('CAMRY','images/car_img/CAMRY-2_TOY.png'),
    ('CAMRY','images/car_img/CAMRY-3_TOY.png'),
    
    ('SIENNA','images/car_img/SIENNA_TOY.png'),
    ('SIENNA','images/car_img/SIENNA-2_TOY.png'),
    ('SIENNA','images/car_img/SIENNA-3_TOY.png'),
    
    ('PRIUS_C','images/car_img/PRIUS-C_TOY.png'),
    ('PRIUS_C','images/car_img/PRIUS-C-2_TOY.png'),
    ('PRIUS_C','images/car_img/PRIUS-C-3_TOY.png'),
    
    ('YARISIA','images/car_img/YARISIA_TOY.png'),
    ('YARISIA','images/car_img/YARISIA-2_TOY.png'),
    ('YARISIA','images/car_img/YARISIA-3_TOY.png'),
    
    ('AVALON','images/car_img/AVALON_TOY.png'),
    ('AVALON','images/car_img/AVALON-2_TOY.png'),
    ('AVALON','images/car_img/AVALON-3_TOY.png'),
    
    ('URUS','images/car_img/URUS_RAM.png'),
    ('URUS','images/car_img/URUS-2_RAM.png'),
    ('URUS','images/car_img/URUS-3_RAM.png'),
    
    ('AVENTADOR_S','images/car_img/AVENTADOR-S_RAM.png'),
    ('AVENTADOR_S','images/car_img/AVENTADOR-S-2_RAM.png'),
    ('AVENTADOR_S','images/car_img/AVENTADOR-S-3_RAM.png'),
    
    ('LOADSTAR','images/car_img/ROADSTAR_RAM.png'),
    ('LOADSTAR','images/car_img/ROADSTAR-2_RAM.png'),
    ('LOADSTAR','images/car_img/ROADSTAR-3_RAM.png'),
    
    ('HURACAN_LP580','images/car_img/HURACAN-LP580_RAM.png'),
    ('HURACAN_LP580','images/car_img/HURACAN-LP580-2_RAM.png'),
    ('HURACAN_LP580','images/car_img/HURACAN-LP580-3_RAM.png'),
    
    ('GALLARDO','images/car_img/GALLARDO_RAM.png'),
    ('GALLARDO','images/car_img/GALLARDO-2_RAM.png'),
    ('GALLARDO','images/car_img/GALLARDO-3_RAM.png'),
    
    ('CHIRON','images/car_img/CHIRON_BUG.png'),
    ('CHIRON','images/car_img/CHIRON-2_BUG.png'),
    ('CHIRON','images/car_img/CHIRON-3_BUG.png'),
    
    ('VEYRON_VITESSE','images/car_img/VEYRON VITESSE_BUG.png'),
    ('VEYRON_VITESSE','images/car_img/VEYRON VITESSE-2_BUG.png'),
    ('VEYRON_VITESSE','images/car_img/VEYRON VITESSE-3_BUG.png'),
    
    ('VEYRON','images/car_img/VEYRON_BUG.png'),
    ('VEYRON','images/car_img/VEYRON-2_BUG.png'),
    ('VEYRON','images/car_img/VEYRON-3_BUG.png'),
    
    ('TIGUAN_ALLSPACE','images/car_img/TIGUAN-ALLSPACE_VOL.png'),
    ('TIGUAN_ALLSPACE','images/car_img/TIGUAN-ALLSPACE-2_VOL.png'),
    ('TIGUAN_ALLSPACE','images/car_img/TIGUAN-ALLSPACE-3_VOL.png'),
    
    ('GOLF_GTI','images/car_img/GOLF-GTI_VOL.png'),
    ('GOLF_GTI','images/car_img/GOLF-GTI-2_VOL.png'),
    ('GOLF_GTI','images/car_img/GOLF-GTI-3_VOL.png'),
    
    ('ARTEON','images/car_img/ARTEON_VOL.png'),
    ('ARTEON','images/car_img/ARTEON-2_VOL.png'),
    ('ARTEON','images/car_img/ARTEON-3_VOL.png'),
    
    ('GOLF_SPORTSVAN','images/car_img/GOLF-SPORTSVAN_VOL.png'),
    ('GOLF_SPORTSVAN','images/car_img/GOLF-SPORTSVAN-2_VOL.png'),
    ('GOLF_SPORTSVAN','images/car_img/GOLF-SPORTSVAN-3_VOL.png'),
    
    ('SOUL','images/car_img/SOUL_KIA.png'),
    ('SOUL','images/car_img/SOUL-2_KIA.png'),
    ('SOUL','images/car_img/SOUL-3_KIA.png'),

    ('MORNING','images/car_img/MORNING_KIA.png'),
    ('MORNING','images/car_img/MORNING-2_KIA.png'),
    ('MORNING','images/car_img/MORNING-3_KIA.png'),
   
    ('K9','images/car_img/K9_KIA.png'),
    ('K9','images/car_img/K9-2_KIA.png'),
    ('K9','images/car_img/K9-3_KIA.png'),
    
    ('K7','images/car_img/K7_KIA.png'),
    ('K7','images/car_img/K7-2_KIA.png'),
    ('K7','images/car_img/K7-3_KIA.png'),
    
    ('MOHABI','images/car_img/MOHABI_KIA.png'),
    ('MOHABI','images/car_img/MOHABI-2_KIA.png'),
    
    ('BONGO3','images/car_img/BONGO_KIA.png'),
    ('BONGO3','images/car_img/BONGO-2_KIA.png'),
    ('BONGO3','images/car_img/BONGO-3_KIA.png'),
    
    ('K3','images/car_img/K3_KIA.png'),
    ('K3','images/car_img/K3-2_KIA.png'),
    ('K3','images/car_img/K3-3_KIA.png'),
    
    ('K5','images/car_img/K5_KIA.png'),
    ('K5','images/car_img/K5-2_KIA.png'),
    ('K5','images/car_img/K5-3_KIA.png'),
    
    ('G70','images/car_img/G70_GENESIS.png'),
    ('G70','images/car_img/G70-2_GENESIS.png'),
    ('G70','images/car_img/G70-3_GENESIS.png'),
    
    ('G80','images/car_img/G80_GENESIS.png'),
    ('G80','images/car_img/G80-2_GENESIS.png'),
    ('G80','images/car_img/G80-3_GENESIS.png'),
    
    ('EQ900','images/car_img/EQ900_GENESIS.png'),
    ('EQ900','images/car_img/EQ900-2_GENESIS.png'),
    ('EQ900','images/car_img/EQ900-3_GENESIS.png'),
    
    ('AVANTE','images/car_img/AVANTE_HYENDAI.png'),
    ('AVANTE','images/car_img/AVANTE-2_HYENDAI.png'),
    ('AVANTE','images/car_img/AVANTE-3_HYENDAI.png'),
    
    ('VELOSTER','images/car_img/VELOSTER_HYENDAI.png'),
    ('VELOSTER','images/car_img/VELOSTER-2_HYENDAI.png'),
    ('VELOSTER','images/car_img/VELOSTER-3_HYENDAI.png'),
    
    ('SONATA','images/car_img/SONATA_HYENDAI.png'),
    ('SONATA','images/car_img/SONATA-2_HYENDAI.png'),
    ('SONATA','images/car_img/SONATA-3_HYENDAI.png'),
    
    ('I30','images/car_img/I30_HYENDAI.png'),
    ('I30','images/car_img/I30-2_HYENDAI.png'),
    ('I30','images/car_img/I30-3_HYENDAI.png'),
    
    ('I40','images/car_img/I40_HYENDAI.png'),
    ('I40','images/car_img/I40-2_HYENDAI.png'),
    ('I40','images/car_img/I40-3_HYENDAI.png'),
    
    ('TUSSAN','images/car_img/TUSSAN_HYENDAI.png'),
    ('TUSSAN','images/car_img/TUSSAN-2_HYENDAI.png'),
    ('TUSSAN','images/car_img/TUSSAN-3_HYENDAI.png'),
    
    ('GRANGER','images/car_img/GRANGER_HYENDAI.png'),
    
    ('POTER2','images/car_img/POTER2_HYENDAI.png'),
    ('POTER2','images/car_img/POTER2-2_HYENDAI.png'),
    ('POTER2','images/car_img/POTER2-3_HYENDAI.png'),
    
    ('V40','images/car_img/V40_VOLVO.png'),
    ('V40','images/car_img/V40-2_VOLVO.png'),
    ('V40','images/car_img/V40-3_VOLVO.png'),
    
    ('V40CROSS','images/car_img/V40CROSS_VOLVO.png'),
    ('V40CROSS','images/car_img/V40CROSS-2_VOLVO.png'),
    ('V40CROSS','images/car_img/V40CROSS-3_VOLVO.png'),
    
    ('S60','images/car_img/S60_VOLVO.png'),
    ('S60','images/car_img/S60-2_VOLVO.png'),
    ('S60','images/car_img/S60-3_VOLVO.png'),
    
    ('V60','images/car_img/V60_VOLVO.png'),
    ('V60','images/car_img/V60-2_VOLVO.png'),
    ('V60','images/car_img/V60-3_VOLVO.png'),
    
    ('V60CROSS','images/car_img/V60CROSS_VOLVO.png'),
    ('V60CROSS','images/car_img/V60CROSS-2_VOLVO.png'),
    ('V60CROSS','images/car_img/V60CROSS-3_VOLVO.png'),
    
    ('S90','images/car_img/S90_VOLVO.png'),
    ('S90','images/car_img/S90-2_VOLVO.png'),
    ('S90','images/car_img/S90-3_VOLVO.png'),
    
    ('V90CROSS','images/car_img/V90CROSS_VOLVO.png'),
    ('V90CROSS','images/car_img/V90CROSS-2_VOLVO.png'),
    ('V90CROSS','images/car_img/V90CROSS-3_VOLVO.png'),
    
    ('XC60','images/car_img/XC60_VOLVO.png'),
    ('XC60','images/car_img/XC60-2_VOLVO.png'),
    ('XC60','images/car_img/XC60-3_VOLVO.png'),
    
    ('XC90','images/car_img/XC90_VOLVO.png'),
    ('XC90','images/car_img/XC90-2_VOLVO.png'),
    ('XC90','images/car_img/XC90-3_VOLVO.png'),
    
    ('EVOQUE','images/car_img/EVOQUE_RANGEROVER.png'),
    ('EVOQUE','images/car_img/EVOQUE-2_RANGEROVER.png'),
    ('EVOQUE','images/car_img/EVOQUE-3_RANGEROVER.png'),
    
    ('DISCOVERY-SPORT','images/car_img/DISCOVERY-SPORT_RANGEROVER.png'),
    ('DISCOVERY-SPORT','images/car_img/DISCOVERY-SPORT-2_RANGEROVER.png'),
    ('DISCOVERY-SPORT','images/car_img/DISCOVERY-SPORT-3_RANGEROVER.png'),
    
    ('DISCOVERY','images/car_img/DISCOVERY_RANGEROVER.png'),
    ('DISCOVERY','images/car_img/DISCOVERY-2_RANGEROVER.png'),
    ('DISCOVERY','images/car_img/DISCOVERY-3_RANGEROVER.png'),
    
    ('VERAL','images/car_img/VERAL_RANGEROVER.png'),
    ('VERAL','images/car_img/VERAL-2_RANGEROVER.png'),
    ('VERAL','images/car_img/VERAL-3_RANGEROVER.png'),
    
    ('PHANTOM','images/car_img/PHANTOM_ROLLSROYCE.png'),
    ('PHANTOM','images/car_img/PHANTOM-2_ROLLSROYCE.png'),
    ('PHANTOM','images/car_img/PHANTOM-3_ROLLSROYCE.png'),
    
    ('GHOST2','images/car_img/GHOST2_ROLLSROYCE.png'),
    ('GHOST2','images/car_img/GHOST2-2_ROLLSROYCE.png'),
    ('GHOST2','images/car_img/GHOST2-3_ROLLSROYCE.png'),
    
    ('WRAITH','images/car_img/WRAITH_ROLLSROYCE.png'),
    ('WRAITH','images/car_img/WRAITH-2_ROLLSROYCE.png'),
    ('WRAITH','images/car_img/WRAITH-3_ROLLSROYCE.png'),
    
    ('DAWN','images/car_img/DAWN_ROLLSROYCE.png'),
    ('DAWN','images/car_img/DAWN-2_ROLLSROYCE.png'),
    ('DAWN','images/car_img/DAWN-3_ROLLSROYCE.png'),
    
    ('CULLINAN','images/car_img/CULLINAN_ROLLSROYCE.png'),
    ('CULLINAN','images/car_img/CULLINAN-2_ROLLSROYCE.png'),
    ('CULLINAN','images/car_img/CULLINAN-3_ROLLSROYCE.png'),
    
    ('ATS','images/car_img/ATS_CADILLAC.png'),
    ('ATS','images/car_img/ATS-2_CADILLAC.png'),
    ('ATS','images/car_img/ATS-3_CADILLAC.png'),
    
    ('CTS','images/car_img/CTS_CADILLAC.png'),
    ('CTS','images/car_img/CTS-2_CADILLAC.png'),
    ('CTS','images/car_img/CTS-3_CADILLAC.png'),
    
    ('CT6','images/car_img/CT6_CADILLAC.png'),
    ('CT6','images/car_img/CT6-2_CADILLAC.png'),
    ('CT6','images/car_img/CT6-3_CADILLAC.png'),
    
    ('XT5','images/car_img/XT5_CADILLAC.png'),
    ('XT5','images/car_img/XT5-2_CADILLAC.png'),
    ('XT5','images/car_img/XT5-3_CADILLAC.png'),
    
    ('ESCALADE','images/car_img/ESCALADE_CADILLAC.png'),
    ('ESCALADE','images/car_img/ESCALADE-2_CADILLAC.png'),
    
    ('RENEGADE','images/car_img/RENEGADE_JEEP.png'),
    ('RENEGADE','images/car_img/RENEGADE-2_JEEP.png'),
    ('RENEGADE','images/car_img/RENEGADE-3_JEEP.png'),
    
    ('COMPASS','images/car_img/COMPASS_JEEP.png'),
    ('COMPASS','images/car_img/COMPASS-2_JEEP.png'),
    ('COMPASS','images/car_img/COMPASS-3_JEEP.png'),
    
    ('WRANGLER','images/car_img/WRANGLER_JEEP.png'),
    ('WRANGLER','images/car_img/WRANGLER-2_JEEP.png'),
    ('WRANGLER','images/car_img/WRANGLER-3_JEEP.png'),
    
    ('GRANDCHEROKEE','images/car_img/GRANDCHEROKEE_JEEP.png'),
    ('GRANDCHEROKEE','images/car_img/GRANDCHEROKEE-2_JEEP.png');