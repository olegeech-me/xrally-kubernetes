FROM xrally/xrally:3.2.0

# install xkubernetes plugins
COPY . /rally/xrally-kubernetes
RUN pip3 install --upgrade /rally/xrally-kubernetes

COPY run-scale-scenarios.sh /
WORKDIR /home/rally
