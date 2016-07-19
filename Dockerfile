FROM ruby:2.3.1
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y git libmysqlclient-dev libxml2-dev nodejs python-pip mediainfo
RUN pip install awscli
RUN gem install bundler --no-ri --no-rdoc -v 1.12.5

ENV APP=/home/cms/
WORKDIR $APP
ADD . $HOME/
RUN bundle install --with test --without development
ENTRYPOINT [ "rails" ]
