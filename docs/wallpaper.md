# Thêm ảnh nền của bạn

SimTV **không** kèm ảnh nền sẵn (tránh bản quyền / ảnh riêng tư). Tự thêm rất dễ:

1. Chuẩn bị 1 ảnh **ngang 1920×1080**, định dạng **JPEG**, nên **dưới ~400KB** và hơi tối một chút
   (để chữ và thẻ dễ đọc). Ảnh dọc thì cắt/ghép sang ngang trước.
2. Đặt ảnh tên **`wallpaper.jpg`** vào thư mục `theme/` (cạnh `config.json`).
3. Trong `theme/config.json`, đổi:
   ```json
   "wallpaper": true
   ```
   (có thể chỉnh `"wallpaper_dim": 35` — số càng lớn nền càng tối, dễ đọc chữ hơn.)
4. Chạy lại `setup.sh` (hoặc copy tay vào `cleanyourtv/themes/simtv/`), rồi đẩy theme:
   ```bash
   TV_HOST=<IP-TV> bash tools/theme.sh themes/simtv
   ```

**Lưu ý:** chỉ dùng ảnh bạn có quyền (ảnh của bạn, hoặc ảnh giấy phép tự do). Đừng chia sẻ công khai
ảnh riêng tư hay ảnh bản quyền của người khác kèm theo repo.
