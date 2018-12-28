FROM ubuntu:latest
LABEL David Berndtsson
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip
COPY . /main
WORKDIR /main
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python3", "-u", "./get_driftlaget.py" ]