FROM mcr.microsoft.com/playwright:v1.34.3
LABEL maintainer="team@artillery.io"

RUN npm install -g artillery artillery-engine-playwright && \
        npm cache clean --force && \
        rm -rf /root/.cache && \
        rm -rf /ms-playwright/firefox* && \
        rm -rf /ms-playwright/webkit*

ENTRYPOINT ["/usr/bin/artillery"]
