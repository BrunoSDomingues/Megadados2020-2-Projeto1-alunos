DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_uuid BINARY(16) PRIMARY KEY,
    name NVARCHAR(1024)
);

ALTER TABLE tasks ADD user_uuid BINARY(16);
ALTER TABLE tasks ADD FOREIGN KEY (user_uuid) REFERENCES users(user_uuid);