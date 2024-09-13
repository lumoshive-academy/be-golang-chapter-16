-- sql create tabel users
CREATE TABLE users (
    id BIGINT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE
);

-- sql insert data to tabel users
INSERT INTO users (id, name, email, phone, created_at, updated_at, deleted_at)
VALUES 
    (1, 'Budi Santoso', 'budi.santoso@example.com', '0812341267890', '2024-07-03 10:00:00+07', '2024-07-03 10:00:00+07', NULL);

-- sql select data user
SELECT id, name, email, phone, created_at, updated_at, deleted_at
FROM users;

