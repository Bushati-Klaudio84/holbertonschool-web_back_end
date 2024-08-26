-- Set the delimiter to $$ to avoid issues with semicolons


DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    DECLARE avg_score DECIMAL(5,2);

    -- Calculate the average score for the user
    SELECT AVG(score) INTO avg_score
    FROM scores
    WHERE user_id = user_id;

    -- Insert or update the average score in a separate table
    INSERT INTO user_average_scores (user_id, average_score)
    VALUES (user_id, avg_score)
    ON DUPLICATE KEY UPDATE average_score = avg_score;

END //

DELIMITER ;
