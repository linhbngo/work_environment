FROM linhbngo/environments:base-latest as final

COPY ./build
RUN /build/install.sh && rm -rf /build
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

