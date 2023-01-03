FROM mcr.microsoft.com/windows/servercore:ltsc2022 

COPY --from=traefik:v1.7.8-nanoserver-sac2016 /traefik.exe /traefik.exe

EXPOSE 80
ENTRYPOINT ["/traefik"]

# Metadata (copied from official Traefik image)
LABEL org.label-schema.vendor="Containous" \
      org.label-schema.url="https://traefik.io" \
      org.label-schema.name="Traefik" \
      org.label-schema.description="A modern reverse-proxy" \
      org.label-schema.version="v1.7.8" \
      org.label-schema.docker.schema-version="1.0"