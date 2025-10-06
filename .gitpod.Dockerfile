FROM gitpod/workspace-full

# Installare dipendenze necessarie per Flutter
RUN sudo apt-get update && sudo apt-get install -y curl unzip xz-utils libglu1-mesa

# Clonare Flutter SDK nella cartella home di Gitpod
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter

# Aggiungere Flutter e Dart alla variabile PATH
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Abilitare Flutter Web
RUN flutter config --enable-web

# Precache Flutter SDK per performance migliori
RUN flutter precache

# Controllare versione Flutter per verifica
RUN flutter --version
