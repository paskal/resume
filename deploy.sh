#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Generating HTML resume..."
docker compose run --rm --remove-orphans build

echo "Generating PDF resume..."
rm -f cv/dmitryv-cv.pdf
set +e
docker compose run --rm --remove-orphans build-pdf
set -e
[ -f cv/dmitryv-cv.pdf ] || { echo "PDF generation failed"; exit 1; }

echo "Uploading to terrty..."
rsync -avz cv/dmitryv-cv.html cv/dmitryv-cv.pdf terrty:~/blog/public/cv/

echo "Done! https://terrty.net/cv/dmitryv-cv.html"
