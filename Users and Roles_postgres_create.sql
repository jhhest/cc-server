CREATE TABLE "Users" (
	"ID" serial(255) NOT NULL,
	"name" VARCHAR(255) NOT NULL,
	"mail" VARCHAR(255) NOT NULL UNIQUE,
	"password" VARCHAR(255) NOT NULL,
	"telephone_number" VARCHAR(255) NOT NULL UNIQUE,
	"User_Roles_id" VARCHAR(255) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "User_roles" (
	"ID" BINARY NOT NULL,
	"user_id" BINARY NOT NULL,
	"role_description" BINARY NOT NULL,
	"role" BINARY NOT NULL
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Users" ADD CONSTRAINT "Users_fk0" FOREIGN KEY ("User_Roles_id") REFERENCES "User_roles"("ID");


