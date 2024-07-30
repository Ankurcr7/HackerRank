DELIMITER //
CREATE PROCEDURE prime()
BEGIN
    DECLARE num INT DEFAULT 1000;
    DECLARE i INT DEFAULT 2;
    DECLARE j INT;
    DECLARE counter INT DEFAULT 0;
    DECLARE answer TEXT DEFAULT '';
    WHILE i <= num DO
        SET counter = 0;
        SET j = 2;
        loop1 : WHILE j <= (SELECT round(pow(i,0.5)) + 1) DO
            IF (SELECT i%j) = 0 THEN
                SET counter = 1;
                LEAVE loop1;
            END IF;
            SET j = j + 1;
            END WHILE;
        IF ((SELECT counter) = 0 OR i = 2 or i = 3) THEN
            SET answer = (SELECT concat(answer,'&',i));
        END IF;
        SET i = i + 1;
    END WHILE;
SELECT RIGHT(answer,length(answer) - 1) as ans;
END //

CALL prime();