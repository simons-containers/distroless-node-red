FROM ghcr.io/simons-containers/distroless-nodejs:25.9.0

ARG NODERED_VERSION

RUN ["node", "-e", "require('child_process').execFileSync('node',['npm','install','-g','node-red@'+process.env.NODERED_VERSION],{stdio:'inherit'})"]
RUN ["node", "npm", "install", "-g", "@node-red-contrib-themes/theme-collection"]

COPY ./passwd /etc/passwd
COPY ./shadow /etc/shadow

RUN ["node", "-e", "const fs=require('fs');fs.mkdirSync('/var/lib/nodered',{recursive:true});fs.chownSync('/var/lib/nodered',1000,1000)"]

USER nodered
WORKDIR /var/lib/nodered
ENV HOME=/var/lib/nodered NODE_ENV=production

ENTRYPOINT ["/usr/bin/node", "/usr/lib/node_modules/node-red/red.js", "--userDir", "/var/lib/nodered"]

LABEL org.opencontainers.image.title="distroless node-red"
LABEL org.opencontainers.image.description="distroless node-red"
LABEL org.opencontainers.image.version="${NODERED_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-node-red"
LABEL org.opencontainers.image.volumes.data="/var/lib/node-red"