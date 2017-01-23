FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.420

RUN gem install jenkins-war --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jenkins.war"]
CMD ["--help"]
