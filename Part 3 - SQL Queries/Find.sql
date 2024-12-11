SELECT 
    "Users"."userID", 
    "Users"."userName", 
    "Books"."ISBN", 
    "Books"."title", 
    "Books"."author", 
    "Loans"."loanDate", 
    "Loans"."dueDate", 
    "Loans"."dateReturned"
FROM "Users"
JOIN "Loans" ON "Users"."userID" = "Loans"."userID"
JOIN "Books" ON "Loans"."ISBN" = "Books"."ISBN"
WHERE "Users"."userName" = 'Kenchyy';
