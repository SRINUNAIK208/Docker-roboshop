FROM maven 
WORKDIR /opt/roboshop 
COPY src/ /opt/roboshop
COPY pom.xml /opt/roboshop
RUN mvn clean package 
RUN mv /opt/roboshop/target/shipping-1.0.jar /opt/roboshop/shipping.jar 
ENV CART_ENDPOINT="cart:8080" \
    DB_HOST="mysql"
CMD ["java","-jar","shipping.jar"]