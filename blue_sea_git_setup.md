# 📁 Thiết lập dự án `blue_sea` và kết nối GitHub

## 1. Tạo thư mục dự án

```bash
cd /mnt/d/GitHub
mkdir blue_sea
cd blue_sea
```

## 2. Khởi tạo Git repo cục bộ

```bash
git init
```

## 3. Tạo file README.md

```bash
touch README.md
echo "# Blue Sea Project" > README.md
```

## 4. Thêm file và commit

```bash
git add .
git commit -m "Initial commit"
```

## 5. Tạo repository trên GitHub

Repository đã được tạo tại:  
🔗 https://github.com/henrydoth/blue_sea.git

## 6. Kết nối repo local với GitHub

```bash
git remote add origin https://github.com/henrydoth/blue_sea.git
```

## 7. Đặt nhánh chính

```bash
git branch -M main
```

## 8. Push mã lên GitHub

```bash
git push -u origin main
```

---

## 🔁 Một số lệnh git hay dùng

| Mục đích            | Lệnh                      |
|---------------------|---------------------------|
| Kiểm tra trạng thái | `git status`              |
| Thêm file mới       | `git add <file>`          |
| Commit              | `git commit -m "..."`     |
| Push                | `git push`                |
| Pull                | `git pull`                |

---

## 📝 Ghi chú cấu hình Git (nếu chưa có)

```bash
git config --global user.name "henrydoth"
git config --global user.email "your_email@example.com"
```
