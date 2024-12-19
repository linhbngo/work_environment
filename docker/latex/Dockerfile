FROM linhbngo/environments:base-latest AS final

COPY . /build
RUN /build/install.sh && rm -rf /build

EXPOSE 8088

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

