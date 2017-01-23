mkdir -p ../public/cv/
rm ../public/cv/*
resume export --theme kendall ../public/cv/verhoturov.html
xvfb-run wkhtmltopdf ../public/cv/verhoturov.html ../public/cv/verhoturov.pdf
