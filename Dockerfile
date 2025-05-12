# ใช้ Node base image
FROM node:20-alpine

# สร้าง working directory
WORKDIR /usr/src/app

# Copy dependencies
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# Copy source code ทั้งหมด
COPY . .

# สร้างโปรเจกต์
RUN npm run build

# เปิดพอร์ต
EXPOSE 80

# คำสั่งรันโปรเจกต์ (สามารถเปลี่ยนเป็น npm run start:dev สำหรับ development)
CMD ["node", "dist/main"]
