# Gunakan image Node.js resmi
FROM node:22-alpine

# Tentukan direktori kerja
WORKDIR /app

# Salin seluruh file
COPY package.json .

RUN npm install

# Salin seluruh file
COPY . .

# Tambahkan variable untuk env
ARG VITE_APP_NAME
ARG VITE_APP_USERNAME
# ENV VITE_APP_NAME=${VITE_APP_NAME}
# ENV VITE_APP_USERNAME=${VITE_APP_USERNAME}

RUN npm run build

# Jalankan aplikasi
CMD ["npm", "start"]