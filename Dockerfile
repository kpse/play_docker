FROM ingensi/play-framework:latest
MAINTAINER Louis SUO <louis.suo@myob.com>

RUN yum makecache fast

RUN yum install -y git

RUN echo "start to clone repo"

RUN git clone https://github.com/kpse/play_example_docker.git app

RUN echo "finish cloning"

WORKDIR /app/app

CMD ["activator", "run"]
