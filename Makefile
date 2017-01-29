IMAGENAME=dokuwiki
CONTAINER=dokuwiki-nginx

all: image

run: all
	docker run -d -p 80:80 --name $(CONTAINER) $(IMAGENAME)

stop:
	docker stop $(IMAGENAME)

clean:
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)

image:
	docker build -t $(IMAGENAME) .
