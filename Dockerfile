# Gunakan Node versi ringan
FROM node:18-alpine

# Buat folder kerja
WORKDIR /app

# Copy package.json dulu biar cache layer docker optimal
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy sisa source code
COPY . .

# Expose port (sesuaikan dengan port di index.js Anda, biasanya 3000 atau 5000)
ENV PORT=5000
EXPOSE 5000

# Jalankan server
CMD ["npm", "start"]
