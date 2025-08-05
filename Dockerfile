# Gunakan versi terbaru LTS (saat ini Node.js 20.x)
FROM node:20

# Update dan upgrade dependencies OS (opsional tapi bersih)
RUN apt-get update && apt-get upgrade -y

# Set working directory
WORKDIR /app

# Salin semua file ke container
COPY . .

# Install dependencies
RUN npm install

# Jalankan aplikasi
CMD ["node", "index.js"]

# Port yang digunakan aplikasi
EXPOSE 6892
