# adapted from: https://github.com/docker-library/python/blob/37a6827e0b7a9ef099cfdec5de305e3d4cea7331/3.11/bookworm/Dockerfile
# - adds vim and gpg to python image
# - starts with command: bash

FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y \
        curl \
        vim \
        gpg 

# install micro editor: https://github.com/zyedidia/micro
# - cd to same directory as python3.11
RUN cd $(dirname $(which python)) && curl https://getmic.ro | bash

# run with: -v /path/to/local/dir:/data
VOLUME /data
WORKDIR /data

CMD ["bash"]
