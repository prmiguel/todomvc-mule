FROM openjdk:17-jdk-buster AS runner
ARG BAT_CLI_URL=https://s3.amazonaws.com/bat-wrapper/install.sh
ENV BAT_BIN=/root/.bat/bat/bin
ENV PATH=$PATH:${BAT_BIN}/bat
RUN curl -o- ${BAT_CLI_URL} | bash
WORKDIR /test
ENTRYPOINT [ "/root/.bat/bat/bin/bat" ]
