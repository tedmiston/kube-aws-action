FROM debian

# download kube-aws
RUN apt-get update && apt-get install --yes wget
RUN wget https://github.com/kubernetes-incubator/kube-aws/releases/download/v0.14.1/kube-aws-linux-amd64.tar.gz
RUN tar xzf kube-aws-linux-amd64.tar.gz
RUN mv linux-amd64/kube-aws /usr/local/bin
RUN rm -rf v0.14.1.tar.gz

# verify kube-aws
RUN kube-aws version

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
