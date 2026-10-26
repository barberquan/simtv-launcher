#!/usr/bin/env bash
# SimTV setup: clone CleanYourTV, then apply the SimTV overlay (modified launcher files) + theme.
# Usage:  bash setup.sh [path-to-cleanyourtv]   (default: ./cleanyourtv)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
CYT="${1:-$HERE/cleanyourtv}"

if ! command -v git >/dev/null 2>&1; then echo "Cần cài git trước." >&2; exit 1; fi

if [ ! -d "$CYT/.git" ]; then
  echo ">> Clone CleanYourTV vào $CYT"
  git clone --depth 1 https://github.com/Gathin23/cleanyourtv.git "$CYT"
else
  echo ">> Đã có CleanYourTV ở $CYT (bỏ qua clone)"
fi

echo ">> Áp lớp phủ SimTV (file launcher đã sửa)"
cp -R "$HERE/launcher-overlay/." "$CYT/launcher/"

echo ">> Cài theme SimTV"
mkdir -p "$CYT/themes/simtv"
cp "$HERE/theme/config.json" "$CYT/themes/simtv/config.json"
[ -f "$HERE/theme/NOTES.vi.md" ] && cp "$HERE/theme/NOTES.vi.md" "$CYT/themes/simtv/NOTES.vi.md" || true
# Ảnh nền của bạn (tùy chọn): đặt wallpaper.jpg vào theme/ rồi bật "wallpaper": true trong config.json
[ -f "$HERE/theme/wallpaper.jpg" ] && cp "$HERE/theme/wallpaper.jpg" "$CYT/themes/simtv/wallpaper.jpg" || true

cat <<EOF

✅ Đã áp SimTV vào: $CYT

Bước tiếp theo (cần JDK 17 + Android SDK, và TV bật Gỡ lỗi USB, cùng Wi-Fi):
  cd "$CYT"
  TV_HOST=<IP-TV-cua-ban> bash launcher/build-and-install.sh     # build + cài launcher
  TV_HOST=<IP-TV-cua-ban> bash tools/theme.sh themes/simtv        # đẩy giao diện SimTV

Thêm ảnh nền / logo riêng / dọn app rác / SmartTube: xem thư mục docs/.
EOF
