-- This file is created by the IHP Schema Designer.
-- When you generate a new migration, all changes in this file will be copied into your migration.
--
-- Use http://localhost:8001/NewMigration or `new-migration` to generate a new migration.
--
-- Learn more about migrations: https://ihp.digitallyinduced.com/Guide/database-migrations.html
CREATE TABLE posts (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL
);
CREATE TABLE comments (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL
);
