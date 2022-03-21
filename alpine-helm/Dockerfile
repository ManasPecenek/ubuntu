FROM ubuntu as builder

RUN apt update && apt install wget curl -y

RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
&& chmod 700 get_helm.sh && ./get_helm.sh

FROM alpine

COPY --from=builder /usr/local/bin/helm /usr/local/bin/

RUN apk update && apk upgrade && apk add bash

CMD ["/bin/bash"]
