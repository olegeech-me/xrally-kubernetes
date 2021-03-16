FROM xrally/xrally:3.2.0

# "rally" user (which is selected by-default) is owner of "/rally" directory,
#   so there is no need to call chown or switch the user
COPY . /rally/xrally-kubernetes
WORKDIR /rally/xrally-kubernetes

# install xkubernetes plugins
RUN pip3 install --upgrade .

