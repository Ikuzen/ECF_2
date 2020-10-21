insert into technology(code, fr, en) values
	('CD_001', 'Angular', 'Angular'), 
    ('CD_002', 'Springboot', 'Springboot'),
    ('CD_003', 'Terraform', 'Terraform'), 
    ('CD_004', 'jQuery', 'jQuery');



insert into developper (firstname, lastname, birthdate, joined_at, ipn, main_tech_code) values
	('Charles', 'DARWIN', TO_DATE('23/09/1800','DD/MM/YYYY'),TO_DATE('23/09/2020','DD/MM/YYYY'),'az00001', 'CD_001' ), 
    ('Albert', 'EINSTEIN',TO_DATE('23/09/1800','DD/MM/YYYY'), TO_DATE('23/09/2020','DD/MM/YYYY'), 'az00002', 'CD_002'),
    ('William', 'SHAKESPEARE',TO_DATE('23/09/1800','DD/MM/YYYY'), TO_DATE('23/09/2020','DD/MM/YYYY'),'az00003', 'CD_003');

insert into learning_tech (ipn, tech_code) values
	('az00001', 'CD_002'),
    ('az00001', 'CD_004'),
    ('az00002', 'CD_003'),
    ('az00002', 'CD_004')

UPDATE developper
SET tech_lead_id = 1 
WHERE id_dev = 2;

UPDATE developper
SET tech_lead_id = 1 
WHERE id_dev = 3;

