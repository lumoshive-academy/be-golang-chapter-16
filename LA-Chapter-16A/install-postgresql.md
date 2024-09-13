# Tutorial Instalasi PostgreSQL

## a. Instalasi PostgreSQL di Windows

1. **Download PostgreSQL:**
   - Kunjungi [https://www.postgresql.org/download/windows/](https://www.postgresql.org/download/windows/).
   - Klik "Download the installer" dan unduh installer PostgreSQL yang sesuai dengan sistem Windows kamu.

2. **Jalankan Installer:**
   - Setelah diunduh, jalankan file `.exe` yang telah diunduh.
   - Ikuti petunjuk instalasi dan pilih komponen yang diperlukan seperti **pgAdmin** dan **PostgreSQL server**.

3. **Konfigurasi:**
   - Selama proses instalasi, masukkan password untuk user **postgres** (user default untuk PostgreSQL).
   - Pilih port (default 5432) dan lokasi instalasi database.

4. **Verifikasi Instalasi:**
   - Buka **pgAdmin** atau gunakan **Command Prompt**.
   - Jalankan perintah berikut untuk memeriksa apakah PostgreSQL telah terinstal dengan benar:

   ```bash
   psql -U postgres

   ```

## b. Instalasi PostgreSQL di macOS

1. **Menggunakan Homebrew**
   - Pastikan Homebrew telah terinstal. Jika belum, instal Homebrew dengan menjalankan perintah berikut di terminal:
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    ```
2. **Instal PostgreSQL:**
    ```bash
    brew install postgresql

    ```
3. **Menjalankan PostgreSQL:**
    ```bash
    brew services start postgresql

    ```
4. **Verifikasi Instalasi:**
    ```bash
    psql postgres

    ```

## C. Instalasi PostgreSQL di Linux (Ubuntu)

1. **Tambahkan Repository PostgreSQL:**
    ```bash
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

    ```
2. **Impor GPG Key:**
    ```bash
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    ```
3. **Update Repository dan Instal PostgreSQL:**
    ```bash
    sudo apt update
    sudo apt install postgresql postgresql-contrib

    ```
4. **Memulai PostgreSQL:**
    ```bash
    sudo systemctl start postgresql

    ```
5. **Verifikasi Instalasi:**
    ```bash
    sudo -i -u postgres psql

    ```

