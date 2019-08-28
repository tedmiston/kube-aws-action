FROM alpine:3.10

# download kube-aws
RUN apt-get update && apt-get install --yes wget
RUN wget https://github.com/kubernetes-incubator/kube-aws/archive/v0.14.1.tar.gz
RUN tar xzf v0.14.1.tar.gz
RUN rm -rf v0.14.1.tar.gz
RUN ls

# verify kube-aws
RUN kube-aws version

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
