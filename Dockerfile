#
# Socle d'exécution de strass
#

FROM debian:jessie-slim

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ghostscript \
        locales \
        make \
        php5-fpm \
        php5-imagick \
        php5-sqlite \
        rsync \
        sudo \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    :

RUN sed -i "/fr_FR.*UTF-8/s/^# //" /etc/locale.gen && locale-gen && \
    useradd --home-dir /strass --create-home --system strass && \
    :

# Persister les sessions PHP5.
VOLUME /var/lib/php5/sessions

WORKDIR /strass
