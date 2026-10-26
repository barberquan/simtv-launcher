# Dọn app rác (debloat)

Phần dọn app rác là **của CleanYourTV** (SimTV không thay đổi). Nguyên tắc: **chỉ TẮT, không gỡ**
(`pm disable-user`), khôi phục được bất cứ lúc nào.

Cách làm an toàn (tóm tắt — chi tiết xem [CleanYourTV](https://github.com/Gathin23/cleanyourtv),
file `PROMPT.md` và thư mục `examples/`):

1. **Backup trước:** lưu danh sách gói + settings (`tools/tv.py 'pm list packages' > backup.txt`).
2. **Chọn danh sách:** nếu `examples/` có đúng model TV của bạn thì dùng; nếu không, để CleanYourTV
   dò app rác trên máy bạn. **Hỏi/giữ lại** các app gia đình dùng (streaming, trợ lý giọng nói,
   Chromecast, trình cập nhật firmware).
3. **Chạy:** `TV_HOST=<IP> tools/disable.sh <danh-sach.txt>` — nó tự chặn các gói lõi của Android và
   bảo vệ màn hình chính.
4. **Khôi phục:** `TV_HOST=<IP> tools/restore.sh <danh-sach.txt>`.

**Cảnh báo quan trọng:**
- **Không tắt** các gói lõi Android, Live TV/HDMI, dịch vụ nhập, remote/Bluetooth, Play Store/Services,
  bàn phím, trình cập nhật firmware.
- Trên một số máy, **trợ lý setup (`...setupwraith`) đang GIỮ Wi-Fi** — tắt nó = **rớt mạng + mất ADB**.
  Kiểm tra trước: `tools/tv.py 'dumpsys wifi | grep cname'`. Nếu thấy setupwraith → **giữ lại**.
- Nếu tắt screensaver ảnh (`com.google.android.backdrop`), đổi screensaver sang bản nhẹ trước
  (`settings put secure screensaver_components com.android.dreams.basic/.Colors`).
- Xong nhớ **đóng ADB** (tắt Gỡ lỗi USB) — cổng 5555 không mã hóa.
