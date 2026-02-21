FROM maven
WORKDIR /opt/server
COPY pom.xml .
COPY src /opt/server/src
ENV CART_ENDPOINT=cart:8080 \
    DB_HOST=mysql
RUN mvn clean package
RUN mv /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
CMD ["java", "-jar", "shipping.jar"]