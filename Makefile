build-resume:
	docker run -it --rm --name build-resume \
		-v $(PWD):/data/ \
	    paskal/jsonresume \
		export --theme kendall verhoturov.html
	mkdir -p ../public/cv/
	rm -f ../public/cv/*
	mv verhoturov.html ../public/cv/
	xvfb-run wkhtmltopdf ../public/cv/verhoturov.html ../public/cv/verhoturov.pdf

run:
	docker rm -f resume
	docker run --rm -it -v $(PWD):/data/ paskal/jsonresume

build:
	docker build -t paskal/jsonresume https://github.com/paskal/terrty.git#master:cv
