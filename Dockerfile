FROM gozutok/predictionio

MAINTAINER Taha Gozutok <gozutok@gmail.com>

RUN apt-get update \
    && apt-get install -y --auto-remove --no-install-recommends sudo maven ruby build-essential make

RUN pip install --upgrade pip \
    && pip install setuptools \
    && pip install predictionio datetime

WORKDIR /root

RUN curl -LOk https://github.com/apache/mahout/archive/mahout-0.13.0.tar.gz \
    && tar -xvzf mahout-0.13.0.tar.gz \
    && rm mahout-0.13.0.tar.gz \
    && cd mahout-mahout-0.13.0 \
    && mvn clean install -DskipTests

RUN curl -LOk https://github.com/actionml/universal-recommender/archive/0.6.0.tar.gz \
    && tar -xvzf 0.6.0.tar.gz \
    && rm 0.6.0.tar.gz \
    && mv universal-recommender-0.6.0 ur \
    && cd ur