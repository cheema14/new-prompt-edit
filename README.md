# New Sales Page — `new-sales-page`

This folder contains a performant, accessible, and conversion-focused sales page prototype.

Files
- `index.html` — semantic, fast-loading single page (preload stylesheet, minimal critical CSS).
- `styles.css` — small external stylesheet prioritizing accessibility and reduced motion.
- `script.js` — minimal, unobtrusive JS for form validation and micro-interactions.

Improvements over the company's current sample page
- Performance-first: stylesheet preloaded to avoid render-blocking; minimal inline critical styles; no external web fonts used (system UI). JS is tiny and deferred.
- Accessibility: semantic elements, ARIA roles, keyboard-focus outlines, reduced-motion preference respected, clear form validation messaging.
- Conversion-focused: prominent, clear CTA with a lightweight signup form; fast optimistic UI on submit; pricing and social proof near CTA.
- Developer-friendly: minimal, well-structured markup and an unobtrusive script to wire into real APIs (webhooks or backend) later.
- Maintainability: small CSS surface, utilities, and no heavy dependencies to keep build size low.

Visual updates & assets
- Inline SVG hero illustration added to `index.html` to provide a crisp, scalable visual without extra network requests.
- Improved hero background, CTA hover micro-interactions, and refined card borders in `styles.css`.
- Use `loading="lazy"` and `srcset` strategy recommended for raster images if you add hero images to reduce bandwidth on small screens.

How to preview locally
1. Open `index.html` in a browser (double-click or use a local static server).
   - Example using Python 3: `python3 -m http.server 8000` then open `http://localhost:8000` in your browser.

Next steps / Recommendations
- Replace optimistic form handler with real API endpoint and proper CAPTCHA or spam protection.
- Add real hero imagery (WebP/SVG) sized for multiple breakpoints and use `srcset` for responsive loading.
- Add analytics and A/B testing hooks to iterate on hero headline and CTA copy.

Notes on images
- For photography or detailed imagery, add WebP and fallback JPEG versions and use `<picture>`/`srcset` for responsive loading. Keep images under ~100KB where possible and prefer SVG for illustrations.

Why placeholders were used
- I intentionally used inline SVG placeholders instead of copying images from the linked company page to avoid reusing copyrighted assets and to keep the prototype fully offline and performant.
- If you want the exact images from the original page included, confirm that you have the rights to use them; I can then download, optimize (WebP + responsive sizes), and add `picture`/`srcset` markup to `index.html`.

How I can proceed with images (pick one):
1. I can extract and include the original images from the provided URL (you confirm copyright/permission).
2. I can produce custom optimized hero images and thumbnails (SVG/modern gradients) and add them in `assets/`.
3. Keep the lightweight SVG placeholders and I will add `picture`/`srcset` examples and documentation so you can swap images quickly.

Tell me which option you prefer and I will implement it.

Design notes
- Colors and spacing are intentionally restrained to prioritize readability and fast rendering.
- Typography uses system fonts to avoid FOUT and improve load times.

Feedback welcome — tell me what to iterate on next (copy, layout, animation, or accessibility).

Downloaded images & script
- A `download_assets.sh` script is included to fetch three representative images from the original page into `assets/`.
- Run the script from the `new-sales-page` folder to download the images:

```bash
./download_assets.sh
```

Notes:
- The script uses `curl` and will save `.webp` files into `assets/`.
- If you prefer converted/resized variants, install `cwebp` and the script will create small variants as `*_small.webp`.
- Confirm you have permission to use the images on your site; if not, I can generate original optimized artwork instead.