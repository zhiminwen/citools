FROM ruby:alpine3.6
# Add the essential tools

ENV KUBE_VERSION="v1.7.3"
RUN apk add --update ca-certificates curl tar && \
curl -L https://storage.googleapis.com/kubernetes-release/release/v1.7.3/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
chmod +x /usr/local/bin/kubectl && \
curl -LO https://download.docker.com/linux/static/stable/x86_64/docker-17.06.0-ce.tgz && \
tar zxf docker-17.06.0-ce.tgz -C /usr/local/bin --strip-components 1 && \
rm -rf docker-17.06.0-ce.tgz && \
gem install dotenv sshkit_addon && \
rm -rf /var/cache/apk/*
