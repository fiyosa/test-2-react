# Gunakan image Node.js resmi
FROM node:22-alpine

# Tentukan direktori kerja
WORKDIR /app

# Salin seluruh file
COPY package.json .

RUN npm install

# Salin seluruh file
COPY . .

RUN npm run build

# Jalankan aplikasi
CMD ["npm", "start"]