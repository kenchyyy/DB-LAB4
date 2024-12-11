-- creating the users table

CREATE TABLE "Users" (
    "userID" UUID NOT NULL default gen_random_uuid (),
    "userName" VARCHAR(20) NOT NULL default '',
    "email" VARCHAR NOT NULL default '',
    "membershipDate" DATE NOT NULL default current_date,
    constraint Users_pkey primary key ("userID")
  );

-- creating the books table
create table
  public."Books" (
    "ISBN" VARCHAR(13) NOT NULL default '',
    "title" VARCHAR(100) NOT NULL default '',
    "author" VARCHAR(50) NOT NULL default '',
    "genre" VARCHAR(50) NOT NULL default '',
    "yearPublished" INTEGER NULL,
    "copiesAvailable" INTEGER NOT NULL default 0,
    CONSTRAINT Books_pkey PRIMARY KEY ("ISBN")
  );

-- creating the book loans table

CREATE TABLE "Loans" (
    "loanDate" DATE NOT NULL default CURRENT_DATE,
    "dateReturned" DATE NULL,
    "dueDate" DATE NOT NULL default (current_date + '7 days'::interval),
    "userID" UUID NOT NULL default gen_random_uuid (),
    "ISBN" VARCHAR(13) NOT NULL default '',
    CONSTRAINT loans_pkey PRIMARY KEY ("userID", "ISBN"),
    CONSTRAINT loans_isbn_fkey FOREIGN KEY ("ISBN") REFERENCES "Books" ("ISBN"),
    CONSTRAINT loans_userid_fkey FOREIGN KEY ("userID") REFERENCES "Users" ("userID")
  );