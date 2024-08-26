-- create view need_meeting as

CREATE VIEW need_meeting AS
SELECT s.name
FROM students s
JOIN scores sc ON s.id = sc.user_id
WHERE sc.score < 80
AND (
    s.last_meeting IS NULL 
    OR s.last_meeting < DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
)
GROUP BY s.id, s.name;