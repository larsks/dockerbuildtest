FROM fedora
ARG GITHUB_TOKEN

RUN yum -y install git
RUN echo machine github.com login ${GITHUB_TOKEN} > ~/.netrc
RUN git clone https://github.com/larsks/dockerbuildtest
