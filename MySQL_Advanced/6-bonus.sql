-- Script: add_bonus_procedure.sql

DELIMITER //

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    -- Check if the project already exists
    DECLARE project_id INT;

    SELECT id INTO project_id
    FROM projects
    WHERE name = project_name;

    -- If the project does not exist, insert it and get the new id
    IF project_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    END IF;

    -- Insert the correction for the user and project
    INSERT INTO corrections (user_id, project_id, score) 
    VALUES (user_id, project_id, score);
END//

DELIMITER ;
