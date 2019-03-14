from codercom/code-server

ENV PASSWORD changeme
ENV PROJECT_DIR ./projects
ENV DATA_DIR ./data

COPY ./scripts/start-ide.sh /scripts/
RUN chmod +x /scripts/start-ide.sh

ENTRYPOINT ["/scripts/start-ide.sh"]
