build-resume:
	docker run -it --rm --name build-resume \
		--mount type=bind,source=$(PWD),target=/data/ \
	    paskal/jsonresume \
		export --theme kendall verhoturov.html
	mkdir -p ../public/cv/
	rm -f ../public/cv/*
	mv verhoturov.html ../public/cv/
	xvfb-run wkhtmltopdf ../public/cv/verhoturov.html ../public/cv/verhoturov.pdf

build-image:
	docker build -t paskal/jsonresume .
