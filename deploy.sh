#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Generating HTML resume..."
docker compose run --rm --remove-orphans build

echo "Generating PDF resume..."
docker compose run --rm --remove-orphans build-pdf

echo "Uploading to terrty..."
rsync -avz cv/paskal-cv.html cv/paskal-cv.pdf terrty:~/blog/public/cv/

echo "Done! https://terrty.net/cv/paskal-cv.html"
