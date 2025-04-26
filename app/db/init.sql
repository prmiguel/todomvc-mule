CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

CREATE TABLE "Todos" (
    "Id" uuid NOT NULL,
    "Completed" boolean NOT NULL,
    "Order" integer NOT NULL,
    "Title" text,
    CONSTRAINT "PK_Todos" PRIMARY KEY ("Id")
);

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20250406054858_InitialCreate', '8.0.11');

INSERT INTO "Todos" ("Id", "Completed", "Order", "Title") VALUES
('ec335d46-d575-47f9-a1f1-3e92e8aa616a',	'0',	0,	'Buy apples');

COMMIT;
