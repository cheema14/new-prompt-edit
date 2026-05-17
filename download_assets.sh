#!/usr/bin/env bash
set -euo pipefail
mkdir -p assets

# I will download three representative hero/thumbnail images from the linked page.
# You confirmed permission; if you need different images, replace these URLs.

curl -L -o assets/delivery1.webp "https://embed-ssl.wistia.com/deliveries/57cb867d7a2e5b7cd26e2c5352e678b46243e31d.webp?image_crop_resized=1920x540"
curl -L -o assets/delivery2.webp "https://embed-ssl.wistia.com/deliveries/b399bdd4d4bcccb0a2369d5d034843bcc5f713fe.webp?image_crop_resized=1920x540"
curl -L -o assets/delivery3.webp "https://embed-ssl.wistia.com/deliveries/e1a3f5f3f854ebb7349612ede6650c8c.webp?image_crop_resized=960x540"

# Optional: convert to additional sizes if cwebp is available
if command -v cwebp >/dev/null 2>&1; then
  echo "cwebp found — creating smaller thumb versions"
  cwebp -q 80 assets/delivery1.webp -o assets/delivery1_small.webp >/dev/null
  cwebp -q 80 assets/delivery2.webp -o assets/delivery2_small.webp >/dev/null
  cwebp -q 80 assets/delivery3.webp -o assets/delivery3_small.webp >/dev/null
fi

echo "Downloaded images to assets/ — open index.html to preview."
