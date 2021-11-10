FROM alpine
RUN apk add --update --no-cache wget curl tar git make gcc bash docker go

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
        && chmod +x ./kubectl \
        && mv ./kubectl /usr/local/bin

RUN curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64 \
	&& chmod +x ./kind \
	&& mv ./kind /usr/local/bin/kind

RUN curl -L -o kubebuilder https://go.kubebuilder.io/dl/latest/$(go env GOOS)/$(go env GOARCH) \
	&& chmod +x kubebuilder \ 
	&& mv kubebuilder /usr/local/bin/
WORKDIR /
CMD ["/bin/sh"]
