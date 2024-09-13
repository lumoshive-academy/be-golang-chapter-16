-- create table users
CREATE TABLE users (
    id BIGINT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE
);


-- menambahkan column pada tabel users
ALTER TABLE users ADD COLUMN address VARCHAR;

-- mengubah column pada tabel users
ALTER TABLE users RENAME COLUMN phone TO contact;
ALTER TABLE users ALTER COLUMN email SET NOT NULL;

-- menghapus column pada users
ALTER TABLE users DROP COLUMN address;

-- menghapus tabel users
DROP TABLE users;   


