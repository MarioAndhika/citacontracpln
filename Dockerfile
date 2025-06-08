# Gunakan image resmi PHP
FROM php:8.2-cli

# Install paket tambahan (jika perlu)
RUN apt-get update && apt-get install -y git unzip

# Copy semua file dari repo ke container
WORKDIR /app
COPY . /app

# Expose port agar bisa diakses
EXPOSE 8080

# Jalankan built-in web server PHP
CMD ["php", "-S", "0.0.0.0:8080", "-t", "."]
