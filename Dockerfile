FROM debian:latest

# Install required packages.
COPY install.sh ./install.sh
RUN "./install.sh"

# Configure SSH to run.
RUN mkdir /var/run/sshd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
COPY run.sh /usr/bin/run.sh
ENTRYPOINT [ "run.sh" ]