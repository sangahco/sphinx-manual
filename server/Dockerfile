FROM sangah/nginx-base

RUN set -e && \
    apk add --update \
        python \
        py-pip && \
    pip install virtualenv && \
    rm -rf /var/cache/apk/*

RUN set -e && \
    # installing sphinx
    virtualenv /opt/sphinx && \
    . /opt/sphinx/bin/activate && \
    pip install sphinx && \
    pip install sphinx_rtd_theme && \
    deactivate && \
    mkdir -p /opt/sphinx/doc

ENV PATH $PATH:/opt/sphinx/bin

COPY ./init_manual.sh ./init_manual.sh
RUN chmod +x /init_manual.sh
ENTRYPOINT ["/init_manual.sh"]