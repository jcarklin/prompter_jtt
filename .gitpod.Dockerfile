FROM gitpod/workspace-full-vnc:2022-05-17-12-26-08
SHELL ["/bin/bash", "-c"]

# Install Open JDK for android and other dependencies
USER root
RUN install-packages openjdk-8-jdk -y \
        libgtk-3-dev \
        libnss3-dev \
        fonts-noto \
        fonts-noto-cjk \
    && update-java-alternatives --set java-1.8.0-openjdk-amd64



# Insall Dart 
USER gitpod
RUN brew tap dart-lang/dart && brew install dart