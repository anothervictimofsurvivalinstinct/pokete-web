FROM alpine:3.15 AS compile-image

#compile and lib pre reqs
RUN apk add \
    python3-dev \
    python3 \
    py3-pip \
    py3-gst \
    gobject-introspection-dev \
    cairo-dev \
    build-base 

#install to root user .local
RUN python3 -m pip install --user scrap_engine playsound pygobject 

From alpine:3.15

RUN apk add --no-cache \
    python3-dev \
    python3 \
    py3-gst 

#copy python build from previous step    
COPY --from=compile-image /root/.local /root/.local
ENV PATH="/root/.local/bin:$PATH"

#make data dir more user friendly
#RUN mkdir -p /root/.cache/pokete && \
#    ln -s /root/.cache/pokete /data
#WORKDIR /home
#RUN ln -s /home/.local/pokete /data
COPY . .
VOLUME /data
RUN chmod +x ./startapp.sh
#putting entrypoint in shell script since it doesn't want to play nice
ENTRYPOINT ["./startapp.sh"]
#CMD [ "python", "./pokete.py" ]
