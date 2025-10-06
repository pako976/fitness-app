FROM gitpod/workspace-full

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter
ENV PATH="/home/gitpod/flutter/bin:${PATH}"

# Enable flutter web (opzionale ma utile)
RUN flutter config --enable-web

# Node.js già incluso, ma puoi specificare versioni qui se vuoi
