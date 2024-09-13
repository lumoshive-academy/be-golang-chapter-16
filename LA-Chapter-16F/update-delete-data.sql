-- sql update data satu kolom 
UPDATE users
SET email = 'budi.baru@example.com'
WHERE id = 1;

-- sql update data lebih dari satu kolom 
UPDATE users
SET email = 'baru.email@example.com', phone = '089876543210'
WHERE id = 1;

-- sql delete data 
DELETE FROM users
WHERE id = 1;
