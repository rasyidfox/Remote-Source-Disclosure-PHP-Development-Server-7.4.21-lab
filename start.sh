#1/bin/bash
docker build -t rfd_php7.4.21 . && docker container create --name rfd_php7.4.21_testing -p 7000:8888 rfd_php7.4.21 && docker container start rfd_php7.4.21_testing
