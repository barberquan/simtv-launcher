# Gắn logo trong suốt riêng cho app

Mặc định, SimTV **tự xóa nền trắng** của icon app cho sạch. Nếu muốn một app hiện **logo riêng của bạn**
(ảnh PNG nền trong suốt bạn tự chuẩn bị), làm như sau:

1. Chuẩn bị file PNG **nền trong suốt**, vuông (ví dụ 192×192), tên dạng `logo_<ten>.png`
   (chữ thường, không dấu cách), ví dụ `logo_youtube.png`.
2. Đặt file vào: `cleanyourtv/launcher/app/src/main/res/drawable-nodpi/`
3. Mở `cleanyourtv/launcher/app/src/main/java/com/gathin/tvhome/AppAdapter.java`, tìm `CUSTOM_LOGOS`
   và thêm dòng ánh xạ **tên gói app → tên file logo** (không có đuôi .png):
   ```java
   CUSTOM_LOGOS.put("com.google.android.youtube.tv", "logo_youtube");
   ```
   (Lấy tên gói bằng: `TV_HOST=<IP> tools/tv.py 'pm list packages | grep <tu-khoa>'`.)
4. Build lại launcher và cài lên TV:
   ```bash
   TV_HOST=<IP-TV> bash launcher/build-and-install.sh
   ```

Bản phát hành SimTV **không kèm logo thương hiệu** (YouTube, Netflix, v.v.) vì đó là nhãn hiệu của chủ
sở hữu. `CUSTOM_LOGOS` có sẵn vài dòng mẫu trỏ tới `logo_*` — nếu bạn không đặt file tương ứng, app sẽ
tự dùng icon gốc (đã xóa nền). Bạn tự thêm logo cho mục đích cá nhân.
