-- create view need_meeting as

DROP VIEW IF EXISTS need_meeting;

CREATE VIEW  need_meeting AS

    SELECT name FROM students 
    WHERE sc.score < 80 AND 
        (students.last_meeting IS NULL 
        OR students.last_meeting < DATE_ADD(NOW(), INTERVAL -1 MONTH)
    );