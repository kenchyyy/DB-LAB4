--puts overdue status on some books first 
UPDATE "Loans"
SET "Status" = 'overdue'
WHERE "userID" = '0f24d30b-5121-4cbe-8206-73acf0d94855' --Kenchyy
AND "dateReturned" IS NULL;

SELECT 
    "Loans".*, 
    "Users"."userName"
FROM "Loans"
JOIN "Users" ON "Loans"."userID" = "Users"."userID"
WHERE "Status" = 'overdue';

