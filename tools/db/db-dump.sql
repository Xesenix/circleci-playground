-- Adminer 4.8.1 PostgreSQL 15.1 (Debian 15.1-1.pgdg110+1) dump

\connect "postgres";

DROP TABLE IF EXISTS "test";
CREATE TABLE "public"."test" (
    "version" character varying(255) NOT NULL
) WITH (oids = false);

INSERT INTO "test" ("version") VALUES
('C');

-- 2022-11-21 00:07:19.501465+00