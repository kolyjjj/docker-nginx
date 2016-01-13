### to build the image
```
docker build -t my_nginx .
```

### to run a container inside the directory
```
docker run -it -v $(pwd)/html:/var/www/html -p 8002:80 my_nginx
```
* open the localhost:8002 or <machine-ip>:8002 you can see the index html
* The html folder on host is mounted with /var/www/html, when you change the index.html, the page in browser should be changed, but on Mac, it's not working, because the file change inside the volume is not detected by nginx, and [here](https://github.com/nginxinc/docker-nginx/issues/24) is a discussion which says it's a virtual box bug.
