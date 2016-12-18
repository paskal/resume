mkdir -p ../public/cv/
rm ../public/cv/*
resume export --theme elegant ../public/cv/verhoturov.html
#resume export --theme kendall ../public/cv/kendall.html
xvfb-run wkhtmltopdf ../public/cv/verhoturov.html ../public/cv/verhoturov.pdf
