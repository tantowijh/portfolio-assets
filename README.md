# Large File Support

This repository uses [Git LFS](https://git-lfs.github.com/) for storing large `.webp` assets.

**Before pushing or cloning:**

1. Install Git LFS:
   - macOS: `brew install git-lfs`
   - Ubuntu/Debian: `sudo apt-get install git-lfs`
   - Windows: Download from [Git LFS downloads](https://git-lfs.github.com/)
2. Initialize Git LFS:
   ```sh
   git lfs install
   git lfs track "*.webp"
   git add .gitattributes
   ```
3. When cloning, use:
   ```sh
   git clone https://github.com/tantowijh/portfolio-assets.git
   git lfs pull
   ```

# Prerequisites

Before using the scripts, ensure you have the following installed:

- **cwebp**: Required for converting images to WebP format. Install via Homebrew (macOS) or your package manager:
  - macOS: `brew install webp`
  - Ubuntu/Debian: `sudo apt-get install webp`
  - Windows: Download from [Google WebP downloads](https://developers.google.com/speed/webp/download)
- **bash** (or compatible shell)

After cloning the repository, make the scripts executable:
```sh
chmod +x convert_to_webp.sh delete_others.sh generate_github_links.sh
```

You can then run the scripts as described below.
# Portfolio Assets

This repository contains image assets for various projects, organized by folder. All images are in `.webp` format for efficient storage and web usage.

## Folder Structure
- `cafe-pos-web/` — Assets for Cafe POS Web dashboard and features
- `cypher-file/` — Assets for Cypher File encryption tool
- `cypher-nest/` — Assets for Cypher Nest chat and encryption pages
- `pln-pascabayar/` — Assets for PLN postpaid dashboard and customer management
- `sirs-lite/` — Assets for SIRS Lite medical and patient management system
- `tounge-health/` — Assets for Tongue Health analysis and dashboard
- `zuledu/` — Assets for ZulEdu school website, including homepage, about, admission, and gallery

## Scripts
- `convert_to_webp.sh` — Converts supported image formats (JPG, PNG, TIFF) to `.webp` using `cwebp`.
- `delete_others.sh` — Deletes original image files (JPG, PNG, TIFF) after conversion to `.webp` to keep only web-optimized assets.
- `generate_github_links.sh` — Generates direct GitHub links for all `.webp` assets. Usage:
  - All folders: `./generate_github_links.sh`
  - Specific folder: `./generate_github_links.sh <folder>`

## Usage
1. Place your image assets in the appropriate folder.
2. Use the provided scripts to convert, clean, or generate links as needed.
3. Share the generated GitHub links for portfolio or documentation purposes.

## Example
To generate GitHub links for all assets in the `zuledu` folder:
```sh
./generate_github_links.sh zuledu
```

---

This repository is intended for portfolio showcase and asset management. All scripts are ready for use in a Unix-like environment (macOS/Linux).
