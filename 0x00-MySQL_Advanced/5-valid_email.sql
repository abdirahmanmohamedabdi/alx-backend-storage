-- Creates a trigger that resets the attribute valid_email
-- only when the email has been changed
DROOP TRIGGER IF EXISTS validate_email;
DELIMITER $$
CREATE TRIGGER validate_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.VALID_EMAIL;
    END IF;
END $$
DELIMITER ;