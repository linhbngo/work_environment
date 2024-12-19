FROM rockylinux:9.3-minimal

USER root

COPY code-server/ /code-server
COPY start-master.sh /

RUN microdnf update -y && \
    microdnf install -y curl nano && \
    pip install numpy pandas nltk matplotlib scikit-learn && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /code-server/config.yaml /root/.config/code-server/config.yaml && \
    mkdir -p /root/.local/share/code-server/User/ && \
    cp /code-server/settings.json /root/.local/share/code-server/User/ && \
    rm -Rf code-server && \
    microdnf clean all

# 8088: vscode-server
EXPOSE 8088

CMD ["/bin/bash", "/start-master.sh"]
