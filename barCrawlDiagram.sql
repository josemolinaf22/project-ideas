CREATE TABLE "users" (
  "user_id" SERIAL PRIMARY KEY,
  "username" varchar(50)
);

CREATE TABLE "crawl" (
  "crawl_id" SERIAL PRIMARY KEY,
  "user_id" INTEGER,
  "location" varchar(1000)
);

CREATE TABLE "comments" (
  "comment_id" SERIAL PRIMARY KEY,
  "user_id" INTEGER,
  "crawl_id" INTEGER,
  "text" varchar(1000)
);

ALTER TABLE "crawl" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

ALTER TABLE "comments" ADD FOREIGN KEY ("crawl_id") REFERENCES "crawl" ("crawl_id");
