FROM develar/java

RUN apk --update add ca-certificates curl jq tar bash docker openssh && \
	mkdir -p /opt && \
	cd /opt  && \
	curl -O http://www.us.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
	tar -xf apache-maven-3.3.9-bin.tar.gz && \
	mv apache-maven-3.3.9 maven  && \
	ssh-keygen -A 


ENV PATH "/opt/maven/bin:$PATH"

ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]

EXPOSE 22