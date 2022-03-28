# thunder-docker
A thunder running in docker and accessed via noVNC on web.

## usage

### build the image
```bash
$ docker build -t thunder .
```
### start the container
```bash
$ docker run -d \
	--name Thunder \
	-p 5800:5800 \
	-p 5900:5900 \
	-v /path/to/download/dir:/home/app/迅雷下载 \
	thunder
```
