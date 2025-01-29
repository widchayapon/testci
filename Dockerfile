# Dockerfile
FROM node:20

# สร้างไดเรกทอรีสำหรับแอปพลิเคชัน
WORKDIR /usr/src/app

# คัดลอกไฟล์ package.json และ package-lock.json (ถ้ามี)
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดในไดเรกทอรีปัจจุบันไปยัง WORKDIR
COPY . .

# เปิดพอร์ต 3000
EXPOSE 3000

# รันแอปพลิเคชัน
CMD [ "node", "server.js" ]