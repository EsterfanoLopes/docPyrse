build:
	docker build -t esterfanolopes/opencv-python-lab:alpha .

run:
	docker run --rm -v $(PWD):/usr/src/app  esterfanolopes/opencv-python-lab:alpha main.py

run/test:
	docker run --rm -v $(PWD):/usr/src/app  esterfanolopes/opencv-python-lab:alpha test.py

sleep:
	docker run --rm -v $(PWD)/sleep.py:/usr/src/app/sleep.py esterfanolopes/opencv-python-lab:alpha sleep.py