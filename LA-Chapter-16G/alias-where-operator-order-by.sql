-- sql membuat tabel users
CREATE TABLE users (
    id BIGINT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(50),
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE
);

-- sql insert data users
-- Menambahkan data ke dalam tabel user dengan beberapa data deleted_at tidak NULL
INSERT INTO users (id, name, email, phone, age, city, created_at, updated_at, deleted_at) VALUES
(1, 'Budi Santoso', 'budi.santoso@example.com', '081234567890', 28, 'Jakarta', '2024-07-01 10:00:00+07', '2024-07-01 10:00:00+07', '2024-07-15 10:00:00+07'),
(2, 'Siti Aminah', 'siti.aminah@example.com', '082345678901', 34, 'Bandung', '2024-07-02 11:00:00+07', '2024-07-02 11:00:00+07', '2024-07-16 11:00:00+07'),
(3, 'Ahmad Fauzi', 'ahmad.fauzi@example.com', '083456789012', 25, 'Surabaya', '2024-07-03 12:00:00+07', '2024-07-03 12:00:00+07', '2024-07-17 12:00:00+07'),
(4, 'Dewi Lestari', 'dewi.lestari@example.com', '084567890123', 29, 'Medan', '2024-07-04 13:00:00+07', '2024-07-04 13:00:00+07', NULL),
(5, 'Rudi Hartono', 'rudi.hartono@example.com', '085678901234', 32, 'Semarang', '2024-07-05 14:00:00+07', '2024-07-05 14:00:00+07', NULL),
(6, 'Lina Marlina', 'lina.marlina@example.com', '086789012345', 30, 'Jakarta', '2024-07-06 15:00:00+07', '2024-07-06 15:00:00+07', NULL),
(7, 'Yusuf Hamka', 'yusuf.hamka@example.com', '087890123456', 26, 'Yogyakarta', '2024-07-07 16:00:00+07', '2024-07-07 16:00:00+07', NULL),
(8, 'Rina Susanti', 'rina.susanti@example.com', '088901234567', 33, 'Palembang', '2024-07-08 17:00:00+07', '2024-07-08 17:00:00+07', NULL),
(9, 'Fajar Prasetyo', 'fajar.prasetyo@example.com', '089012345678', 27, 'Jakarta', '2024-07-09 18:00:00+07', '2024-07-09 18:00:00+07', NULL),
(10, 'Maya Sari', 'maya.sari@example.com', '080123456789', 31, 'Balikpapan', '2024-07-10 19:00:00+07', '2024-07-10 19:00:00+07', NULL);

-- alias untuk kolom
SELECT id, name, email, phone, city AS kotaFROM users WHERE id = 1;

-- alias untuk tabel
SELECT u.id, u.name, u.email, u.phone
FROM users u
WHERE u.email = 'budi.santoso@example.com';

-- query where operator
SELECT * FROM users
WHERE age > 25;

-- Menggunakan AND operator: Mengambil pengguna yang tinggal di Jakarta dan berusia di atas 25 tahun
SELECT *
FROM users
WHERE city = 'Jakarta' AND age > 25;

-- Menggunakan OR operator: Mengambil pengguna yang tinggal di Jakarta atau berusia di bawah 30 tahun
SELECT *
FROM users
WHERE city = 'Jakarta' OR age < 30;

-- Menggunakan NOT operator: Mengambil pengguna yang tidak tinggal di Jakarta
SELECT *
FROM users
WHERE NOT city = 'Jakarta';

-- where operator like
SELECT * FROM users
WHERE name LIKE 'John%';


-- Menggunakan IN operator: Mengambil pengguna yang tinggal di Jakarta, Bandung, atau Surabaya
SELECT *
FROM users
WHERE city IN ('Jakarta', 'Bandung', 'Surabaya');

-- Menggunakan NOT IN operator: Mengambil pengguna yang tidak tinggal di Jakarta, Bandung, atau Surabaya
SELECT *
FROM users
WHERE city NOT IN ('Jakarta', 'Bandung', 'Surabaya');

-- Menggunakan IS NULL operator: Mengambil pengguna yang kolom deleted_at-nya NULL
SELECT *
FROM users
WHERE deleted_at IS NULL;

-- Menggunakan IS NOT NULL operator: Mengambil pengguna yang kolom deleted_at-nya tidak NULL
SELECT *
FROM users
WHERE deleted_at IS NOT NULL;

-- Menggunakan BETWEEN operator: Mengambil pengguna yang usianya antara 25 dan 30 tahun
SELECT *
FROM users
WHERE age BETWEEN 25 AND 30;

-- query order by descending
SELECT *
FROM users
ORDER BY age DESC;

-- query order by ascending
SELECT *
FROM users
ORDER BY age ASC, name ASC;

