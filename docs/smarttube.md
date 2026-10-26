# YouTube không quảng cáo (SmartTube)

**SmartTube** là một ứng dụng xem YouTube **mã nguồn mở** cho Android TV: không quảng cáo, có
SponsorBlock (tự tua đoạn tài trợ), chất lượng cao. Nó **không chính thức** (Google không hậu thuẫn),
cài trên máy của mình để xem thì hợp pháp; thỉnh thoảng cần cập nhật khi YouTube đổi.

> SmartTube là dự án riêng: https://github.com/yuliskov/SmartTube — **không** kèm trong SimTV. Hãy
> tải từ nguồn chính thức.

## Cài

1. Vào trang [releases của SmartTube](https://github.com/yuliskov/SmartTube/releases), tải bản
   **stable** đúng chip TV của bạn:
   - TV 32-bit (nhiều TV giá rẻ, chip MediaTek) → `...armeabi-v7a.apk`
   - TV 64-bit → `...arm64-v8a.apk`  ·  Không chắc → `...universal.apk`
2. Cài qua ADB (TV đã bật Gỡ lỗi USB, cùng Wi-Fi):
   ```bash
   TV_HOST=<IP-TV> python3 cleanyourtv/tools/b64push.py SmartTube_stable_xx_armeabi-v7a.apk /data/local/tmp/st.apk
   TV_HOST=<IP-TV> python3 cleanyourtv/tools/tv.py 'pm install -r /data/local/tmp/st.apk; rm -f /data/local/tmp/st.apk'
   ```
3. (Tùy chọn) **Ghim vào màn hình chính**: thêm `"org.smarttube.stable"` vào `dock_apps` trong
   `theme/config.json` rồi đẩy lại theme.

## Dùng

- Mở SmartTube là xem không quảng cáo ngay, không cần đăng nhập.
- Muốn hiện kênh đăng ký / lịch sử của bạn: trong SmartTube → Đăng nhập → nhập **mã** hiện ra tại
  `youtube.com/activate` (hoặc `google.com/device`) trên điện thoại.
- Nên **giữ YouTube gốc** để làm các việc tài khoản khi cần. YouTube Kids là app riêng.
