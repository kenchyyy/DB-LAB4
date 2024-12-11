--I believe that having simple but optimal code would work best in faster data retrieval
SELECT 
    "Loans".*, 
    "Users"."userName"
FROM "Loans"
JOIN "Users" ON "Loans"."userID" = "Users"."userID"
WHERE "Loans"."dueDate" < CURRENT_DATE AND "Loans"."dateReturned" IS NULL;
