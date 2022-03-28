# thunder-docker
A thunder running in docker and accessed via noVNC on web.

## usage:
```bash
$ docker build -t thunder .
$ docker run -d \
	--name Thunder \
	-p 5800:5800 \
	-p 5900:5900 \
	-v /path/to/download/dir:/home/app/迅雷下载 \
	thunder
```
