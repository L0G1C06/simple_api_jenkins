docker run -u 0 --privileged -d -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /data/jenkins:/var/jenkins_home jenkins/jenkins
