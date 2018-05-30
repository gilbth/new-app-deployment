FROM nginx
RUN mkdir /root/.ssh && chmod  700 /root/.ssh 
ADD id_rsa /root/.ssh/id_rsa
ADD known_hosts /root/.ssh/known_hosts
RUN chmod 644 /root/.ssh/known_hosts  &&  chmod 600 /root/.ssh/id_rsa && apt-get update
RUN apt-get install -y git
RUN git  clone  git@github.com:gilbth/my_new_app.git
COPY entrypoint.sh /entrypoint.sh
EXPOSE 8081
RUN chmod 755 /entrypoint.sh
CMD /entrypoint.sh
