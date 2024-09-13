-- sql create tabel users
CREATE TABLE users (
    id BIGINT PRIMARY KEY,
    name CHARACTER(50) NOT NULL,
    email CHARACTER(50),
    phone CHARACTER(20) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE
);

-- add primary key in tabel user
ALTER TABLE users ADD PRIMARY KEY (id);


-- insert data to tabel user
INSERT INTO users (id, name, email, phone, created_at, updated_at, deleted_at)
VALUES 
    (1, 'Budi Santoso', 'budi.santoso@example.com', '081234567890', '2024-07-03 10:00:00+07', '2024-07-03 10:00:00+07', NULL),
    (2, 'Siti Nurhaliza', 'siti.nurhaliza@example.com', '081234567891', '2024-07-04 11:00:00+07', '2024-07-04 11:00:00+07', NULL),
    (3, 'Agus Setiawan', 'agus.setiawan@example.com', '081234567892', '2024-07-05 12:00:00+07', '2024-07-05 12:00:00+07', NULL),
    (4, 'Rina Amelia', 'rina.amelia@example.com', '081234567893', '2024-07-06 13:00:00+07', '2024-07-06 13:00:00+07', NULL);


-- query where clause
SELECT name, email, phone FROM users WHERE name = 'Budi Santoso';
