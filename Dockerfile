FROM centos
RUN yum install sudo java net-tools wget vim -y
EXPOSE 8080
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key  
RUN sudo yum install jenkins -y
CMD java -jar /usr/lib/jenkins/jenkins.war
RUN echo "jenkins ALL NOPASSWD:ALL" /etc/sudoers
