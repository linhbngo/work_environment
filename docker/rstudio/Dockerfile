FROM rocker/rstudio:latest

ENV DEFAULT_USER=student \
    DISABLE_AUTH=true \
    ROOT=true \
    PASSWORD=student

# Replace the default rstudio user with student/student, disable auth,
# and grant passwordless sudo.
RUN if id -un 1000 >/dev/null 2>&1; then \
        userdel --remove "$(id -un 1000)"; \
    fi \
    && /rocker_scripts/default_user.sh "${DEFAULT_USER}" \
    && usermod -aG sudo "${DEFAULT_USER}" \
    && echo "${DEFAULT_USER} ALL=(ALL) NOPASSWD:ALL" > "/etc/sudoers.d/${DEFAULT_USER}" \
    && chmod 0440 "/etc/sudoers.d/${DEFAULT_USER}" \
    && cp /etc/rstudio/disable_auth_rserver.conf /etc/rstudio/rserver.conf \
    && echo "USER=${DEFAULT_USER}" >> /etc/environment \
    && mkdir -p /workspace \
    && chown "${DEFAULT_USER}:${DEFAULT_USER}" /workspace

EXPOSE 8787
