# Pull base image.
FROM jlesage/baseimage-gui:alpine-3.15-v3.5.8

# Define working directory.
WORKDIR /app
# Define mountable directories.
VOLUME /app/data

# Install extra packages.
RUN \
    add-pkg \
    	xterm \
        python3-dev \
        py3-pip \
        #py3-gst \
        #gobject-introspection-dev \
        #cairo-dev \
        #build-base \
        # The following package is used to send key presses to the X process.
        xdotool

# Adjust the openbox config.
RUN \
    # Maximize only the main window.
    sed-patch 's/<application type="normal">/<application type="normal" title="PoketeWeb">/' \
        /etc/xdg/openbox/rc.xml && \
    # Make sure the main window is always in the background.
    sed-patch '/<application type="normal" title="PoketeWeb">/a \    <layer>below</layer>' \
        /etc/xdg/openbox/rc.xml

#install scrap_engine pre req
RUN python3 -m pip install wheel scrap_engine playsound pygobject

RUN \
    del-pkg \
        #gobject-introspection-dev \
        py3-pip 
        #cairo-dev \
        #build-base 

# Set environment variables.
ENV APP_NAME="PoketeWeb"
ENV UNAME abc
ENV UID 1000
ENV GID 1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/sh $UNAME

RUN chown -R abc:abc /app

# Add files.
COPY --chown=abc:abc . .
COPY startapp.sh /startapp.sh

# Metadata.
#LABEL \
#      org.label-schema.name="poketeweb" \
#      org.label-schema.description="Docker container for poketeweb" \
#      org.label-schema.version="$DOCKER_IMAGE_VERSION" \
#      org.label-schema.vcs-url="https://github.com/anothervictimofsurvivalinstinct/pokete-web" \
#      org.label-schema.schema-version="1.0"
         
