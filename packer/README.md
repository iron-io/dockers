## Building image

Since you can't download packer from curl (403 forbidden), had to download it
manually and copy it into the image.

```
docker run -ti -v ~/Downloads:/app ubuntu:15.04 /bin/bash
# then copy Downloads/packer into /usr/local/packer
# then exit and:
docker commit CONTAINER_ID treeder/packer:0.8.1
docker push treeder/packer
```



## Using image


```
dj run treeder/packer:0.8.1 /usr/local/packer/packer
```
