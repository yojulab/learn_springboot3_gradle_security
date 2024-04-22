-- DELETE FROM AUTHS;
-- DELETE FROM AUTH_NAMES;

-- 권한 종류
INSERT INTO AUTH_NAMES (AUTH_NAME, UNIQUE_ID)
VALUES
  ('ADMIN', 'ROLE_ADMIN'),
  ('MANAGER', 'ROLE_MANAGER'),
  ('MEMBER', 'ROLE_MEMBER');

INSERT INTO USERS (UNIQUE_ID, NAME, PASSWORD, EMAIL, JOB)
VALUES
  ('USER_ID_1', 'John Doe', 'password123', 'john.doe@example.com', 'Developer'),
  ('USER_ID_2', 'Jane Smith', 'password456', 'jane.smith@example.com', 'Manager'),
  ('USER_ID_3', 'Bob Johnson', 'password789', 'bob.johnson@example.com', 'Member'),
  ('USER_ID_4', 'Alice Williams', 'passwordabc', 'alice.williams@example.com', 'Admin');

INSERT INTO AUTHS (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES
  ('USER_ID_1', 'ROLE_ADMIN'),
  ('USER_ID_2', 'ROLE_MANAGER'),
  ('USER_ID_3', 'ROLE_MEMBER'),
  ('USER_ID_4', 'ROLE_ADMIN'),
  ('USER_ID_4', 'ROLE_MEMBER'),
  ('USER_ID_4', 'ROLE_MANAGER');
