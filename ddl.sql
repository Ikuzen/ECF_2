CREATE TABLE developper (  
	id_dev SERIAL PRIMARY KEY,  
	firstname varchar(255) NOT NULL, 
	lastname varchar(255) NOT NULL,
	birthdate date NOT NULL,
	joined_at date NOT NULL DEFAULT CURRENT_DATE,
	ipn varchar(8) NOT NULL,
	main_tech_code varchar(7) NOT NULL,
    tech_lead_id BIGINT references developper(id_dev)
); 

CREATE TABLE technology (  
    id_tech SERIAL PRIMARY KEY, 
	code varchar(7) unique NOT NULL,
	fr varchar(20) NOT NULL,
	en varchar(20) NOT NULL
); 

CREATE TABLE learning_tech (
	id_learning SERIAL PRIMARY KEY, 
	ipn varchar(8) NOT NULL,
	tech_code varchar(7) NOT NULL
);