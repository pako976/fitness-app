FROM gitpod/workspace-full

RUN sudo apt-get update && sudo apt-get install -y curl unzip xz-utils libglu1-mesa

RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter

ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter config --enable-web

RUN flutter precache

RUN flutter --version
