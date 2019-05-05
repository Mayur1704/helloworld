FROM openjdk
WORKDIR /usr/app/helloworld
ADD ./target/helloworld-1.1.0-SNAPSHOT.jar /
CMD java -jar helloworld-1.1.0-SNAPSHOT.jar