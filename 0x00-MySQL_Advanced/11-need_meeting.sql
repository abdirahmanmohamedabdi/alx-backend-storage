-- Creates a view need_meeting that lists all students
-- under 8- (strict) and no last_meeting or more that 1 month
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT name
    FROM students
    WHERE score < 80 AND
        (
            last_meeting is NULL
            OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH)
        );