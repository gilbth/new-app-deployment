FROM nginx
RUN mkdir /root/.ssh && chmod  700 /root/.ssh 
ADD id_rsa /root/.ssh/id_rsa
ADD known_hosts /root/.ssh/known_hosts
RUN chmod 644 /root/.ssh/known_hosts  &&  chmod 600 /root/.ssh/id_rsa && apt-get update
RUN apt-get install -y git
RUN git  clone  git@github.com:gilbth/my_new_app.git
RUN mv my_new_app/*.html /usr/share/nginx/html
CMD /my_new_app/entrypoint.sh
