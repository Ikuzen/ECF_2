- 1
SELECT d.ipn,d.firstname, d.lastname, (SELECT fr from technology WHERE technology.code = d.main_tech_code ) as predilection_tech
from developper d
left JOIN learning_tech o  on d.ipn = o.ipn 
WHERE o.ipn IS NULL


- 2 
SELECT d.ipn,d.firstname, d.lastname, 
(SELECT
 COUNT(a.ipn) tech_count 
 from learning_tech a
 WHERE a.ipn = d.ipn
 GROUP BY a.ipn )
from developper d
WHERE
ipn in 
(
SELECT DISTINCT a.ipn 
FROM learning_tech as a
inner Join developper on a.ipn = developper.ipn
)

- 3 

SELECT d.ipn,d.firstname, d.lastname, (SELECT en from technology WHERE technology.code = d.main_tech_code ) as predilection_tech
from developper d
WHERE
d.ipn in 
(
SELECT ipn
FROM learning_tech as a
WHERE a.tech_code
In (
SELECT d.tech_code
    FROM learning_tech d
    GROUP BY d.tech_code
    HAVING COUNT(*) > 1)
)

- 4 
SELECT 
a.firstname, 
a.lastname, 
b.dev_count
FROM developper a
INNER JOIN
(SELECT tech_lead_id,
COUNT(tech_lead_id) dev_count
from developper
GROUP BY tech_lead_id) b 
ON a.id_dev = b.tech_lead_id