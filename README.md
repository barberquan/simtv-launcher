# SimTV — giao diện Android TV kiểu kính mờ

Một bộ **giao diện màn hình chính (launcher skin) cho Android TV / Google TV**: thẻ app kiểu
kính mờ nhuốm màu, logo + tên nằm ngang, 2 hàng gọn sát đáy, đồng hồ mảnh có bóng chữ,
**lịch âm Việt Nam** và lời chào. Không quảng cáo, nhẹ cho TV 1GB RAM.

> SimTV là một **bản fork / lớp phủ** dựa trên **[CleanYourTV](https://github.com/Gathin23/cleanyourtv)**
> (giấy phép MIT, tác giả [Gathin23](https://github.com/Gathin23)). Mọi công sức nền tảng (launcher,
> công cụ debloat, danh sách TV) thuộc về dự án gốc — SimTV chỉ thêm phần tùy biến giao diện.
> Xin cảm ơn dự án gốc 🙏

## Có gì khác bản gốc (phần tùy biến của SimTV)

- 🧊 **Thẻ app ngang kính mờ nhuốm màu** thương hiệu, **logo + tên** nằm trong thẻ.
- 📐 **2 hàng sát mép dưới**, thẻ to, bo góc vuông vức, không có dải nền lớn phía sau.
- 🕐 **Đồng hồ nhỏ + bóng chữ đen mờ** cho dễ đọc trên nền ảnh sáng; **lịch âm VN** + lời chào.
- 🖼️ **Logo app tự xóa nền** (icon kiểu cũ có nền trắng được bào trong suốt); hỗ trợ **gắn logo riêng** cho từng app.

## Cần gì

- Một **Android TV / Google TV** (không dùng được cho Samsung Tizen / LG webOS).
- Máy tính (Windows/macOS/Linux) cùng Wi-Fi với TV, có **git**, **Python 3**, và để build launcher:
  **JDK 17** + **Android SDK (platform 34, build-tools 34)**. Xem [CleanYourTV](https://github.com/Gathin23/cleanyourtv).
- Bật **Gỡ lỗi USB (ADB qua mạng)** trên TV.

## Cài nhanh

```bash
# 1) Tải SimTV về và chạy script: nó tự clone CleanYourTV rồi áp lớp phủ SimTV
git clone <repo-cua-ban> simtv-launcher
cd simtv-launcher
bash setup.sh            # tạo thư mục cleanyourtv/ đã áp sẵn giao diện SimTV

# 2) Build + cài launcher lên TV (cần JDK17 + Android SDK), thay IP TV của bạn
cd cleanyourtv
TV_HOST=192.168.1.50 bash launcher/build-and-install.sh

# 3) Đẩy giao diện SimTV (theme) lên TV
TV_HOST=192.168.1.50 bash tools/theme.sh themes/simtv
```

Chi tiết build/cài xem [tài liệu CleanYourTV](https://github.com/Gathin23/cleanyourtv).

## Tùy chỉnh thêm

- 🖼️ **Ảnh nền của bạn:** [docs/wallpaper.md](docs/wallpaper.md)
- 🏷️ **Gắn logo trong suốt riêng cho app** (YouTube, Netflix...): [docs/logos.md](docs/logos.md)
- 🧹 **Dọn app rác (debloat):** [docs/debloat.md](docs/debloat.md)
- 📺 **YouTube không quảng cáo (SmartTube):** [docs/smarttube.md](docs/smarttube.md)
- 👋 **Đổi lời chào / tên:** sửa `greeting_name` trong `theme/config.json`.

## Không kèm trong bản này (bạn tự thêm)

Vì lý do bản quyền & riêng tư, SimTV **không** đóng gói sẵn: ảnh nền (ảnh gia đình / ảnh bản quyền),
logo thương hiệu của các app, hay bất kỳ dữ liệu cá nhân nào. Hướng dẫn tự thêm ở thư mục `docs/`.

## Giấy phép

MIT — xem [LICENSE](LICENSE). Dựa trên CleanYourTV (MIT, © Gathin23 và cộng tác viên).
Hãy giữ phần ghi công khi bạn chia sẻ tiếp.
