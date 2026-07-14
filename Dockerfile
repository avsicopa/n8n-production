FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod -R 755 /home/node/.n8n

USER node

ENV DB_TYPE=sqlite
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV EXECUTIONS_DATA_PRUNE=true
ENV EXECUTIONS_DATA_MAX_AGE=168

EXPOSE 5678

ENTRYPOINT []
CMD ["npx", "n8n", "start"]
