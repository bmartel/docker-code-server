from codercom/code-server

RUN apt-get update && apt-get install -y curl git gnupg2 fontconfig \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
    && apt-get install -y nodejs \
    && curl -o- -L https://yarnpkg.com/install.sh | bash

COPY ./fonts /usr/local/share/fonts
RUN fc-cache -fv

ENV PASSWORD changeme
ENV PROJECT_DIR ./projects
ENV DATA_DIR ./data

COPY ./scripts/start-ide.sh /scripts/
RUN chmod +x /scripts/start-ide.sh

ENTRYPOINT ["/scripts/start-ide.sh"]
