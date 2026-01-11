#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Generating HTML resume..."
docker compose run --rm build

echo "Generating PDF resume..."
docker compose run --rm build-pdf

echo "Uploading to terrty..."
scp cv/paskal-cv.html cv/paskal-cv.pdf terrty:~/blog/public/cv/

echo "Done! https://terrty.net/cv/paskal-cv.html"
