rm ../public/cv/*
hackmyresume BUILD resume.json TO ../public/cv/resume.html -t /usr/local/lib/node_modules/fresh-theme-bootstrap/ --css cerulean
hackmyresume BUILD resume.json TO ../public/cv/resume.pdf -t /usr/local/lib/node_modules/fresh-theme-bootstrap/ --css cerulean
hackmyresume BUILD resume.json TO ../public/cv/resume.doc -t /usr/local/lib/node_modules/fresh-theme-bootstrap/ --css cerulean
hackmyresume BUILD resume.json TO ../public/cv/resume.txt -t /usr/local/lib/node_modules/fresh-theme-bootstrap/ --css cerulean
xvfb-run wkhtmltopdf ../public/cv/resume.pdf.html ../public/cv/resume.pdf
rm ../public/cv/resume.pdf.html
hackmyresume ANALYZE resume.json
