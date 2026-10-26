# Theme SimTV — kính mờ, nhuốm màu app, 2 hàng sát đáy

Theme cho launcher (dựa trên CleanYourTV). Chỉnh được qua `config.json` — phần lớn **không cần build lại**.

## Cách từng tùy chọn tạo ra thiết kế

| Mong muốn | Khóa trong config.json |
|---|---|
| Thẻ app nhuốm màu thương hiệu | `uniform_tiles: true` |
| Thẻ kính mờ, không có dải nền lớn | `dock_glass: true`, `glass_style: "glass"`, `dock_band: false` |
| Thẻ nhỏ gọn, 2 hàng sát đáy | `columns: 5`, `rows_below_dock: 1` |
| Tên app hiện trên mọi thẻ | `always_show_names: true` |
| Ô đang chọn sáng theo màu app | `app_glow: true` |
| Nút Wi-Fi/Cài đặt tròn, "Nguồn" giữ chữ | `icon_only_buttons: true` |
| Lịch âm Việt Nam | `lunar_date: true`, `lunar_utc_offset: 7` |
| Lời chào có tên (tự đổi sáng/tối theo giờ) | `greeting_name: "tên của bạn"` (để trống = chỉ lời chào) |
| Ảnh nền + các hàng mờ dần | `wallpaper: true` (thêm wallpaper.jpg), `wallpaper_dim`, `fade_rows: true` |
| Ưu tiên mượt cho TV yếu | `reduced_motion: true`, `advanced_effects: false` |

## Lưu ý

- Thẻ ngang (logo + tên), bo góc nhỏ, đồng hồ mảnh + bóng chữ: nằm trong phần **code đã sửa**
  (`launcher-overlay/`), không phải chỉ theme.
- Launcher dùng **kính mờ nhẹ** (không blur dày) để chạy mượt trên TV 1GB RAM.
- Thêm ảnh nền: [../docs/wallpaper.md](../docs/wallpaper.md) · Logo riêng: [../docs/logos.md](../docs/logos.md)
